# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/.Xil/Vivado-7388-Lucifer-Morning-Star/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog {
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Program_Counter.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Data_Memory.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Main_Decoder.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Instruction_Memory.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/ALU.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Register_File.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Memory_Cycle.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Sign_Extend.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Execute_Cycle.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Control_Unit_Top.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/ALU_Decoder.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/PC_Adder.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Mux_2_by_1.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Fetch_Cycle.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Adder.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Decode_Cycle.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Mux_3_by_1.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/WriteBack_Cycle.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Five_Stage_Pipeline_Top.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Hazard_Unit.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Controller.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Slow_Clock.v
      D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/Pipline_Five_v_2.0.srcs/sources_1/new/Multplex_Reg_Disp.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top Pipeline_top
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "D:/UNI/FYP/FYP--Risc-V-32-bit-Matrix-Mac/Project/Pipline_Five_v_2.0/.Xil/Vivado-7388-Lucifer-Morning-Star/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
