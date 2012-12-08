################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../moses/src/Scope3Parser/ApplicableRuleTrie.cpp \
../moses/src/Scope3Parser/Parser.cpp \
../moses/src/Scope3Parser/StackLatticeBuilder.cpp \
../moses/src/Scope3Parser/VarSpanTrieBuilder.cpp 

OBJS += \
./moses/src/Scope3Parser/ApplicableRuleTrie.o \
./moses/src/Scope3Parser/Parser.o \
./moses/src/Scope3Parser/StackLatticeBuilder.o \
./moses/src/Scope3Parser/VarSpanTrieBuilder.o 

CPP_DEPS += \
./moses/src/Scope3Parser/ApplicableRuleTrie.d \
./moses/src/Scope3Parser/Parser.d \
./moses/src/Scope3Parser/StackLatticeBuilder.d \
./moses/src/Scope3Parser/VarSpanTrieBuilder.d 


# Each subdirectory must supply rules for building sources it contributes
moses/src/Scope3Parser/%.o: ../moses/src/Scope3Parser/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


