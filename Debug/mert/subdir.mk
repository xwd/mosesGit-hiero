################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mert/BleuScorer.cpp \
../mert/CderScorer.cpp \
../mert/Data.cpp \
../mert/FeatureArray.cpp \
../mert/FeatureData.cpp \
../mert/FeatureDataIterator.cpp \
../mert/FeatureStats.cpp \
../mert/FileStream.cpp \
../mert/MergeScorer.cpp \
../mert/Optimizer.cpp \
../mert/PerScorer.cpp \
../mert/Point.cpp \
../mert/ScoreArray.cpp \
../mert/ScoreData.cpp \
../mert/ScoreDataIterator.cpp \
../mert/ScoreStats.cpp \
../mert/Scorer.cpp \
../mert/ScorerFactory.cpp \
../mert/TerScorer.cpp \
../mert/Timer.cpp \
../mert/Util.cpp \
../mert/evaluator.cpp \
../mert/extractor.cpp \
../mert/mert.cpp \
../mert/pro.cpp \
../mert/test_scorer.cpp 

OBJS += \
./mert/BleuScorer.o \
./mert/CderScorer.o \
./mert/Data.o \
./mert/FeatureArray.o \
./mert/FeatureData.o \
./mert/FeatureDataIterator.o \
./mert/FeatureStats.o \
./mert/FileStream.o \
./mert/MergeScorer.o \
./mert/Optimizer.o \
./mert/PerScorer.o \
./mert/Point.o \
./mert/ScoreArray.o \
./mert/ScoreData.o \
./mert/ScoreDataIterator.o \
./mert/ScoreStats.o \
./mert/Scorer.o \
./mert/ScorerFactory.o \
./mert/TerScorer.o \
./mert/Timer.o \
./mert/Util.o \
./mert/evaluator.o \
./mert/extractor.o \
./mert/mert.o \
./mert/pro.o \
./mert/test_scorer.o 

CPP_DEPS += \
./mert/BleuScorer.d \
./mert/CderScorer.d \
./mert/Data.d \
./mert/FeatureArray.d \
./mert/FeatureData.d \
./mert/FeatureDataIterator.d \
./mert/FeatureStats.d \
./mert/FileStream.d \
./mert/MergeScorer.d \
./mert/Optimizer.d \
./mert/PerScorer.d \
./mert/Point.d \
./mert/ScoreArray.d \
./mert/ScoreData.d \
./mert/ScoreDataIterator.d \
./mert/ScoreStats.d \
./mert/Scorer.d \
./mert/ScorerFactory.d \
./mert/TerScorer.d \
./mert/Timer.d \
./mert/Util.d \
./mert/evaluator.d \
./mert/extractor.d \
./mert/mert.d \
./mert/pro.d \
./mert/test_scorer.d 


# Each subdirectory must supply rules for building sources it contributes
mert/%.o: ../mert/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


