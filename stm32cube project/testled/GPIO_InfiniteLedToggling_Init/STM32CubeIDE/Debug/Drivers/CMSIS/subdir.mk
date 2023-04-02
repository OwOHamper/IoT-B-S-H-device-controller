################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/system_stm32g0xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32g0xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32g0xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32g0xx.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/system_stm32g0xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32g0xx.cyclo ./Drivers/CMSIS/system_stm32g0xx.d ./Drivers/CMSIS/system_stm32g0xx.o ./Drivers/CMSIS/system_stm32g0xx.su

.PHONY: clean-Drivers-2f-CMSIS

