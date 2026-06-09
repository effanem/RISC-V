
read_db -tech /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db
read_db /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_SRAM/liberty/nldm/saed14sram_ff0p715v125c.db

set_mismatch_message_filter -warn FMR_VLOG-100
read_verilog -r ../vcs/review2/adder.v
read_verilog -r ../vcs/review2/alu.v
read_verilog -r ../vcs/review2/branch.v
read_verilog -r ../vcs/review2/control_decoder.v
read_verilog -r ../vcs/review2/control_unit.v
read_verilog -r ../vcs/review2/data_memory_top.v
read_verilog -r ../vcs/review2/decode_pipe.v
read_verilog -r ../vcs/review2/Decode.v
read_verilog -r ../vcs/review2/execute_pipe.v
read_verilog -r ../vcs/review2/Execute.v
read_verilog -r ../vcs/review2/fetch_pipe.v
read_verilog -r ../vcs/review2/Fetch.v
read_verilog -r ../vcs/review2/immediate_gen.v
read_verilog -r ../vcs/review2/instruc_mem_top.v
read_verilog -r ../vcs/review2/memory.v
read_verilog -r ../vcs/review2/Memory1.v
read_verilog -r ../vcs/review2/memstage_pipe.v
read_verilog -r ../vcs/review2/mux1_2.v
read_verilog -r ../vcs/review2/mux2_4.v
read_verilog -r ../vcs/review2/mux3_8.v
read_verilog -r ../vcs/review2/program_counter.v
read_verilog -r ../vcs/review2/register_file.v
read_verilog -r ../vcs/review2/type_decoder.v
read_verilog -r ../vcs/review2/wrapper_memory.v
read_verilog -r ../vcs/review2/Write_back.v
read_verilog -r ../vcs/review2/Core.v
read_verilog -r ../vcs/review2/Microprocessor.v

set_top r:/WORK/microprocessor

read_verilog -i ../dc/reports/microprocessor_netlist.v

set_top i:/WORK/microprocessor




match

verify

report_designs > ./microprocessor_design_report.rpt

report_matched_points > ./microprocessor_matched_point.rpt

report_unmatched_points > ./microprocessor_unmatched_point.rpt

report_unverified_points > ./microprocessor_unverified_point.rpt


