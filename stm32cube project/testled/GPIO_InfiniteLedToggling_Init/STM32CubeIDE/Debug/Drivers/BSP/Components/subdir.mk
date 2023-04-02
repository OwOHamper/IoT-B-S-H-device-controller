################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202/led1202.c \
C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202/led1202_reg.c 

OBJS += \
./Drivers/BSP/Components/led1202.o \
./Drivers/BSP/Components/led1202_reg.o 

C_DEPS += \
./Drivers/BSP/Components/led1202.d \
./Drivers/BSP/Components/led1202_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/led1202.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202/led1202.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/led1202_reg.o: C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202/led1202_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32G0B1xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Projects/NUCLEO-L073RZ/Applications/testled/GPIO_InfiniteLedToggling_Init/STM32CubeIDE/Application/Custom/Include" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/Components/led1202" -I"C:/Users/Hamper/Downloads/en.x-cube-led12a1/STM32CubeExpansion_LED12A1_V1.0.0/Drivers/BSP/LED12A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/led1202.cyclo ./Drivers/BSP/Components/led1202.d ./Drivers/BSP/Components/led1202.o ./Drivers/BSP/Components/led1202.su ./Drivers/BSP/Components/led1202_reg.cyclo ./Drivers/BSP/Components/led1202_reg.d ./Drivers/BSP/Components/led1202_reg.o ./Drivers/BSP/Components/led1202_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

