################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../edroombp_swr/src/rtemsapi_4_6/rtems_4_6/edroombp.cpp 

OBJS += \
./edroombp_swr/src/rtemsapi_4_6/rtems_4_6/edroombp.o 

CPP_DEPS += \
./edroombp_swr/src/rtemsapi_4_6/rtems_4_6/edroombp.d 


# Each subdirectory must supply rules for building sources it contributes
edroombp_swr/src/rtemsapi_4_6/rtems_4_6/%.o: ../edroombp_swr/src/rtemsapi_4_6/rtems_4_6/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SPARC RTEMS C++ Compiler'
	sparc-rtems-g++ -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/ccavoidobstacles/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/leon3_bprint/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/io_ctrl/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/bprint_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/dataclasses/CDLocation/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/dataclasses/CDPath/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/actuators_drv/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/capathplanner/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/vehicle/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/planner_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/random_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/components/capathtracker/include" -I/opt/rtems-4.6/sparc-rtems/leon3/lib/include -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/config/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/sensors_drv/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroom_glue/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroombp_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroomsl_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/edroomsl_types_swr/include" -I"/home/victor/workspace/prac6_1_eclipse_project/prac6_students/rtems_osswr/include" -O0 -g3 -Wall -msoft-float -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


