################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1/led12a1.c 

OBJS += \
./Drivers/BSP/LED12A1/led12a1.o 

C_DEPS += \
./Drivers/BSP/LED12A1/led12a1.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/LED12A1/led12a1.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1/led12a1.c Drivers/BSP/LED12A1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-LED12A1

clean-Drivers-2f-BSP-2f-LED12A1:
	-$(RM) ./Drivers/BSP/LED12A1/led12a1.cyclo ./Drivers/BSP/LED12A1/led12a1.d ./Drivers/BSP/LED12A1/led12a1.o ./Drivers/BSP/LED12A1/led12a1.su

.PHONY: clean-Drivers-2f-BSP-2f-LED12A1

