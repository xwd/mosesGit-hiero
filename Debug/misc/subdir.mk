################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../misc/GenerateTuples.cpp \
../misc/processLexicalTable.cpp \
../misc/processPhraseTable.cpp \
../misc/queryLexicalTable.cpp \
../misc/queryPhraseTable.cpp 

OBJS += \
./misc/GenerateTuples.o \
./misc/processLexicalTable.o \
./misc/processPhraseTable.o \
./misc/queryLexicalTable.o \
./misc/queryPhraseTable.o 

CPP_DEPS += \
./misc/GenerateTuples.d \
./misc/processLexicalTable.d \
./misc/processPhraseTable.d \
./misc/queryLexicalTable.d \
./misc/queryPhraseTable.d 


# Each subdirectory must supply rules for building sources it contributes
misc/%.o: ../misc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


