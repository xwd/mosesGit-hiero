################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mert/TERsrc/alignmentStruct.cpp \
../mert/TERsrc/hashMap.cpp \
../mert/TERsrc/hashMapInfos.cpp \
../mert/TERsrc/hashMapStringInfos.cpp \
../mert/TERsrc/infosHasher.cpp \
../mert/TERsrc/stringHasher.cpp \
../mert/TERsrc/stringInfosHasher.cpp \
../mert/TERsrc/terAlignment.cpp \
../mert/TERsrc/terShift.cpp \
../mert/TERsrc/tercalc.cpp \
../mert/TERsrc/tools.cpp 

OBJS += \
./mert/TERsrc/alignmentStruct.o \
./mert/TERsrc/hashMap.o \
./mert/TERsrc/hashMapInfos.o \
./mert/TERsrc/hashMapStringInfos.o \
./mert/TERsrc/infosHasher.o \
./mert/TERsrc/stringHasher.o \
./mert/TERsrc/stringInfosHasher.o \
./mert/TERsrc/terAlignment.o \
./mert/TERsrc/terShift.o \
./mert/TERsrc/tercalc.o \
./mert/TERsrc/tools.o 

CPP_DEPS += \
./mert/TERsrc/alignmentStruct.d \
./mert/TERsrc/hashMap.d \
./mert/TERsrc/hashMapInfos.d \
./mert/TERsrc/hashMapStringInfos.d \
./mert/TERsrc/infosHasher.d \
./mert/TERsrc/stringHasher.d \
./mert/TERsrc/stringInfosHasher.d \
./mert/TERsrc/terAlignment.d \
./mert/TERsrc/terShift.d \
./mert/TERsrc/tercalc.d \
./mert/TERsrc/tools.d 


# Each subdirectory must supply rules for building sources it contributes
mert/TERsrc/%.o: ../mert/TERsrc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


