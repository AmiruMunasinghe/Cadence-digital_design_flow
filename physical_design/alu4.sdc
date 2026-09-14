set sdc_version 1.7

set_units -time 1ns
set_units -capacitance 1pF

# Virtual clock for the combinational ALU
create_clock -name VCLK -period 10.0 -waveform {0.0 5.0}

# Input arrival constraints
set_input_delay -clock VCLK 1.0 [get_ports A]
set_input_delay -clock VCLK 1.0 [get_ports B]
set_input_delay -clock VCLK 1.0 [get_ports OP]

# Output required-time constraints
set_output_delay -clock VCLK 1.0 [get_ports Y]

# Reasonable output load
set_load 0.05 [get_ports Y]
