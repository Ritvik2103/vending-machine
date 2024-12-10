#create clock 
create_clock -period 8 -name sys_clock [get_ports clk]

#set clock source latency
set_clock_latency -source 1.2 [get_clocks sys_clock]
#set clock network latency
set_clock_latency 0.3 [get_pins inv_mgr/CLK]


#maximum input delay for all inputs
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[5]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[4]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[3]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[2]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[1]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports cash[0]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports product_sel[0]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports product_sel[1]]
set_input_delay -clock [get_clocks sys_clock] -max 0.2 [get_ports rst]

#output delay for all outputs
set_output_delay 0.5 [all_outputs]

#group paths for timing
group_path -name i2o -from [all_inputs] -to [all_outputs]
group_path -name i2r -from [all_inputs] -to [all_registers -data_pins]
group_path -name r2r -from [all_registers -clock_pins] -to [all_registers -data_pins]
group_path -name r2o -from [all_registers -clock_pins] -to [all_outputs]


