################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../random_swr/src/random.cpp 

OBJS += \
./random_swr/src/random.o 

CPP_DEPS += \
./random_swr/src/random.d 


# Each subdirectory must supply rules for building sources it contributes
random_swr/src/%.o: ../random_swr/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SPARC RTEMS C++ Compiler'
	sparc-rtems-g++ -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/components/ccavoidobstaclesirq/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/leon3_bprint/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/io_ctrl/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/bprint_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/dataclasses/CDLocation/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/dataclasses/CDPath/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/actuators_drv/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/components/capathplanner/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/components/vehicle/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/planner_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/random_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/components/capathtracker/include" -I/opt/rtems-4.6/sparc-rtems/leon3/lib/include -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/config/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/sensors_drv/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/edroom_glue/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/edroombp_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/edroomsl_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/edroomsl_types_swr/include" -I"/home/victor/workspace/prac6_2_eclipse_project(1)/prac6_2_students/rtems_osswr/include" -O0 -g3 -Wall -msoft-float -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


