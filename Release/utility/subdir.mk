################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../utility/Dhcp.cpp \
../utility/Dns.cpp \
../utility/Ethernet.cpp \
../utility/EthernetClient.cpp \
../utility/EthernetServer.cpp \
../utility/EthernetUdp.cpp \
../utility/SPI.cpp \
../utility/socket.cpp \
../utility/w5100.cpp 

OBJS += \
./utility/Dhcp.o \
./utility/Dns.o \
./utility/Ethernet.o \
./utility/EthernetClient.o \
./utility/EthernetServer.o \
./utility/EthernetUdp.o \
./utility/SPI.o \
./utility/socket.o \
./utility/w5100.o 

CPP_DEPS += \
./utility/Dhcp.d \
./utility/Dns.d \
./utility/Ethernet.d \
./utility/EthernetClient.d \
./utility/EthernetServer.d \
./utility/EthernetUdp.d \
./utility/SPI.d \
./utility/socket.d \
./utility/w5100.d 


# Each subdirectory must supply rules for building sources it contributes
utility/%.o: ../utility/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\ed\eclipseWS\EthernetIot" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega644p -DF_CPU=14745600UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


