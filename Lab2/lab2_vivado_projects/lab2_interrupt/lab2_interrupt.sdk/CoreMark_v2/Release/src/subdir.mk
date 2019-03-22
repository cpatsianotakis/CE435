################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/core_list_join.c \
../src/core_matrix.c \
../src/core_state.c \
../src/core_util.c \
../src/test2.c \
../src/timer_util.c 

OBJS += \
./src/core_list_join.o \
./src/core_matrix.o \
./src/core_state.o \
./src/core_util.o \
./src/test2.o \
./src/timer_util.o 

C_DEPS += \
./src/core_list_join.d \
./src/core_matrix.d \
./src/core_state.d \
./src/core_util.d \
./src/test2.d \
./src/timer_util.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../CoreMark_v2_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


