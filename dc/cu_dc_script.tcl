#start_gui
set_app_var link_path  * /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db

set_app_var target_library /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db

read_file -format verilog {/home/userdata/25mvd0010/asic_p/vcs/adder.v /home/userdata/25mvd0010/asic_p/vcs/alu.v /home/userdata/25mvd0010/asic_p/vcs/branch.v /home/userdata/25mvd0010/asic_p/vcs/control_decoder.v /home/userdata/25mvd0010/asic_p/vcs/control_unit.v /home/userdata/25mvd0010/asic_p/vcs/Core.v /home/userdata/25mvd0010/asic_p/vcs/data_memory_top.v /home/userdata/25mvd0010/asic_p/vcs/decode_pipe.v /home/userdata/25mvd0010/asic_p/vcs/Decode.v /home/userdata/25mvd0010/asic_p/vcs/execute_pipe.v /home/userdata/25mvd0010/asic_p/vcs/Execute.v /home/userdata/25mvd0010/asic_p/vcs/fetch_pipe.v /home/userdata/25mvd0010/asic_p/vcs/Fetch.v /home/userdata/25mvd0010/asic_p/vcs/immediate_gen.v /home/userdata/25mvd0010/asic_p/vcs/instruc_mem_top.v /home/userdata/25mvd0010/asic_p/vcs/memory.v /home/userdata/25mvd0010/asic_p/vcs/Memory1.v /home/userdata/25mvd0010/asic_p/vcs/memstage_pipe.v /home/userdata/25mvd0010/asic_p/vcs/Microprocessor_tb.v /home/userdata/25mvd0010/asic_p/vcs/Microprocessor.v /home/userdata/25mvd0010/asic_p/vcs/mux1_2.v /home/userdata/25mvd0010/asic_p/vcs/mux2_4.v /home/userdata/25mvd0010/asic_p/vcs/mux3_8.v /home/userdata/25mvd0010/asic_p/vcs/program_counter.v /home/userdata/25mvd0010/asic_p/vcs/register_file.v /home/userdata/25mvd0010/asic_p/vcs/type_decoder.v /home/userdata/25mvd0010/asic_p/vcs/wrapper_memory.v /home/userdata/25mvd0010/asic_p/vcs/Write_back.v}
analyze -library WORK -format verilog {../vcs/alu.v}
elaborate "" -parameters " = "
analyze -format verilog {../vcs/Decode.v}
read_file -format verilog {/home/userdata/25mvd0010/asic_p/vcs/Decode.v}

check_design

link

#get_lib_cells s*/*BUF*
#get_lib_cells s*/*DCAP*
#get_lib_cells s*/*INV*
#get_lib_cells s*/*XOR*

set clk_period 5.0
set PERIOD  5.0
set INPUT_DELAY  1.0
set OUTPUT_DELAY  1.0
set CLOCK_LATENCY 1.5
set MIN_IO_DELAY 1.0
set MAX_TRANSITION 0.5

#create_clock -name "clk" -period $PERIOD [get_ports clk]
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}

##if {[sizeof_collection [get_ports clk]] == 0} {
## set clk_name vclk
## create_clock -period $clk_period -name vclk
##}
set_clock_latency $CLOCK_LATENCY [get_clocks clk]
set_clock_uncertainty 0.3 [get_clocks clk]
set_clock_transition 0.4 [get_clocks clk]

group_path -name CLOCK -to clk -weight 1
group_path -name CLOCK -to clk -weight 1
group_path -name INPUTS -through [all_inputs] -weight 1
group_path -name OUTPUTS -to [all_outputs] -weight 1
set INPUTPORTS [remove_from_collection [all_inputs] [get_ports clk]]
set OUTPUTPORTS [all_outputs]
set_input_delay -clock "clk" -max $INPUT_DELAY $INPUTPORTS
set_max_transition $MAX_TRANSITION [current_design]
set_max_capacitance 100 [current_design]
set_max_fanout 200 [current_design]
check_timing

set_app_var auto_wire_load_selection false
set_wire_load_model -name 8000 -library saed14rvt_base_ff0p715v125c
set_wire_load_mode top

set_operating_conditions -library saed14rvt_base_ff0p715v125c 

set_fix_multiple_port_nets -all -buffer_constants [current_design]

compile -exact_map

source ../pt/add_buffer_netlist.tcl

report_timing

report_area > ./reports/decoder_area.rpt
report_power > ./reports/decoder_power.rpt
report_timing > ./reports/decoder_timing.rpt
report_qor > ./reports/decoder_qor.rpt

write -f verilog -h -out   ./reports/decoder_netlist.v
write_sdc ./reports/decoder_constraints.sdc











