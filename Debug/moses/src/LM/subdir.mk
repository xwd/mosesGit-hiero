################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses/src/LM/Base.cpp \
../moses/src/LM/DMap.cpp \
../moses/src/LM/Factory.cpp \
../moses/src/LM/IRST.cpp \
../moses/src/LM/Implementation.cpp \
../moses/src/LM/Joint.cpp \
../moses/src/LM/Ken.cpp \
../moses/src/LM/MultiFactor.cpp \
../moses/src/LM/ORLM.cpp \
../moses/src/LM/ParallelBackoff.cpp \
../moses/src/LM/Rand.cpp \
../moses/src/LM/Remote.cpp \
../moses/src/LM/SRI.cpp \
../moses/src/LM/SingleFactor.cpp 

OBJS += \
./moses/src/LM/Base.o \
./moses/src/LM/DMap.o \
./moses/src/LM/Factory.o \
./moses/src/LM/IRST.o \
./moses/src/LM/Implementation.o \
./moses/src/LM/Joint.o \
./moses/src/LM/Ken.o \
./moses/src/LM/MultiFactor.o \
./moses/src/LM/ORLM.o \
./moses/src/LM/ParallelBackoff.o \
./moses/src/LM/Rand.o \
./moses/src/LM/Remote.o \
./moses/src/LM/SRI.o \
./moses/src/LM/SingleFactor.o 

CPP_DEPS += \
./moses/src/LM/Base.d \
./moses/src/LM/DMap.d \
./moses/src/LM/Factory.d \
./moses/src/LM/IRST.d \
./moses/src/LM/Implementation.d \
./moses/src/LM/Joint.d \
./moses/src/LM/Ken.d \
./moses/src/LM/MultiFactor.d \
./moses/src/LM/ORLM.d \
./moses/src/LM/ParallelBackoff.d \
./moses/src/LM/Rand.d \
./moses/src/LM/Remote.d \
./moses/src/LM/SRI.d \
./moses/src/LM/SingleFactor.d 


# Each subdirectory must supply rules for building sources it contributes
moses/src/LM/%.o: ../moses/src/LM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


