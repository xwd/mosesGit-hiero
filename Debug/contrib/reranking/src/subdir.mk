################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../contrib/reranking/src/Hypo.cpp \
../contrib/reranking/src/Main.cpp \
../contrib/reranking/src/NBest.cpp \
../contrib/reranking/src/ParameterNBest.cpp \
../contrib/reranking/src/Tools.cpp 

OBJS += \
./contrib/reranking/src/Hypo.o \
./contrib/reranking/src/Main.o \
./contrib/reranking/src/NBest.o \
./contrib/reranking/src/ParameterNBest.o \
./contrib/reranking/src/Tools.o 

CPP_DEPS += \
./contrib/reranking/src/Hypo.d \
./contrib/reranking/src/Main.d \
./contrib/reranking/src/NBest.d \
./contrib/reranking/src/ParameterNBest.d \
./contrib/reranking/src/Tools.d 


# Each subdirectory must supply rules for building sources it contributes
contrib/reranking/src/%.o: ../contrib/reranking/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


