################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32G0xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/LED12A1/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Application/User/subdir.mk
-include Application/Startup/subdir.mk
-include Application/Custom/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := GPIO_InfiniteLedToggling_Init
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
GPIO_InfiniteLedToggling_Init.elf \

MAP_FILES += \
GPIO_InfiniteLedToggling_Init.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
GPIO_InfiniteLedToggling_Init.list \


# All Target
all: main-build

# Main-build Target
main-build: GPIO_InfiniteLedToggling_Init.elf secondary-outputs

# Tool invocations
GPIO_InfiniteLedToggling_Init.elf GPIO_InfiniteLedToggling_Init.map: $(OBJS) $(USER_OBJS) C:\Users\Hamper\Downloads\en.x-cube-led12a1\STM32CubeExpansion_LED12A1_V1.0.0\Projects\NUCLEO-L073RZ\Applications\testled\GPIO_InfiniteLedToggling_Init\STM32CubeIDE\STM32G0B1RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "GPIO_InfiniteLedToggling_Init.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m0plus -T"C:\Users\Hamper\Downloads\en.x-cube-led12a1\STM32CubeExpansion_LED12A1_V1.0.0\Projects\NUCLEO-L073RZ\Applications\testled\GPIO_InfiniteLedToggling_Init\STM32CubeIDE\STM32G0B1RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="GPIO_InfiniteLedToggling_Init.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

GPIO_InfiniteLedToggling_Init.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "GPIO_InfiniteLedToggling_Init.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) GPIO_InfiniteLedToggling_Init.elf GPIO_InfiniteLedToggling_Init.list GPIO_InfiniteLedToggling_Init.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
