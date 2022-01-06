# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Project/Vivado/DigitalPiano/DigitalPiano.cache/wt [current_project]
set_property parent.project_path D:/Project/Vivado/DigitalPiano/DigitalPiano.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_0/sine.coe
add_files D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_2/icon.coe
add_files D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_1/logo.coe
add_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_3/statementX.coe
add_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_4/statementY.coe
add_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_5/sawtooth.coe
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_2/dist_mem_gen_2.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_2/dist_mem_gen_2.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_3/dist_mem_gen_3.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_3/dist_mem_gen_3.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_4/dist_mem_gen_4.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_4/dist_mem_gen_4.dcp]
add_files -quiet d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_5/dist_mem_gen_5.dcp
set_property used_in_implementation false [get_files d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_5/dist_mem_gen_5.dcp]
read_verilog -library xil_defaultlib {
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/debouncer.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/Pixel_Mapping.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/PS2.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/PWMDriver.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/Keyboard.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/Controller_FSM.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/VGA.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/Single_Note.v
  D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/new/top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/constrs_1/new/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/constrs_1/new/Nexys4DDR_Master.xdc]


synth_design -top top -part xc7a100tcsg324-1


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
