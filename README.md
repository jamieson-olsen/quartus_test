# Quartus Test

## Introduction

This is a very simple Altera Quartus II (or Intel Quartus Prime) build script example.

## Instructions

to build it run the tcl script from the command line:

    quartus_sh -t build.tcl

Note that the timing constraints are in the .sdc file are in the industry standard Synopsys format. These constraints will get picked up by the Quartus TimeQuest analysis tool.

Other design constraints such as device type and family, pin locations, etc. are specified in the build.tcl file itself.

The various reports and output files will be located in the output_files directory

After this script finishes (takes about a minute) it will also produce various quartus project files in the main directory. If so desired this project may be opened with the Quartus GUI in case one wants to view reports, view graphical pinouts, look at timing constraints, etc. However, note that any changes made when working in the GUI will not be retained. Only settings in sdc and tcl files will be kept. Consider anything you do in the Quartus GUI operations to be strictly "read only".

This example also shows how to set a simple variable in the TCL script and pass that along to the top level VHDL file at build time. This may be useful for passing along a version number or some other build time switch.

JTO

