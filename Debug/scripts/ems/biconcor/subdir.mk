################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/ems/biconcor/Alignment.cpp \
../scripts/ems/biconcor/Mismatch.cpp \
../scripts/ems/biconcor/PhrasePair.cpp \
../scripts/ems/biconcor/PhrasePairCollection.cpp \
../scripts/ems/biconcor/SuffixArray.cpp \
../scripts/ems/biconcor/TargetCorpus.cpp \
../scripts/ems/biconcor/Vocabulary.cpp \
../scripts/ems/biconcor/base64.cpp \
../scripts/ems/biconcor/biconcor.cpp 

OBJS += \
./scripts/ems/biconcor/Alignment.o \
./scripts/ems/biconcor/Mismatch.o \
./scripts/ems/biconcor/PhrasePair.o \
./scripts/ems/biconcor/PhrasePairCollection.o \
./scripts/ems/biconcor/SuffixArray.o \
./scripts/ems/biconcor/TargetCorpus.o \
./scripts/ems/biconcor/Vocabulary.o \
./scripts/ems/biconcor/base64.o \
./scripts/ems/biconcor/biconcor.o 

CPP_DEPS += \
./scripts/ems/biconcor/Alignment.d \
./scripts/ems/biconcor/Mismatch.d \
./scripts/ems/biconcor/PhrasePair.d \
./scripts/ems/biconcor/PhrasePairCollection.d \
./scripts/ems/biconcor/SuffixArray.d \
./scripts/ems/biconcor/TargetCorpus.d \
./scripts/ems/biconcor/Vocabulary.d \
./scripts/ems/biconcor/base64.d \
./scripts/ems/biconcor/biconcor.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/ems/biconcor/%.o: ../scripts/ems/biconcor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


