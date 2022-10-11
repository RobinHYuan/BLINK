set_device -family {SmartFusion2} -die {M2S025} -speed {STD}
read_verilog -mode system_verilog {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\component\work\WTF\WTF.v}
set_top_level {WTF}
map_netlist
check_constraints {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\designer\WTF\synthesis.fdc}
