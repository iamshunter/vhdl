vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/work
vlib riviera/fit_timer_v2_0_8
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap work riviera/work
vmap fit_timer_v2_0_8 riviera/fit_timer_v2_0_8
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/hunters/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/home/hunters/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/hunters/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work work  -v2k5 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work fit_timer_v2_0_8 -93 \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/d59c/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_fit_timer_0_0/sim/design_1_fit_timer_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../uZedFmcLinux.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+/home/hunters/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_IntToPulse_0_0/sim/design_1_IntToPulse_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

