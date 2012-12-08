################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses/src/RuleTable/LoaderCompact.cpp \
../moses/src/RuleTable/LoaderFactory.cpp \
../moses/src/RuleTable/LoaderHiero.cpp \
../moses/src/RuleTable/LoaderStandard.cpp \
../moses/src/RuleTable/PhraseDictionaryALSuffixArray.cpp \
../moses/src/RuleTable/PhraseDictionaryNodeSCFG.cpp \
../moses/src/RuleTable/PhraseDictionaryOnDisk.cpp \
../moses/src/RuleTable/PhraseDictionarySCFG.cpp \
../moses/src/RuleTable/Trie.cpp \
../moses/src/RuleTable/UTrie.cpp \
../moses/src/RuleTable/UTrieNode.cpp 

OBJS += \
./moses/src/RuleTable/LoaderCompact.o \
./moses/src/RuleTable/LoaderFactory.o \
./moses/src/RuleTable/LoaderHiero.o \
./moses/src/RuleTable/LoaderStandard.o \
./moses/src/RuleTable/PhraseDictionaryALSuffixArray.o \
./moses/src/RuleTable/PhraseDictionaryNodeSCFG.o \
./moses/src/RuleTable/PhraseDictionaryOnDisk.o \
./moses/src/RuleTable/PhraseDictionarySCFG.o \
./moses/src/RuleTable/Trie.o \
./moses/src/RuleTable/UTrie.o \
./moses/src/RuleTable/UTrieNode.o 

CPP_DEPS += \
./moses/src/RuleTable/LoaderCompact.d \
./moses/src/RuleTable/LoaderFactory.d \
./moses/src/RuleTable/LoaderHiero.d \
./moses/src/RuleTable/LoaderStandard.d \
./moses/src/RuleTable/PhraseDictionaryALSuffixArray.d \
./moses/src/RuleTable/PhraseDictionaryNodeSCFG.d \
./moses/src/RuleTable/PhraseDictionaryOnDisk.d \
./moses/src/RuleTable/PhraseDictionarySCFG.d \
./moses/src/RuleTable/Trie.d \
./moses/src/RuleTable/UTrie.d \
./moses/src/RuleTable/UTrieNode.d 


# Each subdirectory must supply rules for building sources it contributes
moses/src/RuleTable/%.o: ../moses/src/RuleTable/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


