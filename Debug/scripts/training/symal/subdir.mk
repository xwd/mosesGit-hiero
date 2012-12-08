################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/training/symal/symal.cpp 

C_SRCS += \
../scripts/training/symal/cmd.c 

OBJS += \
./scripts/training/symal/cmd.o \
./scripts/training/symal/symal.o 

C_DEPS += \
./scripts/training/symal/cmd.d 

CPP_DEPS += \
./scripts/training/symal/symal.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/training/symal/%.o: ../scripts/training/symal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

scripts/training/symal/%.o: ../scripts/training/symal/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


