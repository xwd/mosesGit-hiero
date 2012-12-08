################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/training/phrase-extract/extract-ghkm/Alignment.cpp \
../scripts/training/phrase-extract/extract-ghkm/AlignmentGraph.cpp \
../scripts/training/phrase-extract/extract-ghkm/ComposedRule.cpp \
../scripts/training/phrase-extract/extract-ghkm/ExtractGHKM.cpp \
../scripts/training/phrase-extract/extract-ghkm/Main.cpp \
../scripts/training/phrase-extract/extract-ghkm/Node.cpp \
../scripts/training/phrase-extract/extract-ghkm/ParseTree.cpp \
../scripts/training/phrase-extract/extract-ghkm/ScfgRule.cpp \
../scripts/training/phrase-extract/extract-ghkm/ScfgRuleWriter.cpp \
../scripts/training/phrase-extract/extract-ghkm/Span.cpp \
../scripts/training/phrase-extract/extract-ghkm/Subgraph.cpp \
../scripts/training/phrase-extract/extract-ghkm/XmlTreeParser.cpp 

OBJS += \
./scripts/training/phrase-extract/extract-ghkm/Alignment.o \
./scripts/training/phrase-extract/extract-ghkm/AlignmentGraph.o \
./scripts/training/phrase-extract/extract-ghkm/ComposedRule.o \
./scripts/training/phrase-extract/extract-ghkm/ExtractGHKM.o \
./scripts/training/phrase-extract/extract-ghkm/Main.o \
./scripts/training/phrase-extract/extract-ghkm/Node.o \
./scripts/training/phrase-extract/extract-ghkm/ParseTree.o \
./scripts/training/phrase-extract/extract-ghkm/ScfgRule.o \
./scripts/training/phrase-extract/extract-ghkm/ScfgRuleWriter.o \
./scripts/training/phrase-extract/extract-ghkm/Span.o \
./scripts/training/phrase-extract/extract-ghkm/Subgraph.o \
./scripts/training/phrase-extract/extract-ghkm/XmlTreeParser.o 

CPP_DEPS += \
./scripts/training/phrase-extract/extract-ghkm/Alignment.d \
./scripts/training/phrase-extract/extract-ghkm/AlignmentGraph.d \
./scripts/training/phrase-extract/extract-ghkm/ComposedRule.d \
./scripts/training/phrase-extract/extract-ghkm/ExtractGHKM.d \
./scripts/training/phrase-extract/extract-ghkm/Main.d \
./scripts/training/phrase-extract/extract-ghkm/Node.d \
./scripts/training/phrase-extract/extract-ghkm/ParseTree.d \
./scripts/training/phrase-extract/extract-ghkm/ScfgRule.d \
./scripts/training/phrase-extract/extract-ghkm/ScfgRuleWriter.d \
./scripts/training/phrase-extract/extract-ghkm/Span.d \
./scripts/training/phrase-extract/extract-ghkm/Subgraph.d \
./scripts/training/phrase-extract/extract-ghkm/XmlTreeParser.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/training/phrase-extract/extract-ghkm/%.o: ../scripts/training/phrase-extract/extract-ghkm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


