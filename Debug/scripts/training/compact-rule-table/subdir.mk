################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../scripts/training/compact-rule-table/Compactify.cpp \
../scripts/training/compact-rule-table/Compactify_Main.cpp \
../scripts/training/compact-rule-table/RuleTableParser.cpp 

OBJS += \
./scripts/training/compact-rule-table/Compactify.o \
./scripts/training/compact-rule-table/Compactify_Main.o \
./scripts/training/compact-rule-table/RuleTableParser.o 

CPP_DEPS += \
./scripts/training/compact-rule-table/Compactify.d \
./scripts/training/compact-rule-table/Compactify_Main.d \
./scripts/training/compact-rule-table/RuleTableParser.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/training/compact-rule-table/%.o: ../scripts/training/compact-rule-table/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


