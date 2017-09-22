################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utility/subdir.mk
-include Arduino/avr-libc/subdir.mk
-include Arduino/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
EthernetIot.lss \

FLASH_IMAGE += \
EthernetIot.hex \

EEPROM_IMAGE += \
EthernetIot.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: EthernetIot.elf secondary-outputs

# Tool invocations
EthernetIot.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-g++ -s -Os -o"EthernetIot.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm -Wl,-Map,EthernetIot.map,--cref -mrelax -Wl,--gc-sections -Wl,--gc-sections -mmcu=atmega644p
	@echo 'Finished building target: $@'
	@echo ' '

EthernetIot.lss: EthernetIot.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S EthernetIot.elf  >"EthernetIot.lss"
	@echo 'Finished building: $@'
	@echo ' '

EthernetIot.hex: EthernetIot.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex EthernetIot.elf  "EthernetIot.hex"
	@echo 'Finished building: $@'
	@echo ' '

EthernetIot.eep: EthernetIot.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex EthernetIot.elf  "EthernetIot.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: EthernetIot.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega644p EthernetIot.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(S_DEPS)$(PDE_DEPS)$(LSS)$(C_DEPS)$(FLASH_IMAGE)$(CC_DEPS)$(ELFS)$(C++_DEPS)$(OBJS)$(CXX_DEPS)$(ASM_DEPS)$(EEPROM_IMAGE)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(CPP_DEPS) EthernetIot.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
