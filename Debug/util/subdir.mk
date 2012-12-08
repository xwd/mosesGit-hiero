################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../util/getopt.c 

CC_SRCS += \
../util/bit_packing.cc \
../util/bit_packing_test.cc \
../util/ersatz_progress.cc \
../util/exception.cc \
../util/file.cc \
../util/file_piece.cc \
../util/file_piece_test.cc \
../util/joint_sort_test.cc \
../util/key_value_packing_test.cc \
../util/mmap.cc \
../util/murmur_hash.cc \
../util/probing_hash_table_test.cc \
../util/sorted_uniform_test.cc \
../util/tokenize_piece_test.cc 

OBJS += \
./util/bit_packing.o \
./util/bit_packing_test.o \
./util/ersatz_progress.o \
./util/exception.o \
./util/file.o \
./util/file_piece.o \
./util/file_piece_test.o \
./util/getopt.o \
./util/joint_sort_test.o \
./util/key_value_packing_test.o \
./util/mmap.o \
./util/murmur_hash.o \
./util/probing_hash_table_test.o \
./util/sorted_uniform_test.o \
./util/tokenize_piece_test.o 

C_DEPS += \
./util/getopt.d 

CC_DEPS += \
./util/bit_packing.d \
./util/bit_packing_test.d \
./util/ersatz_progress.d \
./util/exception.d \
./util/file.d \
./util/file_piece.d \
./util/file_piece_test.d \
./util/joint_sort_test.d \
./util/key_value_packing_test.d \
./util/mmap.d \
./util/murmur_hash.d \
./util/probing_hash_table_test.d \
./util/sorted_uniform_test.d \
./util/tokenize_piece_test.d 


# Each subdirectory must supply rules for building sources it contributes
util/%.o: ../util/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

util/%.o: ../util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


