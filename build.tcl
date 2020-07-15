# build script for Altera Quartus II or Intel Quartus Prime
# Jamieson Olsen
# to run it from command line: quartus_sh -t build.tcl

load_package flow
project_new TestProj -revision RevE -overwrite
set_global_assignment -name FAMILY "MAX 10"
set_global_assignment -name DEVICE 10M08SAE144C8GES
set_global_assignment -name VHDL_FILE Test.vhd
set_global_assignment -name SDC_FILE Test.sdc
set_global_assignment -name TOP_LEVEL_ENTITY Test
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files

# IO assignments
set_location_assignment -to reset PIN_89
set_location_assignment -to clock PIN_27
set_location_assignment -to cout[7] PIN_32
set_location_assignment -to cout[6] PIN_33
set_location_assignment -to cout[5] PIN_38
set_location_assignment -to cout[4] PIN_39
set_location_assignment -to cout[3] PIN_41
set_location_assignment -to cout[2] PIN_43
set_location_assignment -to cout[1] PIN_44
set_location_assignment -to cout[0] PIN_45

# a user-defined variable can be boolean or integer
# quartus does not support any other types here
set_parameter -name MyVar 12

execute_flow -compile
project_close