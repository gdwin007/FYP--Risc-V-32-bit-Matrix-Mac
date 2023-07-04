# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_verilog -library xil_defaultlib E:/UNI/FYP/practice/project_2/project_2.srcs/sources_1/new/ALU.v
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/UNI/FYP/practice/project_2/project_2.cache/wt [current_project]
set_property parent.project_dir E:/UNI/FYP/practice/project_2 [current_project]
catch { write_hwdef -file ALU.hwdef }
synth_design -top ALU -part xc7z020clg484-1
write_checkpoint ALU.dcp
report_utilization -file ALU_utilization_synth.rpt -pb ALU_utilization_synth.pb
