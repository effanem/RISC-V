###################################################################

# Created by write_sdc on Fri Mar 13 18:08:28 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_wire_load_mode top
set_wire_load_model -name 8000 -library saed14rvt_base_ff0p715v125c
set_max_transition 0.5 [current_design]
set_max_capacitance 100 [current_design]
set_max_fanout 200 [current_design]
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
set_clock_latency 1.5  [get_clocks clk]
set_clock_uncertainty 0.3  [get_clocks clk]
set_clock_transition -max -rise 0.4 [get_clocks clk]
set_clock_transition -max -fall 0.4 [get_clocks clk]
set_clock_transition -min -rise 0.4 [get_clocks clk]
set_clock_transition -min -fall 0.4 [get_clocks clk]
group_path -name INPUTS  -from [list [get_ports clk] [get_ports rst] [get_ports {instruction[31]}]     \
[get_ports {instruction[30]}] [get_ports {instruction[29]}] [get_ports         \
{instruction[28]}] [get_ports {instruction[27]}] [get_ports {instruction[26]}] \
[get_ports {instruction[25]}] [get_ports {instruction[24]}] [get_ports         \
{instruction[23]}] [get_ports {instruction[22]}] [get_ports {instruction[21]}] \
[get_ports {instruction[20]}] [get_ports {instruction[19]}] [get_ports         \
{instruction[18]}] [get_ports {instruction[17]}] [get_ports {instruction[16]}] \
[get_ports {instruction[15]}] [get_ports {instruction[14]}] [get_ports         \
{instruction[13]}] [get_ports {instruction[12]}] [get_ports {instruction[11]}] \
[get_ports {instruction[10]}] [get_ports {instruction[9]}] [get_ports          \
{instruction[8]}] [get_ports {instruction[7]}] [get_ports {instruction[6]}]    \
[get_ports {instruction[5]}] [get_ports {instruction[4]}] [get_ports           \
{instruction[3]}] [get_ports {instruction[2]}] [get_ports {instruction[1]}]    \
[get_ports {instruction[0]}]]
group_path -name REGS  -from [list [get_cells u_data_memory/u_memory/mem] [get_cells                 \
u_data_memory/valid_reg] [get_cells                                            \
{u_core/u_executepipeline/alu_result_reg[0]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[1]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[2]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[3]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[4]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[5]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[6]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[7]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[8]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[9]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[10]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[11]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[12]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[13]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[14]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[15]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[16]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[17]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[18]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[19]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[20]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[21]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[22]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[23]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[24]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[25]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[26]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[27]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[28]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[29]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[30]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[31]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[7]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[8]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[9]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[10]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[11]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[12]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[13]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[14]}] [get_cells                     \
u_core/u_executepipeline/store_reg] [get_cells                                 \
u_core/u_executepipeline/load_reg] [get_cells                                  \
{u_core/u_decodepipeline/instruction_reg[7]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[8]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[9]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[10]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[11]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[12]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[13]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[14]}] [get_cells                      \
{u_core/u_decodepipeline/opb_mux_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[3]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[4]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[5]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[6]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[7]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[8]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[9]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[10]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[11]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[12]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[13]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[14]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[15]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[16]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[17]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[18]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[19]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[20]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[21]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[22]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[23]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[24]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[25]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[26]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[27]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[28]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[29]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[30]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[31]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[3]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[4]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[5]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[6]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[7]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[8]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[9]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[10]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[11]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[12]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[13]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[14]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[15]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[16]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[17]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[18]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[19]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[20]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[21]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[22]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[23]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[24]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[25]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[26]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[27]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[28]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[29]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[30]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[31]}] [get_cells                          \
{u_core/u_decodepipeline/alu_con_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[3]}] [get_cells                           \
u_core/u_decodepipeline/branch_res_reg] [get_cells                             \
u_core/u_decodepipeline/nextsel_reg] [get_cells                                \
u_core/u_decodepipeline/jalr_reg] [get_cells u_core/u_decodepipeline/s_reg]    \
[get_cells u_core/u_decodepipeline/l_reg] [get_cells                           \
{u_core/u_decodepipeline/rs2_reg[0]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[1]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[2]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[3]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[4]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[0]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[1]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[2]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[3]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[4]}] [get_cells                               \
{u_core/u_fetchpipeline/instruc_reg[0]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[1]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[2]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[3]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[4]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[5]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[6]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[7]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[8]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[9]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[10]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[11]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[12]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[13]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[14]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[15]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[16]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[17]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[18]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[19]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[20]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[21]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[22]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[23]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[24]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[25]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[26]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[27]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[28]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[29]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[30]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[31]}] [get_cells                           \
{u_core/u_fetchpipeline/pre_address_reg[0]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[1]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[2]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[3]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[4]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[5]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[6]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[7]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[8]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[9]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[10]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[11]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[12]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[13]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[14]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[15]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[16]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[17]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[18]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[19]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[20]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[21]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[22]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[23]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[24]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[25]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[26]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[27]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[28]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[29]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[30]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[31]}] [get_cells                       \
u_core/u_fetchpipeline/flush_pipeline2_reg] [get_cells                         \
u_core/u_fetchpipeline/flush_pipeline_reg] [get_cells                          \
{u_core/u_fetchstage/u_pc0/pre_address_reg[0]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[1]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[2]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[3]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[4]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[5]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[6]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[7]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[8]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[9]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[10]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[11]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[12]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[13]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[14]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[15]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[16]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[17]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[18]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[19]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[20]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[21]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[22]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[23]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[24]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[25]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[26]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[27]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[28]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[29]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[30]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[31]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[0]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[1]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[2]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[3]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[4]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[5]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[6]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[7]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[8]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[9]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[10]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[11]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[12]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[13]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[14]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[15]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[16]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[17]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[18]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[19]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[20]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[21]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[22]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[23]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[24]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[25]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[26]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[27]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[28]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[29]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[30]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[31]}] [get_cells                    \
u_instruction_memory/u_memory/mem]]  -to [list [get_cells u_data_memory/u_memory/mem] [get_cells                   \
u_data_memory/valid_reg] [get_cells                                            \
{u_core/u_executepipeline/alu_result_reg[0]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[1]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[2]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[3]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[4]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[5]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[6]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[7]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[8]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[9]}] [get_cells                       \
{u_core/u_executepipeline/alu_result_reg[10]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[11]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[12]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[13]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[14]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[15]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[16]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[17]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[18]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[19]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[20]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[21]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[22]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[23]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[24]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[25]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[26]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[27]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[28]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[29]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[30]}] [get_cells                      \
{u_core/u_executepipeline/alu_result_reg[31]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[7]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[8]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[9]}] [get_cells                      \
{u_core/u_executepipeline/instruction_reg[10]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[11]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[12]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[13]}] [get_cells                     \
{u_core/u_executepipeline/instruction_reg[14]}] [get_cells                     \
u_core/u_executepipeline/store_reg] [get_cells                                 \
u_core/u_executepipeline/load_reg] [get_cells                                  \
{u_core/u_decodepipeline/instruction_reg[7]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[8]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[9]}] [get_cells                       \
{u_core/u_decodepipeline/instruction_reg[10]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[11]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[12]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[13]}] [get_cells                      \
{u_core/u_decodepipeline/instruction_reg[14]}] [get_cells                      \
{u_core/u_decodepipeline/opb_mux_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[3]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[4]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[5]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[6]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[7]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[8]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[9]}] [get_cells                           \
{u_core/u_decodepipeline/opb_mux_reg[10]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[11]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[12]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[13]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[14]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[15]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[16]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[17]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[18]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[19]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[20]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[21]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[22]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[23]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[24]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[25]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[26]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[27]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[28]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[29]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[30]}] [get_cells                          \
{u_core/u_decodepipeline/opb_mux_reg[31]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[3]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[4]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[5]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[6]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[7]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[8]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[9]}] [get_cells                           \
{u_core/u_decodepipeline/opa_mux_reg[10]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[11]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[12]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[13]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[14]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[15]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[16]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[17]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[18]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[19]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[20]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[21]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[22]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[23]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[24]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[25]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[26]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[27]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[28]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[29]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[30]}] [get_cells                          \
{u_core/u_decodepipeline/opa_mux_reg[31]}] [get_cells                          \
{u_core/u_decodepipeline/alu_con_reg[0]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[1]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[2]}] [get_cells                           \
{u_core/u_decodepipeline/alu_con_reg[3]}] [get_cells                           \
u_core/u_decodepipeline/branch_res_reg] [get_cells                             \
u_core/u_decodepipeline/nextsel_reg] [get_cells                                \
u_core/u_decodepipeline/jalr_reg] [get_cells u_core/u_decodepipeline/s_reg]    \
[get_cells u_core/u_decodepipeline/l_reg] [get_cells                           \
{u_core/u_decodepipeline/rs2_reg[0]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[1]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[2]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[3]}] [get_cells                               \
{u_core/u_decodepipeline/rs2_reg[4]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[0]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[1]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[2]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[3]}] [get_cells                               \
{u_core/u_decodepipeline/rs1_reg[4]}] [get_cells                               \
{u_core/u_fetchpipeline/instruc_reg[0]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[1]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[2]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[3]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[4]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[5]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[6]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[7]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[8]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[9]}] [get_cells                            \
{u_core/u_fetchpipeline/instruc_reg[10]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[11]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[12]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[13]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[14]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[15]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[16]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[17]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[18]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[19]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[20]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[21]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[22]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[23]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[24]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[25]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[26]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[27]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[28]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[29]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[30]}] [get_cells                           \
{u_core/u_fetchpipeline/instruc_reg[31]}] [get_cells                           \
{u_core/u_fetchpipeline/pre_address_reg[0]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[1]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[2]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[3]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[4]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[5]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[6]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[7]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[8]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[9]}] [get_cells                        \
{u_core/u_fetchpipeline/pre_address_reg[10]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[11]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[12]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[13]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[14]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[15]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[16]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[17]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[18]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[19]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[20]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[21]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[22]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[23]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[24]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[25]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[26]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[27]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[28]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[29]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[30]}] [get_cells                       \
{u_core/u_fetchpipeline/pre_address_reg[31]}] [get_cells                       \
u_core/u_fetchpipeline/flush_pipeline2_reg] [get_cells                         \
u_core/u_fetchpipeline/flush_pipeline_reg] [get_cells                          \
{u_core/u_fetchstage/u_pc0/pre_address_reg[0]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[1]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[2]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[3]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[4]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[5]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[6]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[7]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[8]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[9]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/pre_address_reg[10]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[11]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[12]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[13]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[14]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[15]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[16]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[17]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[18]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[19]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[20]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[21]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[22]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[23]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[24]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[25]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[26]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[27]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[28]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[29]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[30]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/pre_address_reg[31]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[0]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[1]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[2]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[3]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[4]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[5]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[6]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[7]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[8]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[9]}] [get_cells                     \
{u_core/u_fetchstage/u_pc0/address_out_reg[10]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[11]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[12]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[13]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[14]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[15]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[16]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[17]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[18]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[19]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[20]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[21]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[22]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[23]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[24]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[25]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[26]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[27]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[28]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[29]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[30]}] [get_cells                    \
{u_core/u_fetchstage/u_pc0/address_out_reg[31]}] [get_cells                    \
u_instruction_memory/u_memory/mem]]
set_input_delay -clock clk  -max 1  [get_ports rst]
set_input_delay -clock clk  -max 1  [get_ports {instruction[31]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[30]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[29]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[28]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[27]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[26]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[25]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[24]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[23]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[22]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[21]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[20]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[19]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[18]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[17]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[16]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[15]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[14]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[13]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[12]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[11]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[10]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[9]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[8]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[7]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[6]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[5]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[4]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[3]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[2]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[1]}]
set_input_delay -clock clk  -max 1  [get_ports {instruction[0]}]
