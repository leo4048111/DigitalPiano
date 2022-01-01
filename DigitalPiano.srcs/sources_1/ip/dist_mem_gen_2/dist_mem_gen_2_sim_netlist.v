// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Jan 01 13:03:19 2022
// Host        : DESKTOP-HSAJ1AE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_2/dist_mem_gen_2_sim_netlist.v
// Design      : dist_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_2,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_2
   (a,
    spo);
  input [12:0]a;
  output [3:0]spo;

  wire [12:0]a;
  wire [3:0]spo;
  wire [3:0]NLW_U0_dpo_UNCONNECTED;
  wire [3:0]NLW_U0_qdpo_UNCONNECTED;
  wire [3:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "13" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "8192" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_2.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "4" *) 
  dist_mem_gen_2_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[3:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[3:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[3:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "13" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "8192" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_2.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "4" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module dist_mem_gen_2_dist_mem_gen_v8_0_10
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [12:0]a;
  input [3:0]d;
  input [12:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [3:0]spo;
  output [3:0]dpo;
  output [3:0]qspo;
  output [3:0]qdpo;

  wire \<const0> ;
  wire [12:0]a;
  wire [3:0]spo;

  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_2_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module dist_mem_gen_2_dist_mem_gen_v8_0_10_synth
   (spo,
    a);
  output [3:0]spo;
  input [12:0]a;

  wire [12:0]a;
  wire [3:0]spo;

  dist_mem_gen_2_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_2_rom
   (spo,
    a);
  output [3:0]spo;
  input [12:0]a;

  wire [12:0]a;
  wire [3:0]spo;
  wire \spo[0]_INST_0_i_100_n_0 ;
  wire \spo[0]_INST_0_i_101_n_0 ;
  wire \spo[0]_INST_0_i_102_n_0 ;
  wire \spo[0]_INST_0_i_103_n_0 ;
  wire \spo[0]_INST_0_i_104_n_0 ;
  wire \spo[0]_INST_0_i_105_n_0 ;
  wire \spo[0]_INST_0_i_106_n_0 ;
  wire \spo[0]_INST_0_i_107_n_0 ;
  wire \spo[0]_INST_0_i_108_n_0 ;
  wire \spo[0]_INST_0_i_109_n_0 ;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_110_n_0 ;
  wire \spo[0]_INST_0_i_111_n_0 ;
  wire \spo[0]_INST_0_i_112_n_0 ;
  wire \spo[0]_INST_0_i_113_n_0 ;
  wire \spo[0]_INST_0_i_114_n_0 ;
  wire \spo[0]_INST_0_i_115_n_0 ;
  wire \spo[0]_INST_0_i_116_n_0 ;
  wire \spo[0]_INST_0_i_117_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_40_n_0 ;
  wire \spo[0]_INST_0_i_41_n_0 ;
  wire \spo[0]_INST_0_i_42_n_0 ;
  wire \spo[0]_INST_0_i_43_n_0 ;
  wire \spo[0]_INST_0_i_44_n_0 ;
  wire \spo[0]_INST_0_i_45_n_0 ;
  wire \spo[0]_INST_0_i_46_n_0 ;
  wire \spo[0]_INST_0_i_47_n_0 ;
  wire \spo[0]_INST_0_i_48_n_0 ;
  wire \spo[0]_INST_0_i_49_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_50_n_0 ;
  wire \spo[0]_INST_0_i_51_n_0 ;
  wire \spo[0]_INST_0_i_52_n_0 ;
  wire \spo[0]_INST_0_i_53_n_0 ;
  wire \spo[0]_INST_0_i_54_n_0 ;
  wire \spo[0]_INST_0_i_55_n_0 ;
  wire \spo[0]_INST_0_i_56_n_0 ;
  wire \spo[0]_INST_0_i_57_n_0 ;
  wire \spo[0]_INST_0_i_58_n_0 ;
  wire \spo[0]_INST_0_i_59_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_60_n_0 ;
  wire \spo[0]_INST_0_i_61_n_0 ;
  wire \spo[0]_INST_0_i_62_n_0 ;
  wire \spo[0]_INST_0_i_63_n_0 ;
  wire \spo[0]_INST_0_i_64_n_0 ;
  wire \spo[0]_INST_0_i_65_n_0 ;
  wire \spo[0]_INST_0_i_66_n_0 ;
  wire \spo[0]_INST_0_i_67_n_0 ;
  wire \spo[0]_INST_0_i_68_n_0 ;
  wire \spo[0]_INST_0_i_69_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_70_n_0 ;
  wire \spo[0]_INST_0_i_71_n_0 ;
  wire \spo[0]_INST_0_i_72_n_0 ;
  wire \spo[0]_INST_0_i_73_n_0 ;
  wire \spo[0]_INST_0_i_74_n_0 ;
  wire \spo[0]_INST_0_i_75_n_0 ;
  wire \spo[0]_INST_0_i_76_n_0 ;
  wire \spo[0]_INST_0_i_77_n_0 ;
  wire \spo[0]_INST_0_i_78_n_0 ;
  wire \spo[0]_INST_0_i_79_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_80_n_0 ;
  wire \spo[0]_INST_0_i_81_n_0 ;
  wire \spo[0]_INST_0_i_82_n_0 ;
  wire \spo[0]_INST_0_i_83_n_0 ;
  wire \spo[0]_INST_0_i_84_n_0 ;
  wire \spo[0]_INST_0_i_85_n_0 ;
  wire \spo[0]_INST_0_i_86_n_0 ;
  wire \spo[0]_INST_0_i_87_n_0 ;
  wire \spo[0]_INST_0_i_88_n_0 ;
  wire \spo[0]_INST_0_i_89_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_90_n_0 ;
  wire \spo[0]_INST_0_i_91_n_0 ;
  wire \spo[0]_INST_0_i_92_n_0 ;
  wire \spo[0]_INST_0_i_93_n_0 ;
  wire \spo[0]_INST_0_i_94_n_0 ;
  wire \spo[0]_INST_0_i_95_n_0 ;
  wire \spo[0]_INST_0_i_96_n_0 ;
  wire \spo[0]_INST_0_i_97_n_0 ;
  wire \spo[0]_INST_0_i_98_n_0 ;
  wire \spo[0]_INST_0_i_99_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_100_n_0 ;
  wire \spo[1]_INST_0_i_101_n_0 ;
  wire \spo[1]_INST_0_i_102_n_0 ;
  wire \spo[1]_INST_0_i_103_n_0 ;
  wire \spo[1]_INST_0_i_104_n_0 ;
  wire \spo[1]_INST_0_i_105_n_0 ;
  wire \spo[1]_INST_0_i_106_n_0 ;
  wire \spo[1]_INST_0_i_107_n_0 ;
  wire \spo[1]_INST_0_i_108_n_0 ;
  wire \spo[1]_INST_0_i_109_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_110_n_0 ;
  wire \spo[1]_INST_0_i_111_n_0 ;
  wire \spo[1]_INST_0_i_112_n_0 ;
  wire \spo[1]_INST_0_i_113_n_0 ;
  wire \spo[1]_INST_0_i_114_n_0 ;
  wire \spo[1]_INST_0_i_115_n_0 ;
  wire \spo[1]_INST_0_i_116_n_0 ;
  wire \spo[1]_INST_0_i_117_n_0 ;
  wire \spo[1]_INST_0_i_118_n_0 ;
  wire \spo[1]_INST_0_i_119_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_120_n_0 ;
  wire \spo[1]_INST_0_i_121_n_0 ;
  wire \spo[1]_INST_0_i_122_n_0 ;
  wire \spo[1]_INST_0_i_123_n_0 ;
  wire \spo[1]_INST_0_i_124_n_0 ;
  wire \spo[1]_INST_0_i_125_n_0 ;
  wire \spo[1]_INST_0_i_126_n_0 ;
  wire \spo[1]_INST_0_i_127_n_0 ;
  wire \spo[1]_INST_0_i_128_n_0 ;
  wire \spo[1]_INST_0_i_129_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_130_n_0 ;
  wire \spo[1]_INST_0_i_131_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
  wire \spo[1]_INST_0_i_38_n_0 ;
  wire \spo[1]_INST_0_i_39_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_40_n_0 ;
  wire \spo[1]_INST_0_i_41_n_0 ;
  wire \spo[1]_INST_0_i_42_n_0 ;
  wire \spo[1]_INST_0_i_43_n_0 ;
  wire \spo[1]_INST_0_i_44_n_0 ;
  wire \spo[1]_INST_0_i_45_n_0 ;
  wire \spo[1]_INST_0_i_46_n_0 ;
  wire \spo[1]_INST_0_i_47_n_0 ;
  wire \spo[1]_INST_0_i_48_n_0 ;
  wire \spo[1]_INST_0_i_49_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_50_n_0 ;
  wire \spo[1]_INST_0_i_51_n_0 ;
  wire \spo[1]_INST_0_i_52_n_0 ;
  wire \spo[1]_INST_0_i_53_n_0 ;
  wire \spo[1]_INST_0_i_54_n_0 ;
  wire \spo[1]_INST_0_i_55_n_0 ;
  wire \spo[1]_INST_0_i_56_n_0 ;
  wire \spo[1]_INST_0_i_57_n_0 ;
  wire \spo[1]_INST_0_i_58_n_0 ;
  wire \spo[1]_INST_0_i_59_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_60_n_0 ;
  wire \spo[1]_INST_0_i_61_n_0 ;
  wire \spo[1]_INST_0_i_62_n_0 ;
  wire \spo[1]_INST_0_i_63_n_0 ;
  wire \spo[1]_INST_0_i_64_n_0 ;
  wire \spo[1]_INST_0_i_65_n_0 ;
  wire \spo[1]_INST_0_i_66_n_0 ;
  wire \spo[1]_INST_0_i_67_n_0 ;
  wire \spo[1]_INST_0_i_68_n_0 ;
  wire \spo[1]_INST_0_i_69_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_70_n_0 ;
  wire \spo[1]_INST_0_i_71_n_0 ;
  wire \spo[1]_INST_0_i_72_n_0 ;
  wire \spo[1]_INST_0_i_73_n_0 ;
  wire \spo[1]_INST_0_i_74_n_0 ;
  wire \spo[1]_INST_0_i_75_n_0 ;
  wire \spo[1]_INST_0_i_76_n_0 ;
  wire \spo[1]_INST_0_i_77_n_0 ;
  wire \spo[1]_INST_0_i_78_n_0 ;
  wire \spo[1]_INST_0_i_79_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_80_n_0 ;
  wire \spo[1]_INST_0_i_81_n_0 ;
  wire \spo[1]_INST_0_i_82_n_0 ;
  wire \spo[1]_INST_0_i_83_n_0 ;
  wire \spo[1]_INST_0_i_84_n_0 ;
  wire \spo[1]_INST_0_i_85_n_0 ;
  wire \spo[1]_INST_0_i_86_n_0 ;
  wire \spo[1]_INST_0_i_87_n_0 ;
  wire \spo[1]_INST_0_i_88_n_0 ;
  wire \spo[1]_INST_0_i_89_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_90_n_0 ;
  wire \spo[1]_INST_0_i_91_n_0 ;
  wire \spo[1]_INST_0_i_92_n_0 ;
  wire \spo[1]_INST_0_i_93_n_0 ;
  wire \spo[1]_INST_0_i_94_n_0 ;
  wire \spo[1]_INST_0_i_95_n_0 ;
  wire \spo[1]_INST_0_i_96_n_0 ;
  wire \spo[1]_INST_0_i_97_n_0 ;
  wire \spo[1]_INST_0_i_98_n_0 ;
  wire \spo[1]_INST_0_i_99_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_100_n_0 ;
  wire \spo[2]_INST_0_i_101_n_0 ;
  wire \spo[2]_INST_0_i_102_n_0 ;
  wire \spo[2]_INST_0_i_103_n_0 ;
  wire \spo[2]_INST_0_i_104_n_0 ;
  wire \spo[2]_INST_0_i_105_n_0 ;
  wire \spo[2]_INST_0_i_106_n_0 ;
  wire \spo[2]_INST_0_i_107_n_0 ;
  wire \spo[2]_INST_0_i_108_n_0 ;
  wire \spo[2]_INST_0_i_109_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_110_n_0 ;
  wire \spo[2]_INST_0_i_111_n_0 ;
  wire \spo[2]_INST_0_i_112_n_0 ;
  wire \spo[2]_INST_0_i_113_n_0 ;
  wire \spo[2]_INST_0_i_114_n_0 ;
  wire \spo[2]_INST_0_i_115_n_0 ;
  wire \spo[2]_INST_0_i_116_n_0 ;
  wire \spo[2]_INST_0_i_117_n_0 ;
  wire \spo[2]_INST_0_i_118_n_0 ;
  wire \spo[2]_INST_0_i_119_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_120_n_0 ;
  wire \spo[2]_INST_0_i_121_n_0 ;
  wire \spo[2]_INST_0_i_122_n_0 ;
  wire \spo[2]_INST_0_i_123_n_0 ;
  wire \spo[2]_INST_0_i_124_n_0 ;
  wire \spo[2]_INST_0_i_125_n_0 ;
  wire \spo[2]_INST_0_i_126_n_0 ;
  wire \spo[2]_INST_0_i_127_n_0 ;
  wire \spo[2]_INST_0_i_128_n_0 ;
  wire \spo[2]_INST_0_i_129_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_130_n_0 ;
  wire \spo[2]_INST_0_i_131_n_0 ;
  wire \spo[2]_INST_0_i_132_n_0 ;
  wire \spo[2]_INST_0_i_133_n_0 ;
  wire \spo[2]_INST_0_i_134_n_0 ;
  wire \spo[2]_INST_0_i_135_n_0 ;
  wire \spo[2]_INST_0_i_136_n_0 ;
  wire \spo[2]_INST_0_i_137_n_0 ;
  wire \spo[2]_INST_0_i_138_n_0 ;
  wire \spo[2]_INST_0_i_139_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_140_n_0 ;
  wire \spo[2]_INST_0_i_141_n_0 ;
  wire \spo[2]_INST_0_i_142_n_0 ;
  wire \spo[2]_INST_0_i_143_n_0 ;
  wire \spo[2]_INST_0_i_144_n_0 ;
  wire \spo[2]_INST_0_i_145_n_0 ;
  wire \spo[2]_INST_0_i_146_n_0 ;
  wire \spo[2]_INST_0_i_147_n_0 ;
  wire \spo[2]_INST_0_i_148_n_0 ;
  wire \spo[2]_INST_0_i_149_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_150_n_0 ;
  wire \spo[2]_INST_0_i_151_n_0 ;
  wire \spo[2]_INST_0_i_152_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_41_n_0 ;
  wire \spo[2]_INST_0_i_42_n_0 ;
  wire \spo[2]_INST_0_i_43_n_0 ;
  wire \spo[2]_INST_0_i_44_n_0 ;
  wire \spo[2]_INST_0_i_45_n_0 ;
  wire \spo[2]_INST_0_i_46_n_0 ;
  wire \spo[2]_INST_0_i_47_n_0 ;
  wire \spo[2]_INST_0_i_48_n_0 ;
  wire \spo[2]_INST_0_i_49_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_50_n_0 ;
  wire \spo[2]_INST_0_i_51_n_0 ;
  wire \spo[2]_INST_0_i_52_n_0 ;
  wire \spo[2]_INST_0_i_53_n_0 ;
  wire \spo[2]_INST_0_i_54_n_0 ;
  wire \spo[2]_INST_0_i_55_n_0 ;
  wire \spo[2]_INST_0_i_56_n_0 ;
  wire \spo[2]_INST_0_i_57_n_0 ;
  wire \spo[2]_INST_0_i_58_n_0 ;
  wire \spo[2]_INST_0_i_59_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_60_n_0 ;
  wire \spo[2]_INST_0_i_61_n_0 ;
  wire \spo[2]_INST_0_i_62_n_0 ;
  wire \spo[2]_INST_0_i_63_n_0 ;
  wire \spo[2]_INST_0_i_64_n_0 ;
  wire \spo[2]_INST_0_i_65_n_0 ;
  wire \spo[2]_INST_0_i_66_n_0 ;
  wire \spo[2]_INST_0_i_67_n_0 ;
  wire \spo[2]_INST_0_i_68_n_0 ;
  wire \spo[2]_INST_0_i_69_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_70_n_0 ;
  wire \spo[2]_INST_0_i_71_n_0 ;
  wire \spo[2]_INST_0_i_72_n_0 ;
  wire \spo[2]_INST_0_i_73_n_0 ;
  wire \spo[2]_INST_0_i_74_n_0 ;
  wire \spo[2]_INST_0_i_75_n_0 ;
  wire \spo[2]_INST_0_i_76_n_0 ;
  wire \spo[2]_INST_0_i_77_n_0 ;
  wire \spo[2]_INST_0_i_78_n_0 ;
  wire \spo[2]_INST_0_i_79_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_80_n_0 ;
  wire \spo[2]_INST_0_i_81_n_0 ;
  wire \spo[2]_INST_0_i_82_n_0 ;
  wire \spo[2]_INST_0_i_83_n_0 ;
  wire \spo[2]_INST_0_i_84_n_0 ;
  wire \spo[2]_INST_0_i_85_n_0 ;
  wire \spo[2]_INST_0_i_86_n_0 ;
  wire \spo[2]_INST_0_i_87_n_0 ;
  wire \spo[2]_INST_0_i_88_n_0 ;
  wire \spo[2]_INST_0_i_89_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_90_n_0 ;
  wire \spo[2]_INST_0_i_91_n_0 ;
  wire \spo[2]_INST_0_i_92_n_0 ;
  wire \spo[2]_INST_0_i_93_n_0 ;
  wire \spo[2]_INST_0_i_94_n_0 ;
  wire \spo[2]_INST_0_i_95_n_0 ;
  wire \spo[2]_INST_0_i_96_n_0 ;
  wire \spo[2]_INST_0_i_97_n_0 ;
  wire \spo[2]_INST_0_i_98_n_0 ;
  wire \spo[2]_INST_0_i_99_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_100_n_0 ;
  wire \spo[3]_INST_0_i_101_n_0 ;
  wire \spo[3]_INST_0_i_102_n_0 ;
  wire \spo[3]_INST_0_i_103_n_0 ;
  wire \spo[3]_INST_0_i_104_n_0 ;
  wire \spo[3]_INST_0_i_105_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_37_n_0 ;
  wire \spo[3]_INST_0_i_38_n_0 ;
  wire \spo[3]_INST_0_i_39_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_40_n_0 ;
  wire \spo[3]_INST_0_i_41_n_0 ;
  wire \spo[3]_INST_0_i_42_n_0 ;
  wire \spo[3]_INST_0_i_43_n_0 ;
  wire \spo[3]_INST_0_i_44_n_0 ;
  wire \spo[3]_INST_0_i_45_n_0 ;
  wire \spo[3]_INST_0_i_46_n_0 ;
  wire \spo[3]_INST_0_i_47_n_0 ;
  wire \spo[3]_INST_0_i_48_n_0 ;
  wire \spo[3]_INST_0_i_49_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_50_n_0 ;
  wire \spo[3]_INST_0_i_51_n_0 ;
  wire \spo[3]_INST_0_i_52_n_0 ;
  wire \spo[3]_INST_0_i_53_n_0 ;
  wire \spo[3]_INST_0_i_54_n_0 ;
  wire \spo[3]_INST_0_i_55_n_0 ;
  wire \spo[3]_INST_0_i_56_n_0 ;
  wire \spo[3]_INST_0_i_57_n_0 ;
  wire \spo[3]_INST_0_i_58_n_0 ;
  wire \spo[3]_INST_0_i_59_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_60_n_0 ;
  wire \spo[3]_INST_0_i_61_n_0 ;
  wire \spo[3]_INST_0_i_62_n_0 ;
  wire \spo[3]_INST_0_i_63_n_0 ;
  wire \spo[3]_INST_0_i_64_n_0 ;
  wire \spo[3]_INST_0_i_65_n_0 ;
  wire \spo[3]_INST_0_i_66_n_0 ;
  wire \spo[3]_INST_0_i_67_n_0 ;
  wire \spo[3]_INST_0_i_68_n_0 ;
  wire \spo[3]_INST_0_i_69_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_70_n_0 ;
  wire \spo[3]_INST_0_i_71_n_0 ;
  wire \spo[3]_INST_0_i_72_n_0 ;
  wire \spo[3]_INST_0_i_73_n_0 ;
  wire \spo[3]_INST_0_i_74_n_0 ;
  wire \spo[3]_INST_0_i_75_n_0 ;
  wire \spo[3]_INST_0_i_76_n_0 ;
  wire \spo[3]_INST_0_i_77_n_0 ;
  wire \spo[3]_INST_0_i_78_n_0 ;
  wire \spo[3]_INST_0_i_79_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_80_n_0 ;
  wire \spo[3]_INST_0_i_81_n_0 ;
  wire \spo[3]_INST_0_i_82_n_0 ;
  wire \spo[3]_INST_0_i_83_n_0 ;
  wire \spo[3]_INST_0_i_84_n_0 ;
  wire \spo[3]_INST_0_i_85_n_0 ;
  wire \spo[3]_INST_0_i_86_n_0 ;
  wire \spo[3]_INST_0_i_87_n_0 ;
  wire \spo[3]_INST_0_i_88_n_0 ;
  wire \spo[3]_INST_0_i_89_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_90_n_0 ;
  wire \spo[3]_INST_0_i_91_n_0 ;
  wire \spo[3]_INST_0_i_92_n_0 ;
  wire \spo[3]_INST_0_i_93_n_0 ;
  wire \spo[3]_INST_0_i_94_n_0 ;
  wire \spo[3]_INST_0_i_95_n_0 ;
  wire \spo[3]_INST_0_i_96_n_0 ;
  wire \spo[3]_INST_0_i_97_n_0 ;
  wire \spo[3]_INST_0_i_98_n_0 ;
  wire \spo[3]_INST_0_i_99_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_40_n_0 ),
        .I1(a[4]),
        .I2(\spo[0]_INST_0_i_41_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_42_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00200000000C00C0)) 
    \spo[0]_INST_0_i_100 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000410300)) 
    \spo[0]_INST_0_i_101 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000000100)) 
    \spo[0]_INST_0_i_102 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[0]_INST_0_i_103 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[0]_INST_0_i_103_n_0 ));
  MUXF7 \spo[0]_INST_0_i_104 
       (.I0(\spo[0]_INST_0_i_116_n_0 ),
        .I1(\spo[0]_INST_0_i_117_n_0 ),
        .O(\spo[0]_INST_0_i_104_n_0 ),
        .S(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00680020)) 
    \spo[0]_INST_0_i_105 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[0]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00C1000000300000)) 
    \spo[0]_INST_0_i_106 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00002000000C3400)) 
    \spo[0]_INST_0_i_107 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h0042000000250000)) 
    \spo[0]_INST_0_i_108 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h0000030000200000)) 
    \spo[0]_INST_0_i_109 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_43_n_0 ),
        .I1(\spo[0]_INST_0_i_44_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_45_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_46_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0000080020)) 
    \spo[0]_INST_0_i_110 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0020)) 
    \spo[0]_INST_0_i_111 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0038)) 
    \spo[0]_INST_0_i_112 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .O(\spo[0]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[0]_INST_0_i_113 
       (.I0(a[11]),
        .I1(a[12]),
        .I2(a[10]),
        .O(\spo[0]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h0010303000000000)) 
    \spo[0]_INST_0_i_114 
       (.I0(a[0]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h00040000000E0300)) 
    \spo[0]_INST_0_i_115 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h00080A0003000000)) 
    \spo[0]_INST_0_i_116 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0000368000002000)) 
    \spo[0]_INST_0_i_117 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_47_n_0 ),
        .I1(\spo[0]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_49_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_50_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_51_n_0 ),
        .I1(\spo[0]_INST_0_i_52_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_53_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_54_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_55_n_0 ),
        .I1(\spo[0]_INST_0_i_56_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_57_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_58_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  MUXF7 \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_59_n_0 ),
        .I1(\spo[0]_INST_0_i_60_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_61_n_0 ),
        .I1(\spo[1]_INST_0_i_60_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_62_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_63_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_17 
       (.I0(\spo[0]_INST_0_i_64_n_0 ),
        .I1(\spo[0]_INST_0_i_65_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_66_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_67_n_0 ),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_18 
       (.I0(\spo[0]_INST_0_i_68_n_0 ),
        .I1(\spo[0]_INST_0_i_69_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_70_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_71_n_0 ),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_19 
       (.I0(\spo[0]_INST_0_i_72_n_0 ),
        .I1(\spo[0]_INST_0_i_73_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_74_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_75_n_0 ),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_10_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_11_n_0 ),
        .I4(a[2]),
        .I5(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_20 
       (.I0(\spo[0]_INST_0_i_76_n_0 ),
        .I1(\spo[0]_INST_0_i_77_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_78_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_79_n_0 ),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hE7000000)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_81_n_0 ),
        .I4(a[8]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h080084008000B400)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \spo[0]_INST_0_i_23 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_84_n_0 ),
        .I2(a[0]),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_24 
       (.I0(\spo[2]_INST_0_i_147_n_0 ),
        .I1(\spo[2]_INST_0_i_87_n_0 ),
        .I2(a[1]),
        .I3(\spo[0]_INST_0_i_80_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6610001000200020)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_81_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB88888)) 
    \spo[0]_INST_0_i_26 
       (.I0(\spo[0]_INST_0_i_81_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[0]_INST_0_i_27 
       (.I0(\spo[0]_INST_0_i_82_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_31_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_147_n_0 ),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_28 
       (.I0(\spo[1]_INST_0_i_76_n_0 ),
        .I1(\spo[0]_INST_0_i_83_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_115_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_84_n_0 ),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h5530003000000000)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_15_n_0 ),
        .I4(a[2]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  MUXF7 \spo[0]_INST_0_i_30 
       (.I0(\spo[0]_INST_0_i_85_n_0 ),
        .I1(\spo[0]_INST_0_i_86_n_0 ),
        .O(\spo[0]_INST_0_i_30_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hA0CFA0C000F00000)) 
    \spo[0]_INST_0_i_31 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(\spo[2]_INST_0_i_139_n_0 ),
        .I2(a[1]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFF30003088000000)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_139_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF0000C00C808C808)) 
    \spo[0]_INST_0_i_33 
       (.I0(\spo[2]_INST_0_i_86_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \spo[0]_INST_0_i_34 
       (.I0(\spo[2]_INST_0_i_104_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_94_n_0 ),
        .I3(a[8]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0BBBBF0C08888)) 
    \spo[0]_INST_0_i_35 
       (.I0(\spo[0]_INST_0_i_87_n_0 ),
        .I1(a[4]),
        .I2(\spo[2]_INST_0_i_131_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(\spo[0]_INST_0_i_88_n_0 ),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_104_n_0 ),
        .I1(\spo[0]_INST_0_i_89_n_0 ),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_116_n_0 ),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h3F008F8F3F008080)) 
    \spo[0]_INST_0_i_37 
       (.I0(\spo[2]_INST_0_i_113_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[0]_INST_0_i_90_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_89_n_0 ),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000008000000B800)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_119_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_104_n_0 ),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(\spo[0]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(\spo[0]_INST_0_i_20_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spo[0]_INST_0_i_40 
       (.I0(\spo[2]_INST_0_i_116_n_0 ),
        .I1(\spo[2]_INST_0_i_104_n_0 ),
        .I2(a[1]),
        .I3(\spo[0]_INST_0_i_91_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3000300077FF0000)) 
    \spo[0]_INST_0_i_41 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_115_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0C0AFC0A0C0)) 
    \spo[0]_INST_0_i_42 
       (.I0(\spo[0]_INST_0_i_92_n_0 ),
        .I1(\spo[0]_INST_0_i_93_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[3]_INST_0_i_31_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_42_n_0 ));
  MUXF7 \spo[0]_INST_0_i_43 
       (.I0(\spo[0]_INST_0_i_94_n_0 ),
        .I1(\spo[0]_INST_0_i_95_n_0 ),
        .O(\spo[0]_INST_0_i_43_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_44 
       (.I0(\spo[0]_INST_0_i_96_n_0 ),
        .I1(\spo[1]_INST_0_i_89_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_96_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_147_n_0 ),
        .O(\spo[0]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_45 
       (.I0(\spo[2]_INST_0_i_141_n_0 ),
        .I1(\spo[1]_INST_0_i_93_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_119_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_94_n_0 ),
        .O(\spo[0]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCF000F0BBF000)) 
    \spo[0]_INST_0_i_46 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hF544A00050D55080)) 
    \spo[0]_INST_0_i_47 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hBBF088F000000000)) 
    \spo[0]_INST_0_i_48 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_48_n_0 ));
  MUXF7 \spo[0]_INST_0_i_49 
       (.I0(\spo[0]_INST_0_i_97_n_0 ),
        .I1(\spo[0]_INST_0_i_98_n_0 ),
        .O(\spo[0]_INST_0_i_49_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_21_n_0 ),
        .I1(\spo[0]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_24_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC0C05500)) 
    \spo[0]_INST_0_i_50 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_123_n_0 ),
        .I4(a[8]),
        .O(\spo[0]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h838000000C000C00)) 
    \spo[0]_INST_0_i_51 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80004010)) 
    \spo[0]_INST_0_i_52 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[8]),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0500676705000000)) 
    \spo[0]_INST_0_i_53 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_115_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_89_n_0 ),
        .O(\spo[0]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808080B08080)) 
    \spo[0]_INST_0_i_54 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_54_n_0 ));
  MUXF7 \spo[0]_INST_0_i_55 
       (.I0(\spo[0]_INST_0_i_99_n_0 ),
        .I1(\spo[0]_INST_0_i_100_n_0 ),
        .O(\spo[0]_INST_0_i_55_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hF000000088BB8888)) 
    \spo[0]_INST_0_i_56 
       (.I0(\spo[2]_INST_0_i_115_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h48484848EDE84848)) 
    \spo[0]_INST_0_i_57 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_119_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_57_n_0 ));
  MUXF7 \spo[0]_INST_0_i_58 
       (.I0(\spo[0]_INST_0_i_101_n_0 ),
        .I1(\spo[0]_INST_0_i_102_n_0 ),
        .O(\spo[0]_INST_0_i_58_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hEA44400000800080)) 
    \spo[0]_INST_0_i_59 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_114_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_25_n_0 ),
        .I1(\spo[0]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \spo[0]_INST_0_i_60 
       (.I0(\spo[0]_INST_0_i_88_n_0 ),
        .I1(a[1]),
        .I2(\spo[0]_INST_0_i_103_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_104_n_0 ),
        .O(\spo[0]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88830FF3000)) 
    \spo[0]_INST_0_i_61 
       (.I0(\spo[2]_INST_0_i_114_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_31_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_115_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spo[0]_INST_0_i_62 
       (.I0(\spo[2]_INST_0_i_128_n_0 ),
        .I1(\spo[2]_INST_0_i_147_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_109_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[0]_INST_0_i_63 
       (.I0(\spo[1]_INST_0_i_87_n_0 ),
        .I1(\spo[1]_INST_0_i_91_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_84_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h4800480000FF0000)) 
    \spo[0]_INST_0_i_64 
       (.I0(a[9]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[8]),
        .I3(a[1]),
        .I4(\spo[3]_INST_0_i_31_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hF80B080808080808)) 
    \spo[0]_INST_0_i_65 
       (.I0(\spo[2]_INST_0_i_120_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_81_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_66 
       (.I0(\spo[0]_INST_0_i_105_n_0 ),
        .I1(\spo[1]_INST_0_i_87_n_0 ),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_62_n_0 ),
        .I4(a[0]),
        .I5(\spo[0]_INST_0_i_89_n_0 ),
        .O(\spo[0]_INST_0_i_66_n_0 ));
  MUXF7 \spo[0]_INST_0_i_67 
       (.I0(\spo[0]_INST_0_i_106_n_0 ),
        .I1(\spo[0]_INST_0_i_107_n_0 ),
        .O(\spo[0]_INST_0_i_67_n_0 ),
        .S(a[1]));
  MUXF7 \spo[0]_INST_0_i_68 
       (.I0(\spo[0]_INST_0_i_108_n_0 ),
        .I1(\spo[0]_INST_0_i_109_n_0 ),
        .O(\spo[0]_INST_0_i_68_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'h0FF00000AFCFA0C0)) 
    \spo[0]_INST_0_i_69 
       (.I0(\spo[2]_INST_0_i_90_n_0 ),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[0]_INST_0_i_30_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_32_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3330003088C088C0)) 
    \spo[0]_INST_0_i_70 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_71 
       (.I0(\spo[3]_INST_0_i_33_n_0 ),
        .I1(\spo[2]_INST_0_i_111_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_117_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_147_n_0 ),
        .O(\spo[0]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h05AA000048484848)) 
    \spo[0]_INST_0_i_72 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_86_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_72_n_0 ));
  MUXF7 \spo[0]_INST_0_i_73 
       (.I0(\spo[0]_INST_0_i_110_n_0 ),
        .I1(\spo[0]_INST_0_i_111_n_0 ),
        .O(\spo[0]_INST_0_i_73_n_0 ),
        .S(a[1]));
  LUT5 #(
    .INIT(32'h0B080000)) 
    \spo[0]_INST_0_i_74 
       (.I0(\spo[0]_INST_0_i_112_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_82_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h30FF300030883088)) 
    \spo[0]_INST_0_i_75 
       (.I0(\spo[0]_INST_0_i_113_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_98_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0C00080830000000)) 
    \spo[0]_INST_0_i_76 
       (.I0(\spo[0]_INST_0_i_113_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_76_n_0 ));
  MUXF7 \spo[0]_INST_0_i_77 
       (.I0(\spo[0]_INST_0_i_114_n_0 ),
        .I1(\spo[0]_INST_0_i_115_n_0 ),
        .O(\spo[0]_INST_0_i_77_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hC5A0C00000400040)) 
    \spo[0]_INST_0_i_78 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h8888000030000300)) 
    \spo[0]_INST_0_i_79 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[8]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_33_n_0 ),
        .I1(a[4]),
        .I2(\spo[0]_INST_0_i_34_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_35_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00080010)) 
    \spo[0]_INST_0_i_80 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[0]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h00008C000001B000)) 
    \spo[0]_INST_0_i_81 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h00020000000D3000)) 
    \spo[0]_INST_0_i_82 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000028)) 
    \spo[0]_INST_0_i_83 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[8]),
        .O(\spo[0]_INST_0_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001404)) 
    \spo[0]_INST_0_i_84 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[0]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h000008B000000000)) 
    \spo[0]_INST_0_i_85 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000C10)) 
    \spo[0]_INST_0_i_86 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000030100)) 
    \spo[0]_INST_0_i_87 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0000020001000000)) 
    \spo[0]_INST_0_i_88 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02040000)) 
    \spo[0]_INST_0_i_89 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[0]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_9 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_37_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_38_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_39_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \spo[0]_INST_0_i_90 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .O(\spo[0]_INST_0_i_90_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000048)) 
    \spo[0]_INST_0_i_91 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[0]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004020000)) 
    \spo[0]_INST_0_i_92 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000003C00)) 
    \spo[0]_INST_0_i_93 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h000048000000D000)) 
    \spo[0]_INST_0_i_94 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h0000023000004000)) 
    \spo[0]_INST_0_i_95 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200084)) 
    \spo[0]_INST_0_i_96 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[0]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000500C0)) 
    \spo[0]_INST_0_i_97 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[8]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h0000030000008040)) 
    \spo[0]_INST_0_i_98 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h0004003000030000)) 
    \spo[0]_INST_0_i_99 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(\spo[1]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_37_n_0 ),
        .I1(\spo[1]_INST_0_i_38_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_39_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_40_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \spo[1]_INST_0_i_100 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[9]),
        .O(\spo[1]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00A00010)) 
    \spo[1]_INST_0_i_101 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[1]_INST_0_i_102 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[1]_INST_0_i_103 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h000004C000000800)) 
    \spo[1]_INST_0_i_104 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0210)) 
    \spo[1]_INST_0_i_105 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .O(\spo[1]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00080A000C000000)) 
    \spo[1]_INST_0_i_106 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h000000200B000000)) 
    \spo[1]_INST_0_i_107 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h0010002000000000)) 
    \spo[1]_INST_0_i_108 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003400)) 
    \spo[1]_INST_0_i_109 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_41_n_0 ),
        .I1(\spo[1]_INST_0_i_42_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_43_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_44_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000001C0000000C0)) 
    \spo[1]_INST_0_i_110 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C2900)) 
    \spo[1]_INST_0_i_111 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00001000000C0800)) 
    \spo[1]_INST_0_i_112 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000208)) 
    \spo[1]_INST_0_i_113 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000408)) 
    \spo[1]_INST_0_i_114 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \spo[1]_INST_0_i_115 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0000420000041000)) 
    \spo[1]_INST_0_i_116 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00900000)) 
    \spo[1]_INST_0_i_117 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_117_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000090)) 
    \spo[1]_INST_0_i_118 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001004)) 
    \spo[1]_INST_0_i_119 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_45_n_0 ),
        .I1(\spo[1]_INST_0_i_46_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_47_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_48_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200140)) 
    \spo[1]_INST_0_i_120 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .O(\spo[1]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h00000C2000020900)) 
    \spo[1]_INST_0_i_121 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080300)) 
    \spo[1]_INST_0_i_122 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080C00)) 
    \spo[1]_INST_0_i_123 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000004400)) 
    \spo[1]_INST_0_i_124 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h0020010000000000)) 
    \spo[1]_INST_0_i_125 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h0080010000400000)) 
    \spo[1]_INST_0_i_126 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00200030)) 
    \spo[1]_INST_0_i_127 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_127_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00800040)) 
    \spo[1]_INST_0_i_128 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h08000300)) 
    \spo[1]_INST_0_i_129 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_49_n_0 ),
        .I1(\spo[1]_INST_0_i_50_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_51_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_52_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000430000042000)) 
    \spo[1]_INST_0_i_130 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h0000C20000080100)) 
    \spo[1]_INST_0_i_131 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_53_n_0 ),
        .I1(\spo[1]_INST_0_i_54_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_55_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_56_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  MUXF7 \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_57_n_0 ),
        .I1(\spo[1]_INST_0_i_58_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_16 
       (.I0(\spo[1]_INST_0_i_59_n_0 ),
        .I1(\spo[1]_INST_0_i_60_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_61_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_62_n_0 ),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  MUXF7 \spo[1]_INST_0_i_17 
       (.I0(\spo[1]_INST_0_i_63_n_0 ),
        .I1(\spo[1]_INST_0_i_64_n_0 ),
        .O(\spo[1]_INST_0_i_17_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_18 
       (.I0(\spo[1]_INST_0_i_65_n_0 ),
        .I1(\spo[1]_INST_0_i_66_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_67_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_68_n_0 ),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_19 
       (.I0(\spo[1]_INST_0_i_69_n_0 ),
        .I1(\spo[1]_INST_0_i_70_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_71_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_72_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_10_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_11_n_0 ),
        .I4(a[2]),
        .I5(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[1]_INST_0_i_20 
       (.I0(\spo[1]_INST_0_i_73_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_74_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_75_n_0 ),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hCB000000)) 
    \spo[1]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_81_n_0 ),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCA5FC00040884088)) 
    \spo[1]_INST_0_i_22 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h005F0000C0C0C0C0)) 
    \spo[1]_INST_0_i_23 
       (.I0(a[0]),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_24 
       (.I0(\spo[2]_INST_0_i_147_n_0 ),
        .I1(\spo[3]_INST_0_i_62_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_76_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_25 
       (.I0(\spo[1]_INST_0_i_77_n_0 ),
        .I1(\spo[1]_INST_0_i_76_n_0 ),
        .I2(a[4]),
        .I3(\spo[1]_INST_0_i_78_n_0 ),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_91_n_0 ),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h80000000009030D0)) 
    \spo[1]_INST_0_i_26 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_83_n_0 ),
        .I3(a[9]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  MUXF7 \spo[1]_INST_0_i_27 
       (.I0(\spo[1]_INST_0_i_79_n_0 ),
        .I1(\spo[1]_INST_0_i_80_n_0 ),
        .O(\spo[1]_INST_0_i_27_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hC0000F0080808C80)) 
    \spo[1]_INST_0_i_28 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h4D084808000A0000)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_81_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_15_n_0 ),
        .I4(a[2]),
        .I5(\spo[1]_INST_0_i_16_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB833B80088008800)) 
    \spo[1]_INST_0_i_30 
       (.I0(\spo[1]_INST_0_i_81_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_82_n_0 ),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_102_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  MUXF7 \spo[1]_INST_0_i_31 
       (.I0(\spo[1]_INST_0_i_83_n_0 ),
        .I1(\spo[1]_INST_0_i_84_n_0 ),
        .O(\spo[1]_INST_0_i_31_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'h0066000011100010)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCFC05555CFC00000)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_82_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_94_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_115_n_0 ),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE045404040404040)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[1]),
        .I1(\spo[3]_INST_0_i_31_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4540EFEF45404040)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[4]),
        .I1(\spo[1]_INST_0_i_85_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_86_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[1]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_104_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_87_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_88_n_0 ),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_104_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_115_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_100_n_0 ),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3000300033BB0000)) 
    \spo[1]_INST_0_i_38 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_115_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_39 
       (.I0(\spo[1]_INST_0_i_89_n_0 ),
        .I1(\spo[1]_INST_0_i_90_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_104_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_91_n_0 ),
        .O(\spo[1]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_17_n_0 ),
        .I1(\spo[1]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(\spo[1]_INST_0_i_20_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00201020)) 
    \spo[1]_INST_0_i_40 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_41 
       (.I0(\spo[1]_INST_0_i_76_n_0 ),
        .I1(\spo[2]_INST_0_i_128_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_95_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_92_n_0 ),
        .O(\spo[1]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFA00500050115000)) 
    \spo[1]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h22002200F0FFF000)) 
    \spo[1]_INST_0_i_43 
       (.I0(\spo[2]_INST_0_i_89_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_93_n_0 ),
        .I3(a[1]),
        .I4(\spo[1]_INST_0_i_94_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h40FF400008480848)) 
    \spo[1]_INST_0_i_44 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h80A6000058010000)) 
    \spo[1]_INST_0_i_45 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[10]),
        .I4(\spo[2]_INST_0_i_83_n_0 ),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[1]_INST_0_i_46 
       (.I0(\spo[1]_INST_0_i_95_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_47 
       (.I0(\spo[2]_INST_0_i_120_n_0 ),
        .I1(\spo[2]_INST_0_i_119_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_96_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_97_n_0 ),
        .O(\spo[1]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hC5C0C5C5C5C0C0C0)) 
    \spo[1]_INST_0_i_48 
       (.I0(a[1]),
        .I1(\spo[1]_INST_0_i_94_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_85_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_139_n_0 ),
        .O(\spo[1]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8111000000220000)) 
    \spo[1]_INST_0_i_49 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_83_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_21_n_0 ),
        .I1(\spo[1]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000010)) 
    \spo[1]_INST_0_i_50 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000022E2)) 
    \spo[1]_INST_0_i_51 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(a[8]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .O(\spo[1]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h5800C0000A000200)) 
    \spo[1]_INST_0_i_52 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_52_n_0 ));
  MUXF7 \spo[1]_INST_0_i_53 
       (.I0(\spo[1]_INST_0_i_98_n_0 ),
        .I1(\spo[1]_INST_0_i_99_n_0 ),
        .O(\spo[1]_INST_0_i_53_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \spo[1]_INST_0_i_54 
       (.I0(\spo[1]_INST_0_i_100_n_0 ),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_115_n_0 ),
        .I3(a[8]),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_147_n_0 ),
        .O(\spo[1]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h30993000C088C000)) 
    \spo[1]_INST_0_i_55 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_81_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_56 
       (.I0(\spo[2]_INST_0_i_131_n_0 ),
        .I1(\spo[1]_INST_0_i_101_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_82_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFA225000C4758020)) 
    \spo[1]_INST_0_i_57 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_114_n_0 ),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_58 
       (.I0(\spo[1]_INST_0_i_102_n_0 ),
        .I1(\spo[1]_INST_0_i_103_n_0 ),
        .I2(a[4]),
        .I3(\spo[1]_INST_0_i_104_n_0 ),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_84_n_0 ),
        .O(\spo[1]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0070333300700000)) 
    \spo[1]_INST_0_i_59 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[9]),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_100_n_0 ),
        .O(\spo[1]_INST_0_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_26_n_0 ),
        .I3(a[4]),
        .I4(\spo[1]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800FF000000)) 
    \spo[1]_INST_0_i_60 
       (.I0(\spo[1]_INST_0_i_105_n_0 ),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[1]),
        .I4(\spo[1]_INST_0_i_97_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0300B3B303008080)) 
    \spo[1]_INST_0_i_61 
       (.I0(\spo[1]_INST_0_i_105_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_139_n_0 ),
        .O(\spo[1]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h33F000F088C088C0)) 
    \spo[1]_INST_0_i_62 
       (.I0(\spo[1]_INST_0_i_105_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_114_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA000C000C00)) 
    \spo[1]_INST_0_i_63 
       (.I0(\spo[1]_INST_0_i_106_n_0 ),
        .I1(\spo[2]_INST_0_i_104_n_0 ),
        .I2(a[0]),
        .I3(a[4]),
        .I4(\spo[1]_INST_0_i_107_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_64 
       (.I0(\spo[1]_INST_0_i_108_n_0 ),
        .I1(\spo[1]_INST_0_i_109_n_0 ),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_62_n_0 ),
        .I4(a[1]),
        .I5(\spo[1]_INST_0_i_110_n_0 ),
        .O(\spo[1]_INST_0_i_64_n_0 ));
  MUXF7 \spo[1]_INST_0_i_65 
       (.I0(\spo[1]_INST_0_i_111_n_0 ),
        .I1(\spo[1]_INST_0_i_112_n_0 ),
        .O(\spo[1]_INST_0_i_65_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_66 
       (.I0(\spo[1]_INST_0_i_113_n_0 ),
        .I1(\spo[1]_INST_0_i_114_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_115_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_76_n_0 ),
        .O(\spo[1]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h3000C00088888888)) 
    \spo[1]_INST_0_i_67 
       (.I0(\spo[1]_INST_0_i_87_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_68 
       (.I0(\spo[1]_INST_0_i_116_n_0 ),
        .I1(a[1]),
        .I2(\spo[1]_INST_0_i_117_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_147_n_0 ),
        .O(\spo[1]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_69 
       (.I0(\spo[1]_INST_0_i_118_n_0 ),
        .I1(\spo[1]_INST_0_i_94_n_0 ),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_119_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_120_n_0 ),
        .O(\spo[1]_INST_0_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_28_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_29_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_30_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  MUXF7 \spo[1]_INST_0_i_70 
       (.I0(\spo[1]_INST_0_i_121_n_0 ),
        .I1(\spo[1]_INST_0_i_122_n_0 ),
        .O(\spo[1]_INST_0_i_70_n_0 ),
        .S(a[1]));
  MUXF7 \spo[1]_INST_0_i_71 
       (.I0(\spo[1]_INST_0_i_123_n_0 ),
        .I1(\spo[1]_INST_0_i_124_n_0 ),
        .O(\spo[1]_INST_0_i_71_n_0 ),
        .S(a[1]));
  MUXF7 \spo[1]_INST_0_i_72 
       (.I0(\spo[1]_INST_0_i_125_n_0 ),
        .I1(\spo[1]_INST_0_i_126_n_0 ),
        .O(\spo[1]_INST_0_i_72_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hC0A0C0A00F000000)) 
    \spo[1]_INST_0_i_73 
       (.I0(\spo[2]_INST_0_i_139_n_0 ),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[1]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_74 
       (.I0(\spo[1]_INST_0_i_127_n_0 ),
        .I1(\spo[2]_INST_0_i_109_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_104_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_95_n_0 ),
        .O(\spo[1]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0FC000C000AF00A0)) 
    \spo[1]_INST_0_i_75 
       (.I0(\spo[1]_INST_0_i_128_n_0 ),
        .I1(\spo[1]_INST_0_i_129_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_131_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \spo[1]_INST_0_i_76 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000100)) 
    \spo[1]_INST_0_i_77 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h0200080002040110)) 
    \spo[1]_INST_0_i_78 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000513000)) 
    \spo[1]_INST_0_i_79 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[1]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_31_n_0 ),
        .I1(\spo[1]_INST_0_i_32_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_33_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_34_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000400)) 
    \spo[1]_INST_0_i_80 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0300000000000A20)) 
    \spo[1]_INST_0_i_81 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[1]_INST_0_i_82 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040300)) 
    \spo[1]_INST_0_i_83 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000330)) 
    \spo[1]_INST_0_i_84 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0001020000000000)) 
    \spo[1]_INST_0_i_85 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \spo[1]_INST_0_i_86 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00080040)) 
    \spo[1]_INST_0_i_87 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_87_n_0 ));
  MUXF7 \spo[1]_INST_0_i_88 
       (.I0(\spo[1]_INST_0_i_130_n_0 ),
        .I1(\spo[1]_INST_0_i_131_n_0 ),
        .O(\spo[1]_INST_0_i_88_n_0 ),
        .S(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[1]_INST_0_i_89 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_89_n_0 ));
  MUXF7 \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_35_n_0 ),
        .I1(\spo[1]_INST_0_i_36_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \spo[1]_INST_0_i_90 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_90_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200060)) 
    \spo[1]_INST_0_i_91 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_91_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0C080000)) 
    \spo[1]_INST_0_i_92 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000018)) 
    \spo[1]_INST_0_i_93 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00100080)) 
    \spo[1]_INST_0_i_94 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h02000800000C0200)) 
    \spo[1]_INST_0_i_95 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00180008)) 
    \spo[1]_INST_0_i_96 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[1]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01020400)) 
    \spo[1]_INST_0_i_97 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[1]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000080300)) 
    \spo[1]_INST_0_i_98 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h0000043000006000)) 
    \spo[1]_INST_0_i_99 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(\spo[2]_INST_0_i_8_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_39_n_0 ),
        .I1(\spo[2]_INST_0_i_40_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_41_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_42_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[2]_INST_0_i_100 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02000310)) 
    \spo[2]_INST_0_i_101 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[2]_INST_0_i_102 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[2]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000210)) 
    \spo[2]_INST_0_i_103 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[2]_INST_0_i_104 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h0300080000000000)) 
    \spo[2]_INST_0_i_105 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0000000120)) 
    \spo[2]_INST_0_i_106 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \spo[2]_INST_0_i_107 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000020500)) 
    \spo[2]_INST_0_i_108 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h02000210)) 
    \spo[2]_INST_0_i_109 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_43_n_0 ),
        .I1(\spo[2]_INST_0_i_44_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_45_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_46_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[2]_INST_0_i_110 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h09000420)) 
    \spo[2]_INST_0_i_111 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[2]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00021500)) 
    \spo[2]_INST_0_i_112 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .O(\spo[2]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[2]_INST_0_i_113 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[9]),
        .O(\spo[2]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[2]_INST_0_i_114 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \spo[2]_INST_0_i_115 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00280000)) 
    \spo[2]_INST_0_i_116 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0200080000000100)) 
    \spo[2]_INST_0_i_117 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h000004000000C030)) 
    \spo[2]_INST_0_i_118 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \spo[2]_INST_0_i_119 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_47_n_0 ),
        .I1(\spo[2]_INST_0_i_48_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_49_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_50_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[2]_INST_0_i_120 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[2]_INST_0_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h000000000233D080)) 
    \spo[2]_INST_0_i_121 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h00000100000080C0)) 
    \spo[2]_INST_0_i_122 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_122_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    \spo[2]_INST_0_i_123 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .O(\spo[2]_INST_0_i_123_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000444)) 
    \spo[2]_INST_0_i_124 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[9]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \spo[2]_INST_0_i_125 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[2]_INST_0_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h000B003000C00000)) 
    \spo[2]_INST_0_i_126 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[2]_INST_0_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00200040)) 
    \spo[2]_INST_0_i_127 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_127_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00040080)) 
    \spo[2]_INST_0_i_128 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00200110)) 
    \spo[2]_INST_0_i_129 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_51_n_0 ),
        .I1(\spo[2]_INST_0_i_52_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_53_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_54_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200004)) 
    \spo[2]_INST_0_i_130 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_130_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \spo[2]_INST_0_i_131 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h00C2000000410100)) 
    \spo[2]_INST_0_i_132 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_132_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[2]_INST_0_i_133 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[2]_INST_0_i_133_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003420)) 
    \spo[2]_INST_0_i_134 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h0000060000000000)) 
    \spo[2]_INST_0_i_135 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002202000)) 
    \spo[2]_INST_0_i_136 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h0220000000000000)) 
    \spo[2]_INST_0_i_137 
       (.I0(a[8]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_137_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[2]_INST_0_i_138 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(a[9]),
        .O(\spo[2]_INST_0_i_138_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[2]_INST_0_i_139 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_55_n_0 ),
        .I1(\spo[2]_INST_0_i_56_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_57_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_58_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[2]_INST_0_i_140 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[2]_INST_0_i_140_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[2]_INST_0_i_141 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[2]_INST_0_i_141_n_0 ));
  LUT6 #(
    .INIT(64'h00C3000000300400)) 
    \spo[2]_INST_0_i_142 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[2]_INST_0_i_142_n_0 ));
  LUT6 #(
    .INIT(64'h0000031000000000)) 
    \spo[2]_INST_0_i_143 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_143_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \spo[2]_INST_0_i_144 
       (.I0(a[10]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .O(\spo[2]_INST_0_i_144_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h09000400)) 
    \spo[2]_INST_0_i_145 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[2]_INST_0_i_145_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h01000420)) 
    \spo[2]_INST_0_i_146 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[2]_INST_0_i_146_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[2]_INST_0_i_147 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_147_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0210)) 
    \spo[2]_INST_0_i_148 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .O(\spo[2]_INST_0_i_148_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \spo[2]_INST_0_i_149 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_149_n_0 ));
  MUXF7 \spo[2]_INST_0_i_15 
       (.I0(\spo[2]_INST_0_i_59_n_0 ),
        .I1(\spo[2]_INST_0_i_60_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h00020C000002C030)) 
    \spo[2]_INST_0_i_150 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_150_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000074000)) 
    \spo[2]_INST_0_i_151 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[10]),
        .O(\spo[2]_INST_0_i_151_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[2]_INST_0_i_152 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[8]),
        .O(\spo[2]_INST_0_i_152_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_61_n_0 ),
        .I1(\spo[2]_INST_0_i_62_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_63_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_64_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_65_n_0 ),
        .I1(\spo[2]_INST_0_i_66_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_67_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_68_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_18 
       (.I0(\spo[2]_INST_0_i_69_n_0 ),
        .I1(\spo[2]_INST_0_i_70_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_71_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_72_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_19 
       (.I0(\spo[2]_INST_0_i_73_n_0 ),
        .I1(\spo[2]_INST_0_i_74_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_75_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_76_n_0 ),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_9_n_0 ),
        .I1(\spo[2]_INST_0_i_10_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_11_n_0 ),
        .I4(a[2]),
        .I5(\spo[2]_INST_0_i_12_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_20 
       (.I0(\spo[2]_INST_0_i_77_n_0 ),
        .I1(\spo[2]_INST_0_i_78_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_79_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_80_n_0 ),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80F0FFFF80F00000)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_81_n_0 ),
        .I3(a[9]),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_82_n_0 ),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h085D000048000000)) 
    \spo[2]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(\spo[2]_INST_0_i_83_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \spo[2]_INST_0_i_23 
       (.I0(\spo[2]_INST_0_i_84_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_86_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[2]_INST_0_i_24 
       (.I0(\spo[2]_INST_0_i_87_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_88_n_0 ),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h48004800F5550000)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_81_n_0 ),
        .I2(a[9]),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[2]_INST_0_i_26 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_90_n_0 ),
        .I3(a[8]),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_91_n_0 ),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  MUXF7 \spo[2]_INST_0_i_27 
       (.I0(\spo[2]_INST_0_i_92_n_0 ),
        .I1(\spo[2]_INST_0_i_93_n_0 ),
        .O(\spo[2]_INST_0_i_27_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'h8888888833F000F0)) 
    \spo[2]_INST_0_i_28 
       (.I0(\spo[3]_INST_0_i_31_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_94_n_0 ),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_29 
       (.I0(\spo[2]_INST_0_i_95_n_0 ),
        .I1(\spo[2]_INST_0_i_96_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_97_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_98_n_0 ),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_13_n_0 ),
        .I1(\spo[2]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_15_n_0 ),
        .I4(a[2]),
        .I5(\spo[2]_INST_0_i_16_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3080)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[0]),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFA0C0AFF0A000)) 
    \spo[2]_INST_0_i_31 
       (.I0(\spo[2]_INST_0_i_99_n_0 ),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_32 
       (.I0(\spo[2]_INST_0_i_101_n_0 ),
        .I1(\spo[2]_INST_0_i_102_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_103_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_104_n_0 ),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_33 
       (.I0(\spo[2]_INST_0_i_105_n_0 ),
        .I1(\spo[2]_INST_0_i_106_n_0 ),
        .I2(a[4]),
        .I3(\spo[2]_INST_0_i_107_n_0 ),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_84_n_0 ),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[2]_INST_0_i_34 
       (.I0(\spo[2]_INST_0_i_108_n_0 ),
        .I1(\spo[2]_INST_0_i_109_n_0 ),
        .I2(a[4]),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_62_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4D4805054D480000)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[1]),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_82_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_110_n_0 ),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \spo[2]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_111_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_112_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_113_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hCCF5CCA0F0A0F0A0)) 
    \spo[2]_INST_0_i_37 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_114_n_0 ),
        .I2(\spo[2]_INST_0_i_100_n_0 ),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4D48FFFF4D480000)) 
    \spo[2]_INST_0_i_38 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_115_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_114_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_100_n_0 ),
        .O(\spo[2]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \spo[2]_INST_0_i_39 
       (.I0(\spo[2]_INST_0_i_116_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_104_n_0 ),
        .I3(a[0]),
        .O(\spo[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_17_n_0 ),
        .I1(\spo[2]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(\spo[2]_INST_0_i_20_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7000700070FF7000)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_115_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8800880003FF0000)) 
    \spo[2]_INST_0_i_41 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055600060)) 
    \spo[2]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_86_n_0 ),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h5500C0C0)) 
    \spo[2]_INST_0_i_43 
       (.I0(a[1]),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_94_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_43_n_0 ));
  MUXF7 \spo[2]_INST_0_i_44 
       (.I0(\spo[2]_INST_0_i_117_n_0 ),
        .I1(\spo[2]_INST_0_i_118_n_0 ),
        .O(\spo[2]_INST_0_i_44_n_0 ),
        .S(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4D48)) 
    \spo[2]_INST_0_i_45 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_119_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_120_n_0 ),
        .O(\spo[2]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hC0008B00)) 
    \spo[2]_INST_0_i_46 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hE000F00000006400)) 
    \spo[2]_INST_0_i_47 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h3F002020)) 
    \spo[2]_INST_0_i_48 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_82_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_48_n_0 ));
  MUXF7 \spo[2]_INST_0_i_49 
       (.I0(\spo[2]_INST_0_i_121_n_0 ),
        .I1(\spo[2]_INST_0_i_122_n_0 ),
        .O(\spo[2]_INST_0_i_49_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_21_n_0 ),
        .I1(\spo[2]_INST_0_i_22_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_24_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0300BBBB03008888)) 
    \spo[2]_INST_0_i_50 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_110_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_123_n_0 ),
        .O(\spo[2]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007000C00)) 
    \spo[2]_INST_0_i_51 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000C000B8880300)) 
    \spo[2]_INST_0_i_52 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[8]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8380BFBF83808080)) 
    \spo[2]_INST_0_i_53 
       (.I0(\spo[2]_INST_0_i_124_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_81_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_114_n_0 ),
        .O(\spo[2]_INST_0_i_53_n_0 ));
  MUXF7 \spo[2]_INST_0_i_54 
       (.I0(\spo[2]_INST_0_i_125_n_0 ),
        .I1(\spo[2]_INST_0_i_126_n_0 ),
        .O(\spo[2]_INST_0_i_54_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[2]_INST_0_i_55 
       (.I0(\spo[2]_INST_0_i_127_n_0 ),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_94_n_0 ),
        .I3(a[8]),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_128_n_0 ),
        .O(\spo[2]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_56 
       (.I0(\spo[2]_INST_0_i_129_n_0 ),
        .I1(\spo[2]_INST_0_i_130_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_131_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hFF004848)) 
    \spo[2]_INST_0_i_57 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_82_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_81_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_57_n_0 ));
  MUXF7 \spo[2]_INST_0_i_58 
       (.I0(\spo[2]_INST_0_i_132_n_0 ),
        .I1(\spo[2]_INST_0_i_133_n_0 ),
        .O(\spo[2]_INST_0_i_58_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_59 
       (.I0(\spo[2]_INST_0_i_131_n_0 ),
        .I1(\spo[3]_INST_0_i_81_n_0 ),
        .I2(a[4]),
        .I3(\spo[2]_INST_0_i_134_n_0 ),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_25_n_0 ),
        .I1(\spo[2]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_28_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_60 
       (.I0(\spo[2]_INST_0_i_135_n_0 ),
        .I1(\spo[2]_INST_0_i_107_n_0 ),
        .I2(a[4]),
        .I3(\spo[2]_INST_0_i_136_n_0 ),
        .I4(a[1]),
        .I5(\spo[2]_INST_0_i_137_n_0 ),
        .O(\spo[2]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF5004F4FF5004040)) 
    \spo[2]_INST_0_i_61 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_114_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_138_n_0 ),
        .O(\spo[2]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h3808C808)) 
    \spo[2]_INST_0_i_62 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_115_n_0 ),
        .I4(a[0]),
        .O(\spo[2]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hC8C85500)) 
    \spo[2]_INST_0_i_63 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_82_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_139_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF8080000)) 
    \spo[2]_INST_0_i_64 
       (.I0(a[8]),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_116_n_0 ),
        .I4(a[1]),
        .O(\spo[2]_INST_0_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \spo[2]_INST_0_i_65 
       (.I0(\spo[2]_INST_0_i_119_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_66 
       (.I0(\spo[2]_INST_0_i_96_n_0 ),
        .I1(\spo[2]_INST_0_i_120_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_140_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_141_n_0 ),
        .O(\spo[2]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h3F002020)) 
    \spo[2]_INST_0_i_67 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_38_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_67_n_0 ));
  MUXF7 \spo[2]_INST_0_i_68 
       (.I0(\spo[2]_INST_0_i_142_n_0 ),
        .I1(\spo[2]_INST_0_i_143_n_0 ),
        .O(\spo[2]_INST_0_i_68_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hFF004D4DFF004848)) 
    \spo[2]_INST_0_i_69 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_110_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_139_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_94_n_0 ),
        .O(\spo[2]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_29_n_0 ),
        .I1(\spo[2]_INST_0_i_30_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_32_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00000A0CFA0C0)) 
    \spo[2]_INST_0_i_70 
       (.I0(\spo[2]_INST_0_i_89_n_0 ),
        .I1(\spo[2]_INST_0_i_144_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h55400040AA000000)) 
    \spo[2]_INST_0_i_71 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_72 
       (.I0(\spo[2]_INST_0_i_145_n_0 ),
        .I1(\spo[2]_INST_0_i_146_n_0 ),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_119_n_0 ),
        .O(\spo[2]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A00FC000C0)) 
    \spo[2]_INST_0_i_73 
       (.I0(\spo[2]_INST_0_i_147_n_0 ),
        .I1(\spo[2]_INST_0_i_86_n_0 ),
        .I2(a[1]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_110_n_0 ),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hCF080008033B0008)) 
    \spo[2]_INST_0_i_74 
       (.I0(\spo[2]_INST_0_i_148_n_0 ),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hCB08C000)) 
    \spo[2]_INST_0_i_75 
       (.I0(\spo[2]_INST_0_i_149_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_38_n_0 ),
        .I4(a[0]),
        .O(\spo[2]_INST_0_i_75_n_0 ));
  MUXF7 \spo[2]_INST_0_i_76 
       (.I0(\spo[2]_INST_0_i_150_n_0 ),
        .I1(\spo[2]_INST_0_i_151_n_0 ),
        .O(\spo[2]_INST_0_i_76_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'hD510801000000000)) 
    \spo[2]_INST_0_i_77 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_78 
       (.I0(\spo[2]_INST_0_i_98_n_0 ),
        .I1(\spo[2]_INST_0_i_103_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_104_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_152_n_0 ),
        .O(\spo[2]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h4200C00000001000)) 
    \spo[2]_INST_0_i_79 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_79_n_0 ));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_33_n_0 ),
        .I1(\spo[2]_INST_0_i_34_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hC0008080C0008380)) 
    \spo[2]_INST_0_i_80 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[2]_INST_0_i_81 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .O(\spo[2]_INST_0_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[2]_INST_0_i_82 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[2]_INST_0_i_83 
       (.I0(a[11]),
        .I1(a[12]),
        .O(\spo[2]_INST_0_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000060)) 
    \spo[2]_INST_0_i_84 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_84_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[2]_INST_0_i_85 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .O(\spo[2]_INST_0_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \spo[2]_INST_0_i_86 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .O(\spo[2]_INST_0_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00080300)) 
    \spo[2]_INST_0_i_87 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[2]_INST_0_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00001580)) 
    \spo[2]_INST_0_i_88 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .O(\spo[2]_INST_0_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spo[2]_INST_0_i_89 
       (.I0(a[12]),
        .I1(a[11]),
        .I2(a[10]),
        .O(\spo[2]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_35_n_0 ),
        .I1(\spo[2]_INST_0_i_36_n_0 ),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_37_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_38_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \spo[2]_INST_0_i_90 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .O(\spo[2]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000700)) 
    \spo[2]_INST_0_i_91 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000303010)) 
    \spo[2]_INST_0_i_92 
       (.I0(a[0]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[9]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000000483130000)) 
    \spo[2]_INST_0_i_93 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \spo[2]_INST_0_i_94 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .O(\spo[2]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h04080000)) 
    \spo[2]_INST_0_i_95 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \spo[2]_INST_0_i_96 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00200090)) 
    \spo[2]_INST_0_i_97 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h02000010)) 
    \spo[2]_INST_0_i_98 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00A00150)) 
    \spo[2]_INST_0_i_99 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .O(\spo[2]_INST_0_i_99_n_0 ));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_5_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  MUXF7 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[3]_INST_0_i_100 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h0008000003000800)) 
    \spo[3]_INST_0_i_101 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h001C)) 
    \spo[3]_INST_0_i_102 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .O(\spo[3]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00600000)) 
    \spo[3]_INST_0_i_103 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[3]_INST_0_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h000000000311C000)) 
    \spo[3]_INST_0_i_104 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[12]),
        .O(\spo[3]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h00004C0000011000)) 
    \spo[3]_INST_0_i_105 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_105_n_0 ));
  MUXF7 \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_30_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[3]_INST_0_i_12 
       (.I0(a[0]),
        .I1(\spo[3]_INST_0_i_31_n_0 ),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_32_n_0 ),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(\spo[3]_INST_0_i_35_n_0 ),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_36_n_0 ),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hC080FFFFC0800000)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_39_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  MUXF7 \spo[3]_INST_0_i_15 
       (.I0(\spo[3]_INST_0_i_40_n_0 ),
        .I1(\spo[3]_INST_0_i_41_n_0 ),
        .O(\spo[3]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_42_n_0 ),
        .I1(\spo[3]_INST_0_i_43_n_0 ),
        .O(\spo[3]_INST_0_i_16_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[3]_INST_0_i_44_n_0 ),
        .I1(\spo[3]_INST_0_i_45_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_46_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_47_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[3]_INST_0_i_48_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_49_n_0 ),
        .I3(a[4]),
        .I4(\spo[3]_INST_0_i_50_n_0 ),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_19 
       (.I0(\spo[3]_INST_0_i_51_n_0 ),
        .I1(\spo[3]_INST_0_i_52_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_53_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_54_n_0 ),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_9_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_55_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_56_n_0 ),
        .I3(a[4]),
        .I4(\spo[3]_INST_0_i_57_n_0 ),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_21 
       (.I0(\spo[3]_INST_0_i_58_n_0 ),
        .I1(\spo[3]_INST_0_i_59_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_60_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_61_n_0 ),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[3]_INST_0_i_22 
       (.I0(\spo[3]_INST_0_i_62_n_0 ),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_63_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_64_n_0 ),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_23 
       (.I0(\spo[3]_INST_0_i_65_n_0 ),
        .I1(\spo[3]_INST_0_i_66_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_67_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_68_n_0 ),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_24 
       (.I0(\spo[3]_INST_0_i_69_n_0 ),
        .I1(\spo[3]_INST_0_i_70_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_71_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_72_n_0 ),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_25 
       (.I0(\spo[3]_INST_0_i_73_n_0 ),
        .I1(\spo[3]_INST_0_i_74_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_75_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_76_n_0 ),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[3]_INST_0_i_26 
       (.I0(\spo[3]_INST_0_i_77_n_0 ),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_78_n_0 ),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_79_n_0 ),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[3]_INST_0_i_27 
       (.I0(\spo[3]_INST_0_i_80_n_0 ),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_81_n_0 ),
        .I3(a[1]),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_82_n_0 ),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_28 
       (.I0(\spo[3]_INST_0_i_83_n_0 ),
        .I1(\spo[3]_INST_0_i_84_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_85_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_86_n_0 ),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAF480048A0000000)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_85_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .I2(a[2]),
        .I3(\spo[3]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_14_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F006200)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_83_n_0 ),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0300000002080000)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000400C0)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0300000000080000)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0000020200)) 
    \spo[3]_INST_0_i_36 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00200010)) 
    \spo[3]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[3]_INST_0_i_38 
       (.I0(a[10]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[9]),
        .O(\spo[3]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000011100)) 
    \spo[3]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_39_n_0 ));
  MUXF8 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hACFFAC000C000C00)) 
    \spo[3]_INST_0_i_40 
       (.I0(\spo[1]_INST_0_i_118_n_0 ),
        .I1(\spo[2]_INST_0_i_147_n_0 ),
        .I2(a[0]),
        .I3(a[4]),
        .I4(\spo[3]_INST_0_i_87_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h44C80040A8882000)) 
    \spo[3]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_115_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_114_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE2FFE200B800B800)) 
    \spo[3]_INST_0_i_42 
       (.I0(\spo[2]_INST_0_i_96_n_0 ),
        .I1(a[0]),
        .I2(\spo[1]_INST_0_i_118_n_0 ),
        .I3(a[4]),
        .I4(\spo[3]_INST_0_i_88_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \spo[3]_INST_0_i_43 
       (.I0(\spo[3]_INST_0_i_89_n_0 ),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_90_n_0 ),
        .I3(a[1]),
        .I4(\spo[1]_INST_0_i_105_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h10311020EE800080)) 
    \spo[3]_INST_0_i_44 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_85_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_44_n_0 ));
  MUXF7 \spo[3]_INST_0_i_45 
       (.I0(\spo[3]_INST_0_i_91_n_0 ),
        .I1(\spo[3]_INST_0_i_92_n_0 ),
        .O(\spo[3]_INST_0_i_45_n_0 ),
        .S(a[1]));
  MUXF7 \spo[3]_INST_0_i_46 
       (.I0(\spo[3]_INST_0_i_93_n_0 ),
        .I1(\spo[3]_INST_0_i_94_n_0 ),
        .O(\spo[3]_INST_0_i_46_n_0 ),
        .S(a[1]));
  LUT6 #(
    .INIT(64'h88FF8800F000F000)) 
    \spo[3]_INST_0_i_47 
       (.I0(\spo[0]_INST_0_i_90_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_117_n_0 ),
        .I3(a[1]),
        .I4(\spo[3]_INST_0_i_31_n_0 ),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA00F0FCFA00000C0)) 
    \spo[3]_INST_0_i_48 
       (.I0(\spo[2]_INST_0_i_119_n_0 ),
        .I1(\spo[2]_INST_0_i_84_n_0 ),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_62_n_0 ),
        .O(\spo[3]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hB8F3B8C088008800)) 
    \spo[3]_INST_0_i_49 
       (.I0(\spo[3]_INST_0_i_95_n_0 ),
        .I1(a[1]),
        .I2(\spo[3]_INST_0_i_38_n_0 ),
        .I3(a[0]),
        .I4(\spo[1]_INST_0_i_105_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_49_n_0 ));
  MUXF7 \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_17_n_0 ),
        .I1(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h05E0004088058800)) 
    \spo[3]_INST_0_i_50 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hB833B80088008800)) 
    \spo[3]_INST_0_i_51 
       (.I0(\spo[3]_INST_0_i_96_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_82_n_0 ),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h8F000000)) 
    \spo[3]_INST_0_i_52 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h5021A50100000000)) 
    \spo[3]_INST_0_i_53 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[10]),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_83_n_0 ),
        .O(\spo[3]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hC000000080808380)) 
    \spo[3]_INST_0_i_54 
       (.I0(\spo[2]_INST_0_i_100_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[3]_INST_0_i_55 
       (.I0(\spo[2]_INST_0_i_91_n_0 ),
        .I1(\spo[3]_INST_0_i_97_n_0 ),
        .I2(a[4]),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_114_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h8080CFC0)) 
    \spo[3]_INST_0_i_56 
       (.I0(a[0]),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_82_n_0 ),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_57 
       (.I0(\spo[1]_INST_0_i_82_n_0 ),
        .I1(\spo[2]_INST_0_i_98_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_96_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_89_n_0 ),
        .O(\spo[3]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F404F808)) 
    \spo[3]_INST_0_i_58 
       (.I0(a[9]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_38_n_0 ),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_59 
       (.I0(\spo[2]_INST_0_i_128_n_0 ),
        .I1(\spo[2]_INST_0_i_96_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_141_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_76_n_0 ),
        .O(\spo[3]_INST_0_i_59_n_0 ));
  MUXF7 \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_60 
       (.I0(\spo[3]_INST_0_i_98_n_0 ),
        .I1(\spo[1]_INST_0_i_129_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_147_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_76_n_0 ),
        .O(\spo[3]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040800)) 
    \spo[3]_INST_0_i_61 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \spo[3]_INST_0_i_62 
       (.I0(a[9]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[8]),
        .O(\spo[3]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h6500050565000000)) 
    \spo[3]_INST_0_i_63 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_85_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_82_n_0 ),
        .O(\spo[3]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_64 
       (.I0(\spo[0]_INST_0_i_88_n_0 ),
        .I1(\spo[3]_INST_0_i_99_n_0 ),
        .I2(a[4]),
        .I3(\spo[3]_INST_0_i_100_n_0 ),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_101_n_0 ),
        .O(\spo[3]_INST_0_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h40200080)) 
    \spo[3]_INST_0_i_65 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4D48)) 
    \spo[3]_INST_0_i_66 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_104_n_0 ),
        .I2(a[0]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[3]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hE5404545E5404040)) 
    \spo[3]_INST_0_i_67 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_130_n_0 ),
        .I2(a[0]),
        .I3(\spo[2]_INST_0_i_100_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_100_n_0 ),
        .O(\spo[3]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hA05F000040404040)) 
    \spo[3]_INST_0_i_68 
       (.I0(a[0]),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h4848484800FF0000)) 
    \spo[3]_INST_0_i_69 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_100_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_69_n_0 ));
  MUXF7 \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_21_n_0 ),
        .I1(\spo[3]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hB888B888BBBB8888)) 
    \spo[3]_INST_0_i_70 
       (.I0(\spo[2]_INST_0_i_135_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_149_n_0 ),
        .I3(a[0]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C00FC000C0)) 
    \spo[3]_INST_0_i_71 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(\spo[3]_INST_0_i_102_n_0 ),
        .I2(a[1]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_82_n_0 ),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h50500000AFC000C0)) 
    \spo[3]_INST_0_i_72 
       (.I0(a[9]),
        .I1(\spo[2]_INST_0_i_139_n_0 ),
        .I2(a[1]),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_89_n_0 ),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hB8F3B8C0B8C0B8C0)) 
    \spo[3]_INST_0_i_73 
       (.I0(\spo[3]_INST_0_i_103_n_0 ),
        .I1(a[1]),
        .I2(\spo[2]_INST_0_i_104_n_0 ),
        .I3(a[0]),
        .I4(\spo[1]_INST_0_i_100_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \spo[3]_INST_0_i_74 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_147_n_0 ),
        .I2(a[0]),
        .O(\spo[3]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \spo[3]_INST_0_i_75 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_82_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0011000010EE1000)) 
    \spo[3]_INST_0_i_76 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[2]_INST_0_i_89_n_0 ),
        .I3(a[8]),
        .I4(\spo[2]_INST_0_i_85_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \spo[3]_INST_0_i_77 
       (.I0(\spo[1]_INST_0_i_105_n_0 ),
        .I1(a[8]),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_87_n_0 ),
        .I4(a[0]),
        .I5(\spo[3]_INST_0_i_95_n_0 ),
        .O(\spo[3]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hC000000010B70000)) 
    \spo[3]_INST_0_i_78 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_83_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hB3B0F3F383800000)) 
    \spo[3]_INST_0_i_79 
       (.I0(\spo[2]_INST_0_i_152_n_0 ),
        .I1(a[4]),
        .I2(a[1]),
        .I3(\spo[1]_INST_0_i_86_n_0 ),
        .I4(a[0]),
        .I5(\spo[2]_INST_0_i_104_n_0 ),
        .O(\spo[3]_INST_0_i_79_n_0 ));
  MUXF7 \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h8C8008088C800300)) 
    \spo[3]_INST_0_i_80 
       (.I0(\spo[2]_INST_0_i_85_n_0 ),
        .I1(a[1]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_89_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0300000000000200)) 
    \spo[3]_INST_0_i_81 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hC0F0BBBBC0F08888)) 
    \spo[3]_INST_0_i_82 
       (.I0(\spo[3]_INST_0_i_104_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_76_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(\spo[3]_INST_0_i_105_n_0 ),
        .O(\spo[3]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000A0CFA0C0)) 
    \spo[3]_INST_0_i_83 
       (.I0(\spo[2]_INST_0_i_149_n_0 ),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[2]_INST_0_i_100_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_84 
       (.I0(\spo[1]_INST_0_i_89_n_0 ),
        .I1(\spo[2]_INST_0_i_130_n_0 ),
        .I2(a[1]),
        .I3(\spo[2]_INST_0_i_96_n_0 ),
        .I4(a[0]),
        .I5(\spo[1]_INST_0_i_118_n_0 ),
        .O(\spo[3]_INST_0_i_84_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \spo[3]_INST_0_i_85 
       (.I0(a[0]),
        .I1(\spo[2]_INST_0_i_119_n_0 ),
        .I2(a[1]),
        .O(\spo[3]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h08000800DDC888C8)) 
    \spo[3]_INST_0_i_86 
       (.I0(a[1]),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_81_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00000C4000000000)) 
    \spo[3]_INST_0_i_87 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000010000)) 
    \spo[3]_INST_0_i_88 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h00000E0000000000)) 
    \spo[3]_INST_0_i_89 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_89_n_0 ));
  MUXF7 \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[3]_INST_0_i_26_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'h000034C000002000)) 
    \spo[3]_INST_0_i_90 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000004C0)) 
    \spo[3]_INST_0_i_91 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h0003005000320000)) 
    \spo[3]_INST_0_i_92 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[12]),
        .I4(a[11]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h000008000E000000)) 
    \spo[3]_INST_0_i_93 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h0000048000001800)) 
    \spo[3]_INST_0_i_94 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h03080800)) 
    \spo[3]_INST_0_i_95 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[10]),
        .O(\spo[3]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00A00140)) 
    \spo[3]_INST_0_i_96 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .O(\spo[3]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h0000440000013200)) 
    \spo[3]_INST_0_i_97 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00900200)) 
    \spo[3]_INST_0_i_98 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[9]),
        .O(\spo[3]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h0000F00000000800)) 
    \spo[3]_INST_0_i_99 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[12]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_99_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
