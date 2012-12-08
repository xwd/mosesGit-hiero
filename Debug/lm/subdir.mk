################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../lm/bhiksha.cc \
../lm/binary_format.cc \
../lm/build_binary.cc \
../lm/config.cc \
../lm/left_test.cc \
../lm/lm_exception.cc \
../lm/model.cc \
../lm/model_test.cc \
../lm/ngram_query.cc \
../lm/quantize.cc \
../lm/read_arpa.cc \
../lm/search_hashed.cc \
../lm/search_trie.cc \
../lm/trie.cc \
../lm/trie_sort.cc \
../lm/virtual_interface.cc \
../lm/vocab.cc 

OBJS += \
./lm/bhiksha.o \
./lm/binary_format.o \
./lm/build_binary.o \
./lm/config.o \
./lm/left_test.o \
./lm/lm_exception.o \
./lm/model.o \
./lm/model_test.o \
./lm/ngram_query.o \
./lm/quantize.o \
./lm/read_arpa.o \
./lm/search_hashed.o \
./lm/search_trie.o \
./lm/trie.o \
./lm/trie_sort.o \
./lm/virtual_interface.o \
./lm/vocab.o 

CC_DEPS += \
./lm/bhiksha.d \
./lm/binary_format.d \
./lm/build_binary.d \
./lm/config.d \
./lm/left_test.d \
./lm/lm_exception.d \
./lm/model.d \
./lm/model_test.d \
./lm/ngram_query.d \
./lm/quantize.d \
./lm/read_arpa.d \
./lm/search_hashed.d \
./lm/search_trie.d \
./lm/trie.d \
./lm/trie_sort.d \
./lm/virtual_interface.d \
./lm/vocab.d 


# Each subdirectory must supply rules for building sources it contributes
lm/%.o: ../lm/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


