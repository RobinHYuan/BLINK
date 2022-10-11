open_project -project {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\designer\WTF\WTF_fp\WTF.pro}
enable_device -name {M2S025} -enable 1
set_programming_file -name {M2S025} -file {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\designer\WTF\WTF.ppd}
set_programming_action -action {PROGRAM} -name {M2S025} 
run_selected_actions
save_project
close_project
