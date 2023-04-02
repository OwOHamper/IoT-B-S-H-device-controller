################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Custom/bridge.c \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-F401RE/Applications/LED12A1/Src/callbacks.c 

OBJS += \
./Application/Custom/bridge.o \
./Application/Custom/callbacks.o 

C_DEPS += \
./Application/Custom/bridge.d \
./Application/Custom/callbacks.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Custom/%.o Application/Custom/%.su Application/Custom/%.cyclo: ../Application/Custom/%.c Application/Custom/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/Custom/callbacks.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-F401RE/Applications/LED12A1/Src/callbacks.c Application/Custom/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-Custom

clean-Application-2f-Custom:
	-$(RM) ./Application/Custom/bridge.cyclo ./Application/Custom/bridge.d ./Application/Custom/bridge.o ./Application/Custom/bridge.su ./Application/Custom/callbacks.cyclo ./Application/Custom/callbacks.d ./Application/Custom/callbacks.o ./Application/Custom/callbacks.su

.PHONY: clean-Application-2f-Custom

