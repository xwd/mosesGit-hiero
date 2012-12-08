################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses-cmd/src/IOWrapper.cpp \
../moses-cmd/src/LatticeMBR.cpp \
../moses-cmd/src/LatticeMBRGrid.cpp \
../moses-cmd/src/Main.cpp \
../moses-cmd/src/TranslationAnalysis.cpp \
../moses-cmd/src/mbr.cpp 

OBJS += \
./moses-cmd/src/IOWrapper.o \
./moses-cmd/src/LatticeMBR.o \
./moses-cmd/src/LatticeMBRGrid.o \
./moses-cmd/src/Main.o \
./moses-cmd/src/TranslationAnalysis.o \
./moses-cmd/src/mbr.o 

CPP_DEPS += \
./moses-cmd/src/IOWrapper.d \
./moses-cmd/src/LatticeMBR.d \
./moses-cmd/src/LatticeMBRGrid.d \
./moses-cmd/src/Main.d \
./moses-cmd/src/TranslationAnalysis.d \
./moses-cmd/src/mbr.d 


# Each subdirectory must supply rules for building sources it contributes
moses-cmd/src/%.o: ../moses-cmd/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


