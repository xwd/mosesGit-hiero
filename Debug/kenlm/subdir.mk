################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../kenlm/bhiksha.cc \
../kenlm/binary_format.cc \
../kenlm/build_binary.cc \
../kenlm/config.cc \
../kenlm/left_test.cc \
../kenlm/lm_exception.cc \
../kenlm/model.cc \
../kenlm/model_test.cc \
../kenlm/ngram_query.cc \
../kenlm/quantize.cc \
../kenlm/read_arpa.cc \
../kenlm/search_hashed.cc \
../kenlm/search_trie.cc \
../kenlm/trie.cc \
../kenlm/trie_sort.cc \
../kenlm/virtual_interface.cc \
../kenlm/vocab.cc 

OBJS += \
./kenlm/bhiksha.o \
./kenlm/binary_format.o \
./kenlm/build_binary.o \
./kenlm/config.o \
./kenlm/left_test.o \
./kenlm/lm_exception.o \
./kenlm/model.o \
./kenlm/model_test.o \
./kenlm/ngram_query.o \
./kenlm/quantize.o \
./kenlm/read_arpa.o \
./kenlm/search_hashed.o \
./kenlm/search_trie.o \
./kenlm/trie.o \
./kenlm/trie_sort.o \
./kenlm/virtual_interface.o \
./kenlm/vocab.o 

CC_DEPS += \
./kenlm/bhiksha.d \
./kenlm/binary_format.d \
./kenlm/build_binary.d \
./kenlm/config.d \
./kenlm/left_test.d \
./kenlm/lm_exception.d \
./kenlm/model.d \
./kenlm/model_test.d \
./kenlm/ngram_query.d \
./kenlm/quantize.d \
./kenlm/read_arpa.d \
./kenlm/search_hashed.d \
./kenlm/search_trie.d \
./kenlm/trie.d \
./kenlm/trie_sort.d \
./kenlm/virtual_interface.d \
./kenlm/vocab.d 


# Each subdirectory must supply rules for building sources it contributes
kenlm/%.o: ../kenlm/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


