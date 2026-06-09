set link_library  "* /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db \
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/cg/saed14rvt_cg_ff0p715v125c.db"

set target_library "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db \
/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/cg/saed14rvt_cg_ff0p715v125c.db"

create_lib -ref_libs "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_base_frame_timing.ndm" -technology "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tf/saed14nm_1p9m.tf" ./lib

read_verilog {../dc/reports/decoder_netlist.v}

current_design decoder

link

save_lib -as post_import_design

read_parasitic_tech -tlup "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tlup/saed14nm_1p9m_Cmax.tlup" -layermap "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/map/saed14nm_tf_itf_tluplus.map" -name worst_para

read_parasitic_tech -tlup "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tlup/saed14nm_1p9m_Cmin.tlup" -layermap "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/map/saed14nm_tf_itf_tluplus.map" -name best_para


remove_scenarios -all
remove_modes -all
remove_corners -all

create_corner slow
create_corner fast

read_parasitic_tech \
	-tlup "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tlup/saed14nm_1p9m_Cmin.tlup" \
	-layermap "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/map/saed14nm_tf_itf_tluplus.map" \
	-name tlup_min

read_parasitic_tech \
	-tlup "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tlup/saed14nm_1p9m_Cmax.tlup" \
	-layermap "/home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/map/saed14nm_tf_itf_tluplus.map" \
	-name tlup_max

set_parasitics_parameters -early_spec tlup_max -late_spec tlup_max -early_temperature 125 -late_temperature 125 -corners {slow}

set_parasitics_parameters -early_spec tlup_min -late_spec tlup_min -early_temperature 125 -late_temperature 125 -corners {fast}

create_mode func

current_mode func

create_scenario -mode func -corner fast -name func_fast
create_scenario -mode func -corner slow -name func_slow

current_scenario func_slow
read_sdc ../dc/reports/decoder_constraints.sdc

current_scenario func_fast
read_sdc ../dc/reports/decoder_constraints.sdc

set_scenario_status func_slow -none -setup true -hold false -leakage_power true -dynamic_power true -max_transition true -max_capacitance true -min_capacitance false -active true

set_scenario_status func_fast -none -setup false -hold true -leakage_power true -dynamic_power false -max_transition true -max_capacitance false -min_capacitance true -active true

group_path -name MACRO2REG -from [get_cells -physical_context -filter design_type==macro] -to [all_registers ]

group_path -name REG2MACRO -from [all_registers ] -to [get_cells -physical_context -filter design_type==macro]

group_path -name INPUTS -from [all_inputs ]

group_path -name OUTPUTS -to [all_outputs ]

group_path -name REG2REG -from [all_registers ] -to [all_registers ]

save_block -as import_done


check_netlist
check_timing
report_design_mismatch -verbose


initialize_floorplan -core_utilization 0.4 -side_ratio {1 1} -core_offset {1}

# PLACE PINS
set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 2
#set_block_pin_constraints -self -allowed_layers {M3 M4} -sides {2}
#place_pins -ports [all_inputs]
#set_block_pin_constraints -self -allowed_layers {M3 M4} -sides {4}
#place_pins -ports [all_outputs]

place_pins -self


set_app_option -name time.disable_recovery_removal_checks -value false
set_app_option -name time.disable_case_analysis -value false

# fix the ports
set_attribute [get_ports *] physical_status fixed
#set_attribute [get_ports *] physical_status placed
get_attribute [get_ports *] is_fixed

# Creating KEEPOUT MARGIN   for all MACRO {Left,Top, right, bottom}
create_keepout_margin -type hard -outer {1.52 1.672 1.52 1.672} [get_cells -physical_context -filter design_type==macro]

#fix the macros
set_attribute [get_cells -physical_context -filter design_type==macro] physical_status fixed
get_attribute [get_cells -physical_context -filter design_type==macro] is_fixed

#ADD END CAP cells
#set_boundary_cell_rules -top_boundary_cells saed14rvt_tt0p8v125c/SAEDRVT14_CAPT2 -bottom_boundary_cells saed14rvt_tt0p8v125c/SAEDRVT14_CAPB2 -right_boundary_cell saed14rvt_tt0p8v125c/SAEDRVT14_CAPBIN13 -left_boundary_cell saed14rvt_tt0p8v125c/SAEDRVT14_CAPBTAP6 -prefix endcap

set_boundary_cell_rules -right_boundary_cell saed14rvt_base_frame_timing/SAEDRVT14_CAPTIN13 -left_boundary_cell saed14rvt_base_frame_timing/SAEDRVT14_CAPTIN13 -prefix endcap

compile_targeted_boundary_cells -target_objects [get_voltage_areas]

#Add  TAP CELLS
create_tap_cells -lib_cell saed14rvt_base_frame_timing/SAEDRVT14_CAPTTAPP6 -distance 30 -skip_fixed_cells
#
#to check their legality location
check_legality -cells [get_cells bound*]
check_legality -cells [get_cells tap*]

save_block -as floorplan_done

## create the PG nets
create_net -power VDD
create_net -ground VSS

## Create the ports
create_port -direction inout VDD
create_port -direction inout VSS

## Making Logical Connections
connect_pg_net -net VDD [get_ports VDD]
connect_pg_net -net VSS [get_ports VSS]

connect_pg_net -net VDD [get_pins */VDD]
connect_pg_net -net VSS [get_pins */VSS]

## Making Logical Connections
connect_pg_net -net VDD [get_pins -hierarchical "*/VDD"]
connect_pg_net -net VSS [get_pins -hierarchical "*/VSS"]

## Setting up the attribute for TIE cells
set_attribute [get_lib_cells */*TIE*] dont_touch false
set_lib_cell_purpose -include optimization [get_lib_cells */*TIE*]

### creating PG Rails
create_pg_mesh_pattern P_top_two -layers { { {vertical_layer: M9} {width: 0.12} {spacing: interleaving} {pitch: 4.8} {offset: 1.6} {trim : true} } { {horizontal_layer: M8}   {width: 0.12} {spacing: interleaving} {pitch: 4.8} {offset: 1.6}  {trim : true} } }
 set_pg_strategy S_default_vddvss -core -pattern   { {name: P_top_two} {nets:{VSS VDD}} } -extension { {{stop:design_boundary_and_generate_pin}} }
 compile_pg -strategies {S_default_vddvss}

 #### Creating Standard cell rails
 create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1
 set_pg_strategy  std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core
 compile_pg -strategies std_rail_1

 #### Creation of Vias b/w rails and PG straps
 create_pg_vias -nets {VDD VSS} -from_layers M1 -to_layers M9 -drc no_check
 
 # Check physical Connectivity of PG nets
 check_pg_connectivity
 
 #Check for DRC errors in the design,
 check_pg_drc

 ### saving block
 save_block -as powerplan_done

add_buffer [get_nets -of [get_ports *]] [get_lib_cells saed14rvt_base_frame_timing/SAEDRVT14_BUF_4]
magnet_placement [get_ports *]
set_attribute [get_cells eco_cel*] physical_status fixed

check_design -checks pre_placement_stage

set_app_options -name place.coarse.continue_on_missing_scandef -value true

##placement density setting
#Specify a maximum density that controls how densely the tool can place cells in uncongested areas during wire-length-driven placement
set_app_options -name place.coarse.max_density -value 0.6

#Specify a maximum utilization that controls how densely the tool can place cells in less congested areas that surround highly congested areas, so 
#that the cells in the congested areas can be spread out to reduce the congestion
set_app_options -name place.coarse.congestion_driven_max_util -value 0.6

#to analyze all cells have proper or legal location
#analyze_lib_cell_placement -lib_cells *
#for placement of cells
create_placement -congestion

#set RC delay for timings which were set during "DATA PREPARATION"
set_parasitic_parameters -early_spec best_para
set_parasitic_parameters -late_spec worst_para

check_legality -verbose

legalize_placement

#TIMING REPORT 
report_qor -summary

### setting VTH percentage

#set_attribute [get_lib_cells */*LVT*] threshold_voltage_group LVT
#set_threshold_voltage_group_type -type low_vt LVT
#set_multi_vth_constraint -low_vt_percentage 5 -cost cell_count

###Analyzing bufferability of nets
#check_bufferability -nets < give any net name>

### analyzing violations that cannot be fixed
analyze_design_violations

#for OPTIMIZATION

place_opt -to final_opto

connect_pg_net -net VDD [get_pins -hier * -filter "name==VDD"]
connect_pg_net -net VSS [get_pins -hier * -filter "name==VSS"]

save_block -as placement_done



report_qor -summary

report_timing

# Report Utilization
#create_utilization_configuration -scope block core_utilization -include {all}
#report_utilization -config core_utilization


#Logical connection
#connect_pg_net -net VDD [get_pins -hier * -filter "name==VDD"]
#connect_pg_net -net VSS [get_pins -hier * -filter "name==VSS"]

#Before performing CTS, execute the following command and analyze the report
check_design -checks pre_clock_tree_stage
# set NDR
create_routing_rule  clk_rule -widths  {M6 0.112 M7 0.112 } -spacings  {M6 0.112 M7 0.112 }

#check_clock_tree

# specify clock tree cell list
set_lib_cell_purpose -exclude cts [get_lib_cells]
#set_lib_cell_purpose -include cts [get_lib_cells "saed14rvt_tt0p8v125c/SAEDRVT14_BUF_S_4 saed14rvt_tt0p8v125c/SAEDRVT14_BUF_S_6 saed14rvt_tt0p8v125c/SAEDRVT14_BUF_S_8"]

set_lib_cell_purpose -include cts [get_lib_cells "saed14rvt_base_frame_timing/SAEDRVT14_BUF_S_4 saed14rvt_base_frame_timing/SAEDRVT14_BUF_S_6 saed14rvt_base_frame_timing/SAEDRVT14_BUF_S_8"]


#Specify Max fanout
set_app_options -name  cts.common.max_fanout -value 30

# set clock target skew and latency
set_clock_tree_options -clocks [all_clocks] -target_latency 0.050 -target_skew 0.030
#set_clock_tree_options -clocks [get_clocks -filter "is_virtual==false"] -target_latency 0.25 -target_skew 0.03


set_clock_routing_rules -clocks [all_clocks ] -net_type {internal} -rules clk_rule -min_routing_layer M6 -max_routing_layer M7
set_clock_routing_rules -clocks [all_clocks ] -net_type {root} -rules clk_rule -min_routing_layer M6 -max_routing_layer M7

clock_opt

# Make the logical connection of PG nets  for all the standard cells
	
connect_pg_net -net VDD [get_pins -hier * -filter "name == VDD"]
connect_pg_net -net VSS [get_pins -hier * -filter "name == VSS"]

save_block -as cts_done11

report_constraints -all_violators
report_clock_tree_options
report_clock_qor
report_qor -summary
report_timing -delay_type min
report_timing -delay_type max


check_design -checks pre_route_stage
check_routability

# Run the following commands to set the options. 

set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.global.timing_driven -value true

# Define the routing layers that needs to be used  for routing

set_ignored_layers -max_routing_layer M7 -min_routing_layer M2

#Set the options to allow routing below the minimum layer only for  pin  connections.

set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection


#Set the option to use a layer above the maximum layer as soft. This sets the tool to routing above the maximum layer is discouraged, but not disallowed. 

set_app_options -name route.common.global_max_layer_mode -value soft



#Enabling the Crosstalk aware and Delay Calculations

set_app_options -name time.si_enable_analysis -value true

set_app_options -name time.enable_si_timing_windows -value true

set_app_options -name time.enable_ccs_rcv_cap -value true

#route_global
#route_track
#route_detail
route_auto
save_block -as initial_route


route_opt
save_block -as route_done



#Now Lets insert the filler cells 
create_stdcell_fillers  -lib_cells {saed14rvt_base_ff0p715v125c/SAEDRVT14_FILL1}

#Perform Logical Connections
connect_pg_net -net VSS [get_pins */VSS]
connect_pg_net -net VDD [get_pins */VDD]


# Delete the filler cells that have routing DRC violations
remove_stdcell_fillers_with_violation

#Let us verify and report routing design rule checking (DRC) violations, by using "check_routes" command
check_routes

# Set the DRC runset file.
set_app_options -name signoff.check_drc.runset -value /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/icv_drc/saed14nm_1p9m_drc_rules.rs

set_app_options -name signoff.check_drc.max_errors_per_rule -value 1000
set_app_options -name signoff.check_drc.run_dir -value "icv_runsets"
setenv _ICV_RSH_COMMAND ssh
signoff_check_drc

#Run the command to check the LVS,by using "check_lvs" command
check_lvs


set_app_options  -name signoff.create_metal_fill.runset -value /home/synopsys/installs/LIBRARIES/SAED14_EDK/SAED14nm_EDK_TECH_DATA/icv_drc/saed14nm_1p9m_mfill_rules.rs
signoff_create_metal_fill

create_utilization_configuration -scope block core_utilization -include {all}
report_utilization -config core_utilization
save_block -as final

write_sdc -output decoder.sdc
write_sdf decoder.sdf
write_verilog -exclude {all_physical_cells} decoder_physical_netlist.v
write_verilog -include {all} decoder_all_netlist.v
write_parasitics -output decoder
