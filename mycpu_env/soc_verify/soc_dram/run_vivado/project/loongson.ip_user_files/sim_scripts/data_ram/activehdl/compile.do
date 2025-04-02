transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"D:/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"D:/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l dist_mem_gen_v8_0_13 -l xil_defaultlib \
"../../../../../../rtl/xilinx_ip/data_ram/sim/data_ram.v" \


vlog -work xil_defaultlib \
"glbl.v"

