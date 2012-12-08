################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/training/lexical-reordering/reordering_classes.cpp \
../scripts/training/lexical-reordering/score.cpp 

OBJS += \
./scripts/training/lexical-reordering/reordering_classes.o \
./scripts/training/lexical-reordering/score.o 

CPP_DEPS += \
./scripts/training/lexical-reordering/reordering_classes.d \
./scripts/training/lexical-reordering/score.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/training/lexical-reordering/%.o: ../scripts/training/lexical-reordering/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


