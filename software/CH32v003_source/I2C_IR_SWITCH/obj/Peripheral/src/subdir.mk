################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_adc.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_dbgmcu.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_dma.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_exti.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_flash.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_gpio.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_i2c.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_iwdg.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_misc.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_opa.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_pwr.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_rcc.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_spi.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_tim.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_usart.c \
Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_wwdg.c 

OBJS += \
./Peripheral/src/ch32v00x_adc.o \
./Peripheral/src/ch32v00x_dbgmcu.o \
./Peripheral/src/ch32v00x_dma.o \
./Peripheral/src/ch32v00x_exti.o \
./Peripheral/src/ch32v00x_flash.o \
./Peripheral/src/ch32v00x_gpio.o \
./Peripheral/src/ch32v00x_i2c.o \
./Peripheral/src/ch32v00x_iwdg.o \
./Peripheral/src/ch32v00x_misc.o \
./Peripheral/src/ch32v00x_opa.o \
./Peripheral/src/ch32v00x_pwr.o \
./Peripheral/src/ch32v00x_rcc.o \
./Peripheral/src/ch32v00x_spi.o \
./Peripheral/src/ch32v00x_tim.o \
./Peripheral/src/ch32v00x_usart.o \
./Peripheral/src/ch32v00x_wwdg.o 

C_DEPS += \
./Peripheral/src/ch32v00x_adc.d \
./Peripheral/src/ch32v00x_dbgmcu.d \
./Peripheral/src/ch32v00x_dma.d \
./Peripheral/src/ch32v00x_exti.d \
./Peripheral/src/ch32v00x_flash.d \
./Peripheral/src/ch32v00x_gpio.d \
./Peripheral/src/ch32v00x_i2c.d \
./Peripheral/src/ch32v00x_iwdg.d \
./Peripheral/src/ch32v00x_misc.d \
./Peripheral/src/ch32v00x_opa.d \
./Peripheral/src/ch32v00x_pwr.d \
./Peripheral/src/ch32v00x_rcc.d \
./Peripheral/src/ch32v00x_spi.d \
./Peripheral/src/ch32v00x_tim.d \
./Peripheral/src/ch32v00x_usart.d \
./Peripheral/src/ch32v00x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/ch32v00x_adc.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_dbgmcu.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_dma.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_exti.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_flash.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_gpio.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_i2c.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_iwdg.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_misc.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_misc.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_opa.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_opa.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_pwr.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_rcc.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_spi.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_tim.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_usart.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
Peripheral/src/ch32v00x_wwdg.o: Z:/CH32V003/EXAM/SRC/Peripheral/src/ch32v00x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"Z:\CH32V003\EXAM\SRC\Debug" -I"Z:\CH32V003\EXAM\SRC\Core" -I"Z:\CH32V003\EXAM\I2C\I2C_IR_SWITCH\User" -I"Z:\CH32V003\EXAM\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

