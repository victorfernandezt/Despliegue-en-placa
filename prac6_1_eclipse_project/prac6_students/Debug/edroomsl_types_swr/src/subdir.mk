################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../edroomsl_types_swr/src/edroomsl_types.cpp 

OBJS += \
./edroomsl_types_swr/src/edroomsl_types.o 

CPP_DEPS += \
./edroomsl_types_swr/src/edroomsl_types.d 


# Each subdirectory must supply rules for building sources it contributes
edroomsl_types_swr/src/%.o: ../edroomsl_types_swr/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SPARC RTEMS C++ Compiler'
	sparc-rtems-g++ -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/ccavoidobstacles/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/leon3_bprint/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/io_ctrl/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/bprint_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/dataclasses/CDLocation/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/dataclasses/CDPath/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/actuators_drv/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/capathplanner/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/vehicle/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/planner_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/random_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/capathtracker/include" -I/opt/rtems-4.6/sparc-rtems/leon3/lib/include -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/config/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/sensors_drv/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroom_glue/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroombp_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroomsl_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroomsl_types_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/rtems_osswr/include" -O0 -g3 -Wall -msoft-float -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


