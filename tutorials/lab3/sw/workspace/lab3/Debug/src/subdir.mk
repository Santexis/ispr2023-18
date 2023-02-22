################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/fir.c \
../src/lab3.c \
../src/platform.c 

OBJS += \
./src/fir.o \
./src/lab3.o \
./src/platform.o 

C_DEPS += \
./src/fir.d \
./src/lab3.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -DSW_PROFILE -Wall -O0 -g3 -pg -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I/home/ispr/Documentos/ispr/tutorials/lab3/sw/workspace/system_platform/export/system_platform/sw/system_platform/standalone_ps7_cortexa9_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


