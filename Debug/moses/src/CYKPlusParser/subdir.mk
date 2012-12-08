################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses/src/CYKPlusParser/ChartRuleLookupManagerCYKPlus.cpp \
../moses/src/CYKPlusParser/ChartRuleLookupManagerMemory.cpp \
../moses/src/CYKPlusParser/ChartRuleLookupManagerOnDisk.cpp \
../moses/src/CYKPlusParser/DotChartInMemory.cpp \
../moses/src/CYKPlusParser/DotChartOnDisk.cpp 

OBJS += \
./moses/src/CYKPlusParser/ChartRuleLookupManagerCYKPlus.o \
./moses/src/CYKPlusParser/ChartRuleLookupManagerMemory.o \
./moses/src/CYKPlusParser/ChartRuleLookupManagerOnDisk.o \
./moses/src/CYKPlusParser/DotChartInMemory.o \
./moses/src/CYKPlusParser/DotChartOnDisk.o 

CPP_DEPS += \
./moses/src/CYKPlusParser/ChartRuleLookupManagerCYKPlus.d \
./moses/src/CYKPlusParser/ChartRuleLookupManagerMemory.d \
./moses/src/CYKPlusParser/ChartRuleLookupManagerOnDisk.d \
./moses/src/CYKPlusParser/DotChartInMemory.d \
./moses/src/CYKPlusParser/DotChartOnDisk.d 


# Each subdirectory must supply rules for building sources it contributes
moses/src/CYKPlusParser/%.o: ../moses/src/CYKPlusParser/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


