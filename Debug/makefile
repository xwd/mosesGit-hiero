################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include util/subdir.mk
-include scripts/training/symal/subdir.mk
-include scripts/training/phrase-extract/subdir.mk
-include scripts/training/phrase-extract/extract-ghkm/subdir.mk
-include scripts/training/lexical-reordering/subdir.mk
-include scripts/training/compact-rule-table/subdir.mk
-include scripts/ems/biconcor/subdir.mk
-include moses-cmd/src/subdir.mk
-include moses-chart-cmd/src/subdir.mk
-include moses/src/subdir.mk
-include moses/src/Scope3Parser/subdir.mk
-include moses/src/RuleTable/subdir.mk
-include moses/src/LM/subdir.mk
-include moses/src/DynSAInclude/subdir.mk
-include moses/src/CYKPlusParser/subdir.mk
-include misc/subdir.mk
-include misc/pmoses/subdir.mk
-include mert/subdir.mk
-include mert/TERsrc/subdir.mk
-include lm/subdir.mk
-include kenlm/subdir.mk
-include jam-files/engine/subdir.mk
-include jam-files/engine/modules/subdir.mk
-include contrib/sigtest-filter/subdir.mk
-include contrib/server/subdir.mk
-include contrib/reranking/src/subdir.mk
-include contrib/memscore/subdir.mk
-include contrib/lmserver/subdir.mk
-include contrib/lmserver/examples/subdir.mk
-include contrib/eppex/subdir.mk
-include contrib/checkplf/subdir.mk
-include OnDiskPt/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: mosesGit-hiero

# Tool invocations
mosesGit-hiero: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	g++  -o"mosesGit-hiero" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C++_DEPS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) mosesGit-hiero
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
