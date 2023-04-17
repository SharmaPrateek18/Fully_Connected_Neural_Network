#Cd to ....../FNN
#Launch Genus using the command: genus -legacy_ui 

#Start typing in the commands from rc_script.tcl one at a time 
#Or To source the whole script file, source <filename.tcl>

#/media/disk1/tools/Cadence/Cadence_lib/UMC65nm_PDK/STDCELLS/synopsys/ccs/uk65lscllmvbbr_120c25_tc_ccs.lib

#Step1: Set library paths
#rm designs/*
set_attr init_lib_search_path /media/disk1/tools/Cadence/Cadence_lib/UMC65nm_PDK/STDCELLS/synopsys/ccs/
set_attr hdl_search_path ./RTL_Files/
set_attr library uk65lscllmvbbr_120c25_tc_ccs.lib

#Step 2: Read netlist
read_hdl -sv top_FNN.sv
read_hdl -sv include.sv
read_hdl -sv Layer1.sv
read_hdl -sv Layer2.sv
read_hdl -sv Layer3.sv
read_hdl -sv Layer4.sv
read_hdl -sv maxFinder.sv
read_hdl -sv Neuron_1_0.sv
read_hdl -sv Neuron_1_1.sv
read_hdl -sv Neuron_1_2.sv
read_hdl -sv Neuron_1_3.sv
read_hdl -sv Neuron_1_4.sv
read_hdl -sv Neuron_1_5.sv
read_hdl -sv Neuron_1_6.sv
read_hdl -sv Neuron_1_7.sv
read_hdl -sv Neuron_1_8.sv
read_hdl -sv Neuron_1_9.sv
read_hdl -sv Neuron_1_10.sv
read_hdl -sv Neuron_1_11.sv
read_hdl -sv Neuron_1_12.sv
read_hdl -sv Neuron_1_13.sv
read_hdl -sv Neuron_1_14.sv
read_hdl -sv Neuron_1_15.sv
read_hdl -sv Neuron_1_16.sv
read_hdl -sv Neuron_1_17.sv
read_hdl -sv Neuron_1_18.sv
read_hdl -sv Neuron_1_19.sv
read_hdl -sv Neuron_1_20.sv
read_hdl -sv Neuron_1_21.sv
read_hdl -sv Neuron_1_22.sv
read_hdl -sv Neuron_1_23.sv
read_hdl -sv Neuron_1_24.sv
read_hdl -sv Neuron_1_25.sv
read_hdl -sv Neuron_1_26.sv
read_hdl -sv Neuron_1_27.sv
read_hdl -sv Neuron_1_28.sv
read_hdl -sv Neuron_1_29.sv
read_hdl -sv Neuron_2_0.sv
read_hdl -sv Neuron_2_1.sv
read_hdl -sv Neuron_2_2.sv
read_hdl -sv Neuron_2_3.sv
read_hdl -sv Neuron_2_4.sv
read_hdl -sv Neuron_2_5.sv
read_hdl -sv Neuron_2_6.sv
read_hdl -sv Neuron_2_7.sv
read_hdl -sv Neuron_2_8.sv
read_hdl -sv Neuron_2_9.sv
read_hdl -sv Neuron_2_10.sv
read_hdl -sv Neuron_2_11.sv
read_hdl -sv Neuron_2_12.sv
read_hdl -sv Neuron_2_13.sv
read_hdl -sv Neuron_2_14.sv
read_hdl -sv Neuron_2_15.sv
read_hdl -sv Neuron_2_16.sv
read_hdl -sv Neuron_2_17.sv
read_hdl -sv Neuron_2_18.sv
read_hdl -sv Neuron_2_19.sv
read_hdl -sv Neuron_2_20.sv
read_hdl -sv Neuron_2_21.sv
read_hdl -sv Neuron_2_22.sv
read_hdl -sv Neuron_2_23.sv
read_hdl -sv Neuron_2_24.sv
read_hdl -sv Neuron_2_25.sv
read_hdl -sv Neuron_2_26.sv
read_hdl -sv Neuron_2_27.sv
read_hdl -sv Neuron_2_28.sv
read_hdl -sv Neuron_2_29.sv
read_hdl -sv Neuron_3_0.sv
read_hdl -sv Neuron_3_1.sv
read_hdl -sv Neuron_3_2.sv
read_hdl -sv Neuron_3_3.sv
read_hdl -sv Neuron_3_4.sv
read_hdl -sv Neuron_3_5.sv
read_hdl -sv Neuron_3_6.sv
read_hdl -sv Neuron_3_7.sv
read_hdl -sv Neuron_3_8.sv
read_hdl -sv Neuron_3_9.sv
read_hdl -sv Neuron_4_0.sv
read_hdl -sv Neuron_4_1.sv
read_hdl -sv Neuron_4_2.sv
read_hdl -sv Neuron_4_3.sv
read_hdl -sv Neuron_4_4.sv
read_hdl -sv Neuron_4_5.sv
read_hdl -sv Neuron_4_6.sv
read_hdl -sv Neuron_4_7.sv
read_hdl -sv Neuron_4_8.sv
read_hdl -sv Neuron_4_9.sv
read_hdl -sv W_Mem_1_0.sv
read_hdl -sv W_Mem_1_1.sv
read_hdl -sv W_Mem_1_2.sv
read_hdl -sv W_Mem_1_3.sv
read_hdl -sv W_Mem_1_4.sv
read_hdl -sv W_Mem_1_5.sv
read_hdl -sv W_Mem_1_6.sv
read_hdl -sv W_Mem_1_7.sv
read_hdl -sv W_Mem_1_8.sv
read_hdl -sv W_Mem_1_9.sv
read_hdl -sv W_Mem_1_10.sv
read_hdl -sv W_Mem_1_11.sv
read_hdl -sv W_Mem_1_12.sv
read_hdl -sv W_Mem_1_13.sv
read_hdl -sv W_Mem_1_14.sv
read_hdl -sv W_Mem_1_15.sv
read_hdl -sv W_Mem_1_16.sv
read_hdl -sv W_Mem_1_17.sv
read_hdl -sv W_Mem_1_18.sv
read_hdl -sv W_Mem_1_19.sv
read_hdl -sv W_Mem_1_20.sv
read_hdl -sv W_Mem_1_21.sv
read_hdl -sv W_Mem_1_22.sv
read_hdl -sv W_Mem_1_23.sv
read_hdl -sv W_Mem_1_24.sv
read_hdl -sv W_Mem_1_25.sv
read_hdl -sv W_Mem_1_26.sv
read_hdl -sv W_Mem_1_27.sv
read_hdl -sv W_Mem_1_28.sv
read_hdl -sv W_Mem_1_29.sv
read_hdl -sv W_Mem_2_0.sv
read_hdl -sv W_Mem_2_1.sv
read_hdl -sv W_Mem_2_2.sv
read_hdl -sv W_Mem_2_3.sv
read_hdl -sv W_Mem_2_4.sv
read_hdl -sv W_Mem_2_5.sv
read_hdl -sv W_Mem_2_6.sv
read_hdl -sv W_Mem_2_7.sv
read_hdl -sv W_Mem_2_8.sv
read_hdl -sv W_Mem_2_9.sv
read_hdl -sv W_Mem_2_10.sv
read_hdl -sv W_Mem_2_11.sv
read_hdl -sv W_Mem_2_12.sv
read_hdl -sv W_Mem_2_13.sv
read_hdl -sv W_Mem_2_14.sv
read_hdl -sv W_Mem_2_15.sv
read_hdl -sv W_Mem_2_16.sv
read_hdl -sv W_Mem_2_17.sv
read_hdl -sv W_Mem_2_18.sv
read_hdl -sv W_Mem_2_19.sv
read_hdl -sv W_Mem_2_20.sv
read_hdl -sv W_Mem_2_21.sv
read_hdl -sv W_Mem_2_22.sv
read_hdl -sv W_Mem_2_23.sv
read_hdl -sv W_Mem_2_24.sv
read_hdl -sv W_Mem_2_25.sv
read_hdl -sv W_Mem_2_26.sv
read_hdl -sv W_Mem_2_27.sv
read_hdl -sv W_Mem_2_28.sv
read_hdl -sv W_Mem_2_29.sv
read_hdl -sv W_Mem_3_0.sv
read_hdl -sv W_Mem_3_1.sv
read_hdl -sv W_Mem_3_2.sv
read_hdl -sv W_Mem_3_3.sv
read_hdl -sv W_Mem_3_4.sv
read_hdl -sv W_Mem_3_5.sv
read_hdl -sv W_Mem_3_6.sv
read_hdl -sv W_Mem_3_7.sv
read_hdl -sv W_Mem_3_8.sv
read_hdl -sv W_Mem_3_9.sv
read_hdl -sv W_Mem_4_0.sv
read_hdl -sv W_Mem_4_1.sv
read_hdl -sv W_Mem_4_2.sv
read_hdl -sv W_Mem_4_3.sv
read_hdl -sv W_Mem_4_4.sv
read_hdl -sv W_Mem_4_5.sv
read_hdl -sv W_Mem_4_6.sv
read_hdl -sv W_Mem_4_7.sv
read_hdl -sv W_Mem_4_8.sv
read_hdl -sv W_Mem_4_9.sv
read_hdl -sv ReLU.sv
read_hdl -sv Sig_ROM.sv
read_hdl -sv Weight_Memory.sv

#Step 3: Elaborate/connect all modules
elaborate
set_top_module top_FNN
# elaborate looks for undefined modules in the directories specified through the -libpath option

#gui_show 
#Check schematic by clicking on + --> Close --> Hide GUI (do not hit exit)
#Step 4: Read constraints
read_sdc constraints/constraints_FNN.sdc
#This is part of sdc: create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"] --> 2--> ns
#Slack is in ps


#Step 4: Synthesise the  design to generic gates and set the effort level
set_attr syn_generic_effort high
syn_generic

#gui_show
#suspend - to stop here and observe the results


#syn_map: Maps  the  design  to  the  cells  described in the supplied technology library and performs logic optimization.
syn_map

#Step 5: Report results before optimisation
#report_power >power.txt
#gui_show
report_gates 
#suspend

#Step 6: Optimise and run synthesis- key step
#Performs  gate  level  optimization to improve timing on critical paths
set_attr syn_opt_effort high
syn_opt

#Step 7: Report results after optimisation
report_gates 
report_power 
report_timing

#Step 8 Check design for timing errors
check_design > ./Outputs/Text_Files/design_check.txt
#suspend

#Step 9: Write out synthesised netlist and constraints- important output
write_hdl > ./Outputs/Synthesized_Netlist/hdl_synthesis_FNN.v
write_sdc > ./Outputs/SDC/FNN_sdc.sdc  
write_sdf > ./Outputs/SDF/FNN_sdf.sdf

#Step 10: Report final results
report_gates > ./Outputs/Text_Files/gates.txt
report_area > ./Outputs/Text_Files/area.txt
report_power > ./Outputs/Text_Files/power.txt
report_timing > ./Outputs/Text_Files/timing.txt
#suspend  --> Change constraints --clock, redo read_hdc, syn_generic, syn_map, syn_opt and report_timing --> to check slack.


#write_hdl > FNN_netlist.v
#write_sdc > FNN_sdc.sdc  

#suspend
#write_template -simple -outfile simple_template.txt
#write_template -power -outfile template_power.tcl
#write_template -area -outfile template_area.tcl
#write_template -full -outfile template_full.tcl
#write_template -retime -outfile template_retime.tcl

#Hit quit to exit Genus. Do not do Ctrl+C, you will be holding up licenses
