set_clock_latency -source -early -max -rise  -112.351 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -116.11 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -112.351 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -116.11 [get_ports {clk}] -clock clk 
