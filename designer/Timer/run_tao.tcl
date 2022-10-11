set_device -family {SmartFusion2} -die {M2S025} -speed {STD}
read_verilog -mode system_verilog {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\component\work\FCCC_C0\FCCC_C0_0\FCCC_C0_FCCC_C0_0_FCCC.v}
read_verilog -mode system_verilog {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\component\work\FCCC_C0\FCCC_C0.v}
read_verilog -mode system_verilog {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\hdl\LED_BLINK.v}
set_top_level {Timer}
map_netlist
check_constraints {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\designer\Timer\synthesis.fdc}
