## Generated SDC file "ripplecarry82.out.sdc"

## Copyright (C) 2020  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

## DATE    "Mon Mar 22 18:37:44 2021"

##
## DEVICE  "5CGXFC7C7F23C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {test} -period 10.000 -waveform { 0.000 5.000 } [get_ports {X[0] C_in X[1] X[2] X[3] X[4] X[5] X[6] X[7] Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7] carry s0 s1 s2 s3 s4 s5 s6 s7}]
create_clock -name {s0~output|o} -period 10.000 -waveform { 0.000 5.000 } [get_pins {s0~output|i s0~output|o s1~output|i s1~output|o s2~output|i s2~output|o s3~output|i s3~output|o s4~output|i s4~output|o s5~output|i s5~output|o s6~output|i s6~output|o s7~output|i s7~output|o}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {s0~output|o}] -rise_to [get_clocks {s0~output|o}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {s0~output|o}] -fall_to [get_clocks {s0~output|o}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {s0~output|o}] -rise_to [get_clocks {s0~output|o}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {s0~output|o}] -fall_to [get_clocks {s0~output|o}]  0.180  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s0}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s1}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s2}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s3}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s4}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s5}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s6}]
set_output_delay -add_delay -max -clock [get_clocks {s0~output|o}]  100.000 [get_ports {s7}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

