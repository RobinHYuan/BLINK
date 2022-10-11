set_component FCCC_C0_FCCC_C0_0_FCCC
# Microsemi Corp.
# Date: 2022-Sep-20 16:10:56
#

create_clock -period 20 [ get_pins { CCC_INST/CLK0 } ]
create_generated_clock -multiply_by 2 -divide_by 100 -source [ get_pins { CCC_INST/CLK0 } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
