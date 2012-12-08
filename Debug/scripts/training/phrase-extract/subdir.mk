################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/training/phrase-extract/AlignmentPhrase.cpp \
../scripts/training/phrase-extract/ExtractedRule.cpp \
../scripts/training/phrase-extract/HoleCollection.cpp \
../scripts/training/phrase-extract/InputFileStream.cpp \
../scripts/training/phrase-extract/PhraseAlignment.cpp \
../scripts/training/phrase-extract/SentenceAlignment.cpp \
../scripts/training/phrase-extract/SentenceAlignmentWithSyntax.cpp \
../scripts/training/phrase-extract/SyntaxTree.cpp \
../scripts/training/phrase-extract/XmlTree.cpp \
../scripts/training/phrase-extract/consolidate-direct.cpp \
../scripts/training/phrase-extract/consolidate-reverse.cpp \
../scripts/training/phrase-extract/consolidate.cpp \
../scripts/training/phrase-extract/extract-lex.cpp \
../scripts/training/phrase-extract/extract-rules.cpp \
../scripts/training/phrase-extract/extract.cpp \
../scripts/training/phrase-extract/relax-parse.cpp \
../scripts/training/phrase-extract/score.cpp \
../scripts/training/phrase-extract/statistics.cpp \
../scripts/training/phrase-extract/tables-core.cpp 

OBJS += \
./scripts/training/phrase-extract/AlignmentPhrase.o \
./scripts/training/phrase-extract/ExtractedRule.o \
./scripts/training/phrase-extract/HoleCollection.o \
./scripts/training/phrase-extract/InputFileStream.o \
./scripts/training/phrase-extract/PhraseAlignment.o \
./scripts/training/phrase-extract/SentenceAlignment.o \
./scripts/training/phrase-extract/SentenceAlignmentWithSyntax.o \
./scripts/training/phrase-extract/SyntaxTree.o \
./scripts/training/phrase-extract/XmlTree.o \
./scripts/training/phrase-extract/consolidate-direct.o \
./scripts/training/phrase-extract/consolidate-reverse.o \
./scripts/training/phrase-extract/consolidate.o \
./scripts/training/phrase-extract/extract-lex.o \
./scripts/training/phrase-extract/extract-rules.o \
./scripts/training/phrase-extract/extract.o \
./scripts/training/phrase-extract/relax-parse.o \
./scripts/training/phrase-extract/score.o \
./scripts/training/phrase-extract/statistics.o \
./scripts/training/phrase-extract/tables-core.o 

CPP_DEPS += \
./scripts/training/phrase-extract/AlignmentPhrase.d \
./scripts/training/phrase-extract/ExtractedRule.d \
./scripts/training/phrase-extract/HoleCollection.d \
./scripts/training/phrase-extract/InputFileStream.d \
./scripts/training/phrase-extract/PhraseAlignment.d \
./scripts/training/phrase-extract/SentenceAlignment.d \
./scripts/training/phrase-extract/SentenceAlignmentWithSyntax.d \
./scripts/training/phrase-extract/SyntaxTree.d \
./scripts/training/phrase-extract/XmlTree.d \
./scripts/training/phrase-extract/consolidate-direct.d \
./scripts/training/phrase-extract/consolidate-reverse.d \
./scripts/training/phrase-extract/consolidate.d \
./scripts/training/phrase-extract/extract-lex.d \
./scripts/training/phrase-extract/extract-rules.d \
./scripts/training/phrase-extract/extract.d \
./scripts/training/phrase-extract/relax-parse.d \
./scripts/training/phrase-extract/score.d \
./scripts/training/phrase-extract/statistics.d \
./scripts/training/phrase-extract/tables-core.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/training/phrase-extract/%.o: ../scripts/training/phrase-extract/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


