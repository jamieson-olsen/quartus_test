derive_clock_uncertainty
derive_pll_clocks
create_clock -period 10 [get_ports clock]
set_time_format -unit ns -decimal_places 3	
set_input_delay -add_delay  -clock [get_clocks {clock}]  1.200 [get_ports reset]
set_output_delay -add_delay  -clock [get_clocks {clock}]  3.500 [get_ports cout*]

