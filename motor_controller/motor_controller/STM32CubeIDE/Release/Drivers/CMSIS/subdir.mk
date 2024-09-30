################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/vnaik/OneDrive\ -\ Michigan\ State\ University/Documents/Solar\ Car/Git\ projects/motor_controller_schip/motor_controller/motor_controller/Src/system_stm32f3xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f3xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f3xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f3xx.o: C:/Users/vnaik/OneDrive\ -\ Michigan\ State\ University/Documents/Solar\ Car/Git\ projects/motor_controller_schip/motor_controller/motor_controller/Src/system_stm32f3xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F302x8 -c -I../../Inc -I../../Drivers/STM32F3xx_HAL_Driver/Inc -I../../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.3.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.3.1-Full/MotorControl/MCSDK/MCLib/F3xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/CMSIS/system_stm32f3xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f3xx.cyclo ./Drivers/CMSIS/system_stm32f3xx.d ./Drivers/CMSIS/system_stm32f3xx.o ./Drivers/CMSIS/system_stm32f3xx.su

.PHONY: clean-Drivers-2f-CMSIS

