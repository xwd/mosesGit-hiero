################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses-chart-cmd/src/IOWrapper.cpp \
../moses-chart-cmd/src/Main.cpp \
../moses-chart-cmd/src/TranslationAnalysis.cpp \
../moses-chart-cmd/src/mbr.cpp 

OBJS += \
./moses-chart-cmd/src/IOWrapper.o \
./moses-chart-cmd/src/Main.o \
./moses-chart-cmd/src/TranslationAnalysis.o \
./moses-chart-cmd/src/mbr.o 

CPP_DEPS += \
./moses-chart-cmd/src/IOWrapper.d \
./moses-chart-cmd/src/Main.d \
./moses-chart-cmd/src/TranslationAnalysis.d \
./moses-chart-cmd/src/mbr.d 


# Each subdirectory must supply rules for building sources it contributes
moses-chart-cmd/src/%.o: ../moses-chart-cmd/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


