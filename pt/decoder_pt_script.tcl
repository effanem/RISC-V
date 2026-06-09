set DESIGN_REF_PATH "/home/synopsys/installs/LIBRARIES/SAED14_EDK"

set TARGET_LIBRARY_FILES "\
$DESIGN_REF_PATH/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db"

set LINK_LIBRARY_FILES    "* $TARGET_LIBRARY_FILES"


set link_library  $LINK_LIBRARY_FILES 
set target_library $TARGET_LIBRARY_FILES

read_verilog {../dc/reports/decoder_netlist.v}

current_design decode


link

source {../dc/reports/decoder_constraints.sdc}
check_timing

update_timing -full

report_timing > ./reports/decoder_timing.rpt
report_timing -delay_type min > ./reports/decoder_delay_type_min.rpt
report_analysis_coverage > ./reports/decoder_coverage

    


report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] > reports/timing.rpt

report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins] > reports/su.timing.rpt

report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins] -delay_type min > reports/hold.timing.rpt

report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> reports/timing.rpt

report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> reports/timing.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max >> reports/timing.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min >> reports/timing.rpt


report_timing -transition_time -capacitance -nets -input_pins -from \
[all_registers -clock_pins] -to [all_registers -data_pins] > reports/timing.tran.cap.rpt
    
