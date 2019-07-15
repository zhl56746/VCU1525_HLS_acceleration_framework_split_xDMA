source ../../../device_type.tcl
set XILINX_VIVADO /home/applications/Xilinx/Vivado/2019.1
set XILINX_OPENCL /home/applications/Xilinx/SDx/2017.4
set INCLUDES "-I../src -I../../common_src"

open_project vhls_prj
set_top sdx_cppKernel_top

add_files -tb ../../common_src/getCPUTime.cpp
add_files -tb ../src/tb_matrix_mult_8x8.cpp -cflags "-O3 -std=c++0x  -DLINUX_BUILD -DVHLS_FLOW -DGPP_ONLY_FLOW $INCLUDES -I$XILINX_OPENCL/runtime/include/1_2 -I$XILINX_VIVADO/include -L$XILINX_OPENCL/runtime/lib/x86_64 -lrt"
add_files ../src/kernel_WRAPPER.cpp -cflags "$INCLUDES"
add_files ../src/matrix_mult_wrapper.cpp -cflags "$INCLUDES"
add_files ../src/sdx_cppKernel_top.h -cflags "$INCLUDES"
add_files ../src/sdx_cppKernel_top.cpp -cflags "$INCLUDES"

open_solution "solution1"
config_interface -m_axi_addr64
set_part [DEVICE_TYPE] 
create_clock -period 4 -name default

csynth_design
#cosim_design -ldflags {-lm -lrt}
export_design -format ip_catalog
exit
