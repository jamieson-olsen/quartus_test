This is a simple Altera/Intel Quartus Prime build script

to build it run the tcl script from the command line

$ quartus_sh -t build.sh

Note that the timing constraints are in the .sdc file are in 
in the industry standard Synopsys format. These constraints 
will get picked up by the Quartus TimeQuest analysis tool.

Other design constraints such as device type and family, pin
locations, etc. are specified in the build.tcl file itself.

