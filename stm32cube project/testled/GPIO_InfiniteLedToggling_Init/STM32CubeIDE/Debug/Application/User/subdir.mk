################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/main.c \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/stm32g0xx_hal_msp.c \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/stm32g0xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32g0xx_hal_msp.o \
./Application/User/stm32g0xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32g0xx_hal_msp.d \
./Application/User/stm32g0xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32g0xx_hal_msp.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/stm32g0xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32g0xx_it.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/Src/stm32g0xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/%.o Application/User/%.su Application/User/%.cyclo: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32g0xx_hal_msp.cyclo ./Application/User/stm32g0xx_hal_msp.d ./Application/User/stm32g0xx_hal_msp.o ./Application/User/stm32g0xx_hal_msp.su ./Application/User/stm32g0xx_it.cyclo ./Application/User/stm32g0xx_it.d ./Application/User/stm32g0xx_it.o ./Application/User/stm32g0xx_it.su ./Application/User/syscalls.cyclo ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/sysmem.cyclo ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/sysmem.su

.PHONY: clean-Application-2f-User

