################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
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

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
I2C_IR_SWITCH.hex \

SECONDARY_LIST += \
I2C_IR_SWITCH.lst \

SECONDARY_SIZE += \
I2C_IR_SWITCH.siz \


# All Target
all: I2C_IR_SWITCH.elf secondary-outputs

# Tool invocations
I2C_IR_SWITCH.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32ecxw -mabi=ilp32e -msmall-data-limit=0 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "Z:\CH32V003\EXAM\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"I2C_IR_SWITCH.map" --specs=nano.specs --specs=nosys.specs -o "I2C_IR_SWITCH.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lprintf
	@	@
I2C_IR_SWITCH.hex: I2C_IR_SWITCH.elf
	@	riscv-none-embed-objcopy -O ihex "I2C_IR_SWITCH.elf"  "I2C_IR_SWITCH.hex"
	@	@
I2C_IR_SWITCH.lst: I2C_IR_SWITCH.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "I2C_IR_SWITCH.elf" > "I2C_IR_SWITCH.lst"
	@	@
I2C_IR_SWITCH.siz: I2C_IR_SWITCH.elf
	@	riscv-none-embed-size --format=berkeley "I2C_IR_SWITCH.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) I2C_IR_SWITCH.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
