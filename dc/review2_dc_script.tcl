#start_gui

# ============================================================
# Library Setup
# ============================================================
set_app_var link_library "* \
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db \
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_SRAM/liberty/nldm/saed14sram_ff0p715v125c.db"

set_app_var target_library "\
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db \
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_SRAM/liberty/nldm/saed14sram_ff0p715v125c.db"

# ============================================================
# Read Design — all verilog files via filelist
# ============================================================
analyze -library WORK -format verilog {../vcs/review2/adder.v}
analyze -library WORK -format verilog {../vcs/review2/alu.v}
analyze -library WORK -format verilog {../vcs/review2/branch.v}
analyze -library WORK -format verilog {../vcs/review2/control_decoder.v}
analyze -library WORK -format verilog {../vcs/review2/control_unit.v}
analyze -library WORK -format verilog {../vcs/review2/data_memory_top.v}
analyze -library WORK -format verilog {../vcs/review2/decode_pipe.v}
analyze -library WORK -format verilog {../vcs/review2/Decode.v}
analyze -library WORK -format verilog {../vcs/review2/execute_pipe.v}
analyze -library WORK -format verilog {../vcs/review2/Execute.v}
analyze -library WORK -format verilog {../vcs/review2/fetch_pipe.v}
analyze -library WORK -format verilog {../vcs/review2/Fetch.v}
analyze -library WORK -format verilog {../vcs/review2/immediate_gen.v}
analyze -library WORK -format verilog {../vcs/review2/instruc_mem_top.v}
analyze -library WORK -format verilog {../vcs/review2/memory.v}
analyze -library WORK -format verilog {../vcs/review2/Memory1.v}
analyze -library WORK -format verilog {../vcs/review2/memstage_pipe.v}
analyze -library WORK -format verilog {../vcs/review2/mux1_2.v}
analyze -library WORK -format verilog {../vcs/review2/mux2_4.v}
analyze -library WORK -format verilog {../vcs/review2/mux3_8.v}
analyze -library WORK -format verilog {../vcs/review2/program_counter.v}
analyze -library WORK -format verilog {../vcs/review2/register_file.v}
analyze -library WORK -format verilog {../vcs/review2/type_decoder.v}
analyze -library WORK -format verilog {../vcs/review2/wrapper_memory.v}
analyze -library WORK -format verilog {../vcs/review2/Write_back.v}
analyze -library WORK -format verilog {../vcs/review2/Core.v}
analyze -library WORK -format verilog {../vcs/review2/Microprocessor.v}
elaborate microprocessor
current_design microprocessor

check_design
link

# ============================================================
# Constraints
# ============================================================
set PERIOD          5.0
set INPUT_DELAY     1.0
set OUTPUT_DELAY    1.0
set CLOCK_LATENCY   1.5
set MAX_TRANSITION  0.5
set MAX_CAPACITANCE 100
set MAX_FANOUT      200

# Clock
create_clock -name "clk" -period $PERIOD [get_ports clk]
set_clock_latency    $CLOCK_LATENCY [get_clocks clk]
set_clock_uncertainty 0.3           [get_clocks clk]
set_clock_transition  0.4           [get_clocks clk]

# Input / Output delays
set INPUTPORTS  [remove_from_collection [all_inputs] [get_ports clk]]
set OUTPUTPORTS [all_outputs]

set_input_delay  -clock clk -max $INPUT_DELAY  $INPUTPORTS
set_output_delay -clock clk -max $OUTPUT_DELAY $OUTPUTPORTS

# Transition / capacitance / fanout
set_max_transition  $MAX_TRANSITION  [current_design]
set_max_capacitance $MAX_CAPACITANCE [current_design]
set_max_fanout      $MAX_FANOUT      [current_design]

# Path groups
group_path -name INPUTS  -from [all_inputs]  -weight 1
group_path -name OUTPUTS -to   [all_outputs] -weight 1
group_path -name REGS    -from [all_registers] -to [all_registers] -weight 1

# ============================================================
# Wire Load
# ============================================================
set_app_var auto_wire_load_selection false
set_wire_load_model -name 8000 -library saed14rvt_base_ff0p715v125c
set_wire_load_mode  top

# Operating conditions
set_operating_conditions -library saed14rvt_base_ff0p715v125c

# Fix tied ports
set_fix_multiple_port_nets -all -buffer_constants [current_design]

# ============================================================
# Timing check before compile
# ============================================================
check_timing

# ============================================================
# Compile
# ============================================================
compile_ultra -no_autoungroup

# ============================================================
# Reports
# ============================================================


report_timing  -path full -delay max -nworst 5 -max_paths 10 \
               > ./reports/microprocessor_timing.rpt

report_area    > ./reports/microprocessor_area.rpt
report_power   > ./reports/microprocessor_power.rpt
report_qor     > ./reports/microprocessor_qor.rpt

report_constraint -all_violators \
               > ./reports/microprocessor_violations.rpt

# ============================================================
# Outputs
# ============================================================
write -f verilog -h -output ./reports/microprocessor_netlist.v
write_sdc                   ./reports/microprocessor_constraints.sdc