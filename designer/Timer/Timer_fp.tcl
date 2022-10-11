new_project \
         -name {Timer} \
         -location {C:\Users\robin.yuan\OneDrive - General Fusion Inc\Desktop\First_FPGA_TEST\designer\Timer\Timer_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025} \
         -name {M2S025}
enable_device \
         -name {M2S025} \
         -enable {TRUE}
save_project
close_project
