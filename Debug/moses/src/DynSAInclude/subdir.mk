################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses/src/DynSAInclude/file.cpp \
../moses/src/DynSAInclude/params.cpp \
../moses/src/DynSAInclude/vocab.cpp 

OBJS += \
./moses/src/DynSAInclude/file.o \
./moses/src/DynSAInclude/params.o \
./moses/src/DynSAInclude/vocab.o 

CPP_DEPS += \
./moses/src/DynSAInclude/file.d \
./moses/src/DynSAInclude/params.d \
./moses/src/DynSAInclude/vocab.d 


# Each subdirectory must supply rules for building sources it contributes
moses/src/DynSAInclude/%.o: ../moses/src/DynSAInclude/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


