// $Id$

/***********************************************************************
Moses - factored phrase-based language decoder
Copyright (c) 2006 University of Edinburgh
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
			this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
			this list of conditions and the following disclaimer in the documentation
			and/or other materials provided with the distribution.
    * Neither the name of the University of Edinburgh nor the names of its contributors
			may be used to endorse or promote products derived from this software
			without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
***********************************************************************/

// example file on how to use moses library

#ifdef WIN32
// Include Visual Leak Detector
//#include <vld.h>
#endif

#include "valgrind/callgrind.h"

#include <exception>
#include <fstream>
#include "Main.h"
#include "FactorCollection.h"
#include "Manager.h"
#include "Phrase.h"
#include "Util.h"
#include "Timer.h"
#include "IOWrapper.h"
#include "Sentence.h"
#include "ConfusionNet.h"
#include "WordLattice.h"
#include "TreeInput.h"
#include "TranslationAnalysis.h"
#include "mbr.h"
#include "ThreadPool.h"
#include "ChartManager.h"
#include "ChartHypothesis.h"
#include "ChartTrellisPath.h"
#include "ChartTrellisPathList.h"

using namespace std;
using namespace Moses;

/**
  * Translates a sentence.
 **/
class TranslationTask : public Task
{
public:
  TranslationTask(InputType *source, IOWrapper &ioWrapper)
    : m_source(source)
    , m_ioWrapper(ioWrapper)
  {}

  ~TranslationTask() {
    delete m_source;
  }

  void Run() {
    const StaticData &staticData = StaticData::Instance();
    const TranslationSystem &system = staticData.GetTranslationSystem(TranslationSystem::DEFAULT);
    const size_t lineNumber = m_source->GetTranslationId();

    VERBOSE(2,"\nTRANSLATING(" << lineNumber << "): " << *m_source);

    ChartManager manager(*m_source, &system);
    manager.ProcessSentence();

    //
    totalHypoCount += ChartHypothesis::GetHypoCount();
    totalTime += manager.GetTimeToal();
    skippedCellsCount += manager.GetSkippedCount();

    CHECK(!staticData.UseMBR());

    // 1-best
    const ChartHypothesis *bestHypo = manager.GetBestHypothesis();
    m_ioWrapper.OutputBestHypo(bestHypo, lineNumber,
                               staticData.GetReportSegmentation(),
                               staticData.GetReportAllFactors());
    IFVERBOSE(2) {
      PrintUserTime("Best Hypothesis Generation Time:");
    }

    if (staticData.IsDetailedTranslationReportingEnabled()) {
      const Sentence &sentence = dynamic_cast<const Sentence &>(*m_source);
      m_ioWrapper.OutputDetailedTranslationReport(bestHypo, sentence, lineNumber);
    }

    // n-best
    size_t nBestSize = staticData.GetNBestSize();
    if (nBestSize > 0) {
      VERBOSE(2,"WRITING " << nBestSize << " TRANSLATION ALTERNATIVES TO " << staticData.GetNBestFilePath() << endl);
      ChartTrellisPathList nBestList;
      manager.CalcNBest(nBestSize, nBestList,staticData.GetDistinctNBest());
      m_ioWrapper.OutputNBestList(nBestList, bestHypo, &system, lineNumber);
      IFVERBOSE(2) {
        PrintUserTime("N-Best Hypotheses Generation Time:");
      }
    }

    if (staticData.GetOutputSearchGraph()) {
      std::ostringstream out;
      manager.GetSearchGraph(lineNumber, out);
      OutputCollector *oc = m_ioWrapper.GetSearchGraphOutputCollector();
      CHECK(oc);
      oc->Write(lineNumber, out.str());
    }

    IFVERBOSE(2) {
      PrintUserTime("Sentence Decoding Time:");
    }
    manager.CalcDecoderStatistics();
  }

private:
  // Non-copyable: copy constructor and assignment operator not implemented.
  TranslationTask(const TranslationTask &);
  TranslationTask &operator=(const TranslationTask &);

  InputType *m_source;
  IOWrapper &m_ioWrapper;
};

bool ReadInput(IOWrapper &ioWrapper, InputTypeEnum inputType, InputType*& source)
{
  delete source;
  switch(inputType) {
  case SentenceInput:
    source = ioWrapper.GetInput(new Sentence);
    break;
  case ConfusionNetworkInput:
    source = ioWrapper.GetInput(new ConfusionNet);
    break;
  case WordLatticeInput:
    source = ioWrapper.GetInput(new WordLattice);
    break;
  case TreeInputType:
    source = ioWrapper.GetInput(new TreeInput);
    break;
  default:
    TRACE_ERR("Unknown input type: " << inputType << "\n");
  }
  return (source ? true : false);
}

static void PrintFeatureWeight(const FeatureFunction* ff)
{

  size_t weightStart  = StaticData::Instance().GetScoreIndexManager().GetBeginIndex(ff->GetScoreBookkeepingID());
  size_t weightEnd  = StaticData::Instance().GetScoreIndexManager().GetEndIndex(ff->GetScoreBookkeepingID());
  for (size_t i = weightStart; i < weightEnd; ++i) {
    cout << ff->GetScoreProducerDescription(i-weightStart) <<  " " << ff->GetScoreProducerWeightShortName(i-weightStart) << " "
         << StaticData::Instance().GetAllWeights()[i] << endl;
  }
}


static void ShowWeights()
{
  cout.precision(6);
  const StaticData& staticData = StaticData::Instance();
  const TranslationSystem& system = staticData.GetTranslationSystem(TranslationSystem::DEFAULT);
  const vector<const StatelessFeatureFunction*>& slf =system.GetStatelessFeatureFunctions();
  const vector<const StatefulFeatureFunction*>& sff = system.GetStatefulFeatureFunctions();
  const vector<PhraseDictionaryFeature*>& pds = system.GetPhraseDictionaries();
  const vector<GenerationDictionary*>& gds = system.GetGenerationDictionaries();
  for (size_t i = 0; i < sff.size(); ++i) {
    PrintFeatureWeight(sff[i]);
  }
  for (size_t i = 0; i < pds.size(); ++i) {
    PrintFeatureWeight(pds[i]);
  }
  for (size_t i = 0; i < gds.size(); ++i) {
    PrintFeatureWeight(gds[i]);
  }
  for (size_t i = 0; i < slf.size(); ++i) {
    PrintFeatureWeight(slf[i]);
  }
}


int main(int argc, char* argv[])
{
CALLGRIND_START_INSTRUMENTATION;

  try {
    IFVERBOSE(1) {
      TRACE_ERR("command: ");
      for(int i=0; i<argc; ++i) TRACE_ERR(argv[i]<<" ");
      TRACE_ERR(endl);
    }
  
    IOWrapper::FixPrecision(cout);
    IOWrapper::FixPrecision(cerr);
  
    // load data structures
    Parameter parameter;
    if (!parameter.LoadParam(argc, argv)) {
      return EXIT_FAILURE;
    }
  
    const StaticData &staticData = StaticData::Instance();
    if (!StaticData::LoadDataStatic(&parameter))
      return EXIT_FAILURE;
  
    if (parameter.isParamSpecified("show-weights")) {
      ShowWeights();
      exit(0);
    }
  
    CHECK(staticData.GetSearchAlgorithm() == ChartDecoding);
  
    // set up read/writing class
    IOWrapper *ioWrapper = GetIODevice(staticData);
  
    // check on weights
    vector<float> weights = staticData.GetAllWeights();
    IFVERBOSE(2) {
      TRACE_ERR("The score component vector looks like this:\n" << staticData.GetScoreIndexManager());
      TRACE_ERR("The global weight vector looks like this:");
      for (size_t j=0; j<weights.size(); j++) {
        TRACE_ERR(" " << weights[j]);
      }
      TRACE_ERR("\n");
    }
    // every score must have a weight!  check that here:
    if(weights.size() != staticData.GetScoreIndexManager().GetTotalNumberOfScores()) {
      TRACE_ERR("ERROR: " << staticData.GetScoreIndexManager().GetTotalNumberOfScores() << " score components, but " << weights.size() << " weights defined" << std::endl);
      return EXIT_FAILURE;
    }
  
    if (ioWrapper == NULL)
      return EXIT_FAILURE;
  
#ifdef WITH_THREADS
    ThreadPool pool(staticData.ThreadCount());
#endif
  
    // read each sentence & decode
    InputType *source=0;
    while(ReadInput(*ioWrapper,staticData.GetInputType(),source)) {
      IFVERBOSE(1)
      ResetUserTime();
      TranslationTask *task = new TranslationTask(source, *ioWrapper);
      source = NULL;  // task will delete source
#ifdef WITH_THREADS
      pool.Submit(task);  // pool will delete task
#else
      task->Run();
      delete task;
#endif
    }
  
#ifdef WITH_THREADS
    pool.Stop(true);  // flush remaining jobs
#endif

CALLGRIND_STOP_INSTRUMENTATION;
  
    delete ioWrapper;
  
    IFVERBOSE(1)
    PrintUserTime("End.");
  
  } catch (const std::exception &e) {
    std::cerr << "Exception: " << e.what() << std::endl;
    return EXIT_FAILURE;
  }

std::fstream self_stat("/proc/self/status", std::ios::in);
std::string line;
while (getline(self_stat, line)) {
  std::cerr << line << '\n';
}

std::cerr << "time: " << totalTime << std::endl;
std::cerr << "hypo: " << totalHypoCount << std::endl;
std::cerr << "skipped " << skippedCellsCount << std::endl;

#ifdef HACK_EXIT
  //This avoids that detructors are called (it can take a long time)
  exit(EXIT_SUCCESS);
#else
  return EXIT_SUCCESS;
#endif
}

IOWrapper *GetIODevice(const StaticData &staticData)
{
  IOWrapper *ioWrapper;
  const std::vector<FactorType> &inputFactorOrder = staticData.GetInputFactorOrder()
      ,&outputFactorOrder = staticData.GetOutputFactorOrder();
  FactorMask inputFactorUsed(inputFactorOrder);

  // io
  if (staticData.GetParam("input-file").size() == 1) {
    VERBOSE(2,"IO from File" << endl);
    string filePath = staticData.GetParam("input-file")[0];

    ioWrapper = new IOWrapper(inputFactorOrder, outputFactorOrder, inputFactorUsed
                              , staticData.GetNBestSize()
                              , staticData.GetNBestFilePath()
                              , filePath);
  } else {
    VERBOSE(1,"IO from STDOUT/STDIN" << endl);
    ioWrapper = new IOWrapper(inputFactorOrder, outputFactorOrder, inputFactorUsed
                              , staticData.GetNBestSize()
                              , staticData.GetNBestFilePath());
  }
  ioWrapper->ResetTranslationId();

  IFVERBOSE(1)
  PrintUserTime("Created input-output object");

  return ioWrapper;
}
