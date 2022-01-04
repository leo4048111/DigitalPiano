// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Jan 04 01:00:40 2022
// Host        : DESKTOP-HSAJ1AE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Project/Vivado/DigitalPiano/DigitalPiano.srcs/sources_1/ip/dist_mem_gen_4/dist_mem_gen_4_sim_netlist.v
// Design      : dist_mem_gen_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_4,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_4
   (a,
    spo);
  input [14:0]a;
  output [9:0]spo;

  wire [14:0]a;
  wire [9:0]spo;
  wire [9:0]NLW_U0_dpo_UNCONNECTED;
  wire [9:0]NLW_U0_qdpo_UNCONNECTED;
  wire [9:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "15" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32768" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_4.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "10" *) 
  dist_mem_gen_4_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[9:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[9:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[9:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "15" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "32768" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_4.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "10" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module dist_mem_gen_4_dist_mem_gen_v8_0_10
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
  input [14:0]a;
  input [9:0]d;
  input [14:0]dpra;
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
  output [9:0]spo;
  output [9:0]dpo;
  output [9:0]qspo;
  output [9:0]qdpo;

  wire \<const0> ;
  wire [14:0]a;
  wire [8:0]\^spo ;

  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8:0] = \^spo [8:0];
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_4_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(\^spo ));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module dist_mem_gen_4_dist_mem_gen_v8_0_10_synth
   (spo,
    a);
  output [8:0]spo;
  input [14:0]a;

  wire [14:0]a;
  wire [8:0]spo;

  dist_mem_gen_4_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_4_rom
   (spo,
    a);
  output [8:0]spo;
  input [14:0]a;

  wire [14:0]a;
  wire [8:0]spo;
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
  wire \spo[0]_INST_0_i_118_n_0 ;
  wire \spo[0]_INST_0_i_119_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_120_n_0 ;
  wire \spo[0]_INST_0_i_121_n_0 ;
  wire \spo[0]_INST_0_i_122_n_0 ;
  wire \spo[0]_INST_0_i_123_n_0 ;
  wire \spo[0]_INST_0_i_124_n_0 ;
  wire \spo[0]_INST_0_i_125_n_0 ;
  wire \spo[0]_INST_0_i_126_n_0 ;
  wire \spo[0]_INST_0_i_127_n_0 ;
  wire \spo[0]_INST_0_i_128_n_0 ;
  wire \spo[0]_INST_0_i_129_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_130_n_0 ;
  wire \spo[0]_INST_0_i_131_n_0 ;
  wire \spo[0]_INST_0_i_132_n_0 ;
  wire \spo[0]_INST_0_i_133_n_0 ;
  wire \spo[0]_INST_0_i_134_n_0 ;
  wire \spo[0]_INST_0_i_135_n_0 ;
  wire \spo[0]_INST_0_i_136_n_0 ;
  wire \spo[0]_INST_0_i_137_n_0 ;
  wire \spo[0]_INST_0_i_138_n_0 ;
  wire \spo[0]_INST_0_i_139_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_140_n_0 ;
  wire \spo[0]_INST_0_i_141_n_0 ;
  wire \spo[0]_INST_0_i_142_n_0 ;
  wire \spo[0]_INST_0_i_143_n_0 ;
  wire \spo[0]_INST_0_i_144_n_0 ;
  wire \spo[0]_INST_0_i_145_n_0 ;
  wire \spo[0]_INST_0_i_146_n_0 ;
  wire \spo[0]_INST_0_i_147_n_0 ;
  wire \spo[0]_INST_0_i_148_n_0 ;
  wire \spo[0]_INST_0_i_149_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_150_n_0 ;
  wire \spo[0]_INST_0_i_151_n_0 ;
  wire \spo[0]_INST_0_i_152_n_0 ;
  wire \spo[0]_INST_0_i_153_n_0 ;
  wire \spo[0]_INST_0_i_154_n_0 ;
  wire \spo[0]_INST_0_i_155_n_0 ;
  wire \spo[0]_INST_0_i_156_n_0 ;
  wire \spo[0]_INST_0_i_157_n_0 ;
  wire \spo[0]_INST_0_i_158_n_0 ;
  wire \spo[0]_INST_0_i_159_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_160_n_0 ;
  wire \spo[0]_INST_0_i_161_n_0 ;
  wire \spo[0]_INST_0_i_162_n_0 ;
  wire \spo[0]_INST_0_i_163_n_0 ;
  wire \spo[0]_INST_0_i_164_n_0 ;
  wire \spo[0]_INST_0_i_165_n_0 ;
  wire \spo[0]_INST_0_i_166_n_0 ;
  wire \spo[0]_INST_0_i_167_n_0 ;
  wire \spo[0]_INST_0_i_168_n_0 ;
  wire \spo[0]_INST_0_i_169_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_170_n_0 ;
  wire \spo[0]_INST_0_i_171_n_0 ;
  wire \spo[0]_INST_0_i_172_n_0 ;
  wire \spo[0]_INST_0_i_173_n_0 ;
  wire \spo[0]_INST_0_i_174_n_0 ;
  wire \spo[0]_INST_0_i_175_n_0 ;
  wire \spo[0]_INST_0_i_176_n_0 ;
  wire \spo[0]_INST_0_i_177_n_0 ;
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
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
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
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
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
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
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
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[14]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[13]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[11]),
        .I1(\spo[0]_INST_0_i_5_n_0 ),
        .I2(a[10]),
        .I3(a[12]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_30_n_0 ),
        .I1(\spo[0]_INST_0_i_31_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_32_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_33_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2222288800000000)) 
    \spo[0]_INST_0_i_100 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_101 
       (.I0(\spo[0]_INST_0_i_161_n_0 ),
        .I1(\spo[1]_INST_0_i_61_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_162_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_163_n_0 ),
        .O(\spo[0]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00FCFFFCFF)) 
    \spo[0]_INST_0_i_102 
       (.I0(\spo[0]_INST_0_i_160_n_0 ),
        .I1(\spo[0]_INST_0_i_164_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_91_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hB9BDBDBDDCCCCCCC)) 
    \spo[0]_INST_0_i_103 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_103_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[0]_INST_0_i_104 
       (.I0(\spo[4]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_70_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[0]_INST_0_i_105 
       (.I0(\spo[3]_INST_0_i_41_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_164_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_26_n_0 ),
        .O(\spo[0]_INST_0_i_105_n_0 ));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \spo[0]_INST_0_i_106 
       (.I0(\spo[0]_INST_0_i_165_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_9_n_0 ),
        .I3(a[6]),
        .O(\spo[0]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \spo[0]_INST_0_i_107 
       (.I0(\spo[6]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_166_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_167_n_0 ),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \spo[0]_INST_0_i_108 
       (.I0(\spo[0]_INST_0_i_168_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_57_n_0 ),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \spo[0]_INST_0_i_109 
       (.I0(\spo[1]_INST_0_i_90_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_124_n_0 ),
        .I3(a[6]),
        .O(\spo[0]_INST_0_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_34_n_0 ),
        .I1(\spo[0]_INST_0_i_35_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_36_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_37_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB833)) 
    \spo[0]_INST_0_i_110 
       (.I0(\spo[0]_INST_0_i_121_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .O(\spo[0]_INST_0_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h8B883333)) 
    \spo[0]_INST_0_i_111 
       (.I0(\spo[0]_INST_0_i_97_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_101_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spo[0]_INST_0_i_112 
       (.I0(\spo[1]_INST_0_i_69_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_62_n_0 ),
        .O(\spo[0]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h1111FFFE00000000)) 
    \spo[0]_INST_0_i_113 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[0]_INST_0_i_114 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spo[0]_INST_0_i_115 
       (.I0(a[3]),
        .I1(a[4]),
        .O(\spo[0]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \spo[0]_INST_0_i_116 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .O(\spo[0]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hECCCC8882AAAAAAA)) 
    \spo[0]_INST_0_i_117 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_117_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spo[0]_INST_0_i_118 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \spo[0]_INST_0_i_119 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .O(\spo[0]_INST_0_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_38_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_40_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \spo[0]_INST_0_i_120 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[0]_INST_0_i_120_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spo[0]_INST_0_i_121 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \spo[0]_INST_0_i_122 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \spo[0]_INST_0_i_123 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h55555F7FFFFFFFFF)) 
    \spo[0]_INST_0_i_124 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \spo[0]_INST_0_i_125 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .O(\spo[0]_INST_0_i_125_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA1FEAA)) 
    \spo[0]_INST_0_i_126 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \spo[0]_INST_0_i_127 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[0]_INST_0_i_128 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \spo[0]_INST_0_i_129 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h0B03033333333333)) 
    \spo[0]_INST_0_i_13 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h74CC74CCFCFFFCCC)) 
    \spo[0]_INST_0_i_130 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_169_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_146_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_130_n_0 ));
  LUT5 #(
    .INIT(32'h4F40F0F0)) 
    \spo[0]_INST_0_i_131 
       (.I0(a[5]),
        .I1(\spo[0]_INST_0_i_153_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_118_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_131_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_132 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_26_n_0 ),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_52_n_0 ),
        .O(\spo[0]_INST_0_i_132_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_133 
       (.I0(\spo[0]_INST_0_i_170_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_163_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_133_n_0 ));
  LUT5 #(
    .INIT(32'h8B883333)) 
    \spo[0]_INST_0_i_134 
       (.I0(\spo[0]_INST_0_i_121_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_92_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_134_n_0 ));
  LUT6 #(
    .INIT(64'h0C8C0CCCCFC3CFF3)) 
    \spo[0]_INST_0_i_135 
       (.I0(\spo[3]_INST_0_i_44_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h88FF8800F000F000)) 
    \spo[0]_INST_0_i_136 
       (.I0(\spo[2]_INST_0_i_61_n_0 ),
        .I1(a[5]),
        .I2(\spo[1]_INST_0_i_61_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_70_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_136_n_0 ));
  LUT5 #(
    .INIT(32'hCFCCB3B3)) 
    \spo[0]_INST_0_i_137 
       (.I0(\spo[0]_INST_0_i_171_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_137_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE5E5E5E5E0)) 
    \spo[0]_INST_0_i_138 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h38383808CCCCCCCC)) 
    \spo[0]_INST_0_i_139 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[5]_INST_0_i_10_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_139_n_0 ));
  MUXF7 \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_41_n_0 ),
        .I1(\spo[0]_INST_0_i_42_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ),
        .S(a[9]));
  LUT5 #(
    .INIT(32'h4F40F0F0)) 
    \spo[0]_INST_0_i_140 
       (.I0(a[5]),
        .I1(\spo[1]_INST_0_i_101_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_113_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_140_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_141 
       (.I0(\spo[4]_INST_0_i_16_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_17_n_0 ),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_52_n_0 ),
        .O(\spo[0]_INST_0_i_141_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \spo[0]_INST_0_i_142 
       (.I0(\spo[0]_INST_0_i_172_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_164_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_173_n_0 ),
        .O(\spo[0]_INST_0_i_142_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[0]_INST_0_i_143 
       (.I0(\spo[0]_INST_0_i_128_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_27_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_55_n_0 ),
        .O(\spo[0]_INST_0_i_143_n_0 ));
  LUT6 #(
    .INIT(64'hE5E5E5E5E540E040)) 
    \spo[0]_INST_0_i_144 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_17_n_0 ),
        .I2(a[6]),
        .I3(a[4]),
        .I4(\spo[0]_INST_0_i_174_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_144_n_0 ));
  LUT5 #(
    .INIT(32'h4F4AAF0F)) 
    \spo[0]_INST_0_i_145 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_96_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_175_n_0 ),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_145_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \spo[0]_INST_0_i_146 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .O(\spo[0]_INST_0_i_146_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spo[0]_INST_0_i_147 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_147_n_0 ));
  LUT5 #(
    .INIT(32'hFF0F2F20)) 
    \spo[0]_INST_0_i_148 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_176_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_148_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spo[0]_INST_0_i_149 
       (.I0(\spo[0]_INST_0_i_124_n_0 ),
        .I1(\spo[0]_INST_0_i_118_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_149_n_0 ));
  MUXF7 \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_43_n_0 ),
        .I1(\spo[0]_INST_0_i_44_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h3333333088888888)) 
    \spo[0]_INST_0_i_150 
       (.I0(\spo[1]_INST_0_i_55_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_93_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_150_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_151 
       (.I0(\spo[0]_INST_0_i_177_n_0 ),
        .I1(\spo[4]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_124_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_39_n_0 ),
        .O(\spo[0]_INST_0_i_151_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[0]_INST_0_i_152 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_152_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00005F7F)) 
    \spo[0]_INST_0_i_153 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_153_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    \spo[0]_INST_0_i_154 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h8080000011111555)) 
    \spo[0]_INST_0_i_155 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_155_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h5777EAAA)) 
    \spo[0]_INST_0_i_156 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_156_n_0 ));
  LUT6 #(
    .INIT(64'h00000515FFFFFFFF)) 
    \spo[0]_INST_0_i_157 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h222222AAAAAAABB9)) 
    \spo[0]_INST_0_i_158 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5555402222222)) 
    \spo[0]_INST_0_i_159 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_159_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_45_n_0 ),
        .I1(\spo[0]_INST_0_i_46_n_0 ),
        .I2(a[9]),
        .I3(\spo[0]_INST_0_i_47_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00005557)) 
    \spo[0]_INST_0_i_160 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hA888000001115444)) 
    \spo[0]_INST_0_i_161 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_161_n_0 ));
  LUT6 #(
    .INIT(64'hF0F08000000F0F0F)) 
    \spo[0]_INST_0_i_162 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_162_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \spo[0]_INST_0_i_163 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_163_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \spo[0]_INST_0_i_164 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_164_n_0 ));
  LUT6 #(
    .INIT(64'hA0A5B5D555450505)) 
    \spo[0]_INST_0_i_165 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFEAAAAAAAA)) 
    \spo[0]_INST_0_i_166 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF7F00)) 
    \spo[0]_INST_0_i_167 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_167_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5577FEEE)) 
    \spo[0]_INST_0_i_168 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spo[0]_INST_0_i_169 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_169_n_0 ));
  MUXF7 \spo[0]_INST_0_i_17 
       (.I0(\spo[0]_INST_0_i_48_n_0 ),
        .I1(\spo[0]_INST_0_i_49_n_0 ),
        .O(\spo[0]_INST_0_i_17_n_0 ),
        .S(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \spo[0]_INST_0_i_170 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .O(\spo[0]_INST_0_i_170_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \spo[0]_INST_0_i_171 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_171_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0E00F)) 
    \spo[0]_INST_0_i_172 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h632B633B3B3A3A3A)) 
    \spo[0]_INST_0_i_173 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_173_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spo[0]_INST_0_i_174 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .O(\spo[0]_INST_0_i_174_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000515)) 
    \spo[0]_INST_0_i_175 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[0]_INST_0_i_175_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000000)) 
    \spo[0]_INST_0_i_176 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_176_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFFFFFFF)) 
    \spo[0]_INST_0_i_177 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_177_n_0 ));
  MUXF8 \spo[0]_INST_0_i_18 
       (.I0(\spo[0]_INST_0_i_50_n_0 ),
        .I1(\spo[0]_INST_0_i_51_n_0 ),
        .O(\spo[0]_INST_0_i_18_n_0 ),
        .S(a[9]));
  MUXF8 \spo[0]_INST_0_i_19 
       (.I0(\spo[0]_INST_0_i_52_n_0 ),
        .I1(\spo[0]_INST_0_i_53_n_0 ),
        .O(\spo[0]_INST_0_i_19_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_6_n_0 ),
        .I1(\spo[0]_INST_0_i_7_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[12]));
  MUXF8 \spo[0]_INST_0_i_20 
       (.I0(\spo[0]_INST_0_i_54_n_0 ),
        .I1(\spo[0]_INST_0_i_55_n_0 ),
        .O(\spo[0]_INST_0_i_20_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_21 
       (.I0(\spo[0]_INST_0_i_56_n_0 ),
        .I1(\spo[0]_INST_0_i_57_n_0 ),
        .I2(a[9]),
        .I3(\spo[0]_INST_0_i_58_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_59_n_0 ),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  MUXF7 \spo[0]_INST_0_i_22 
       (.I0(\spo[0]_INST_0_i_60_n_0 ),
        .I1(\spo[0]_INST_0_i_61_n_0 ),
        .O(\spo[0]_INST_0_i_22_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_23 
       (.I0(\spo[0]_INST_0_i_62_n_0 ),
        .I1(\spo[0]_INST_0_i_63_n_0 ),
        .I2(a[9]),
        .I3(\spo[0]_INST_0_i_64_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  MUXF7 \spo[0]_INST_0_i_24 
       (.I0(\spo[0]_INST_0_i_65_n_0 ),
        .I1(\spo[0]_INST_0_i_66_n_0 ),
        .O(\spo[0]_INST_0_i_24_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_25 
       (.I0(\spo[0]_INST_0_i_67_n_0 ),
        .I1(\spo[0]_INST_0_i_68_n_0 ),
        .O(\spo[0]_INST_0_i_25_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_26 
       (.I0(\spo[0]_INST_0_i_69_n_0 ),
        .I1(\spo[0]_INST_0_i_70_n_0 ),
        .O(\spo[0]_INST_0_i_26_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_27 
       (.I0(\spo[0]_INST_0_i_71_n_0 ),
        .I1(\spo[2]_INST_0_i_33_n_0 ),
        .I2(a[9]),
        .I3(\spo[0]_INST_0_i_72_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_73_n_0 ),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  MUXF7 \spo[0]_INST_0_i_28 
       (.I0(\spo[0]_INST_0_i_74_n_0 ),
        .I1(\spo[0]_INST_0_i_75_n_0 ),
        .O(\spo[0]_INST_0_i_28_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_29 
       (.I0(\spo[0]_INST_0_i_76_n_0 ),
        .I1(\spo[0]_INST_0_i_77_n_0 ),
        .O(\spo[0]_INST_0_i_29_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_8_n_0 ),
        .I1(\spo[0]_INST_0_i_9_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[12]));
  MUXF8 \spo[0]_INST_0_i_30 
       (.I0(\spo[0]_INST_0_i_78_n_0 ),
        .I1(\spo[0]_INST_0_i_79_n_0 ),
        .O(\spo[0]_INST_0_i_30_n_0 ),
        .S(a[9]));
  MUXF8 \spo[0]_INST_0_i_31 
       (.I0(\spo[0]_INST_0_i_80_n_0 ),
        .I1(\spo[0]_INST_0_i_81_n_0 ),
        .O(\spo[0]_INST_0_i_31_n_0 ),
        .S(a[9]));
  MUXF8 \spo[0]_INST_0_i_32 
       (.I0(\spo[0]_INST_0_i_82_n_0 ),
        .I1(\spo[0]_INST_0_i_83_n_0 ),
        .O(\spo[0]_INST_0_i_32_n_0 ),
        .S(a[9]));
  MUXF8 \spo[0]_INST_0_i_33 
       (.I0(\spo[0]_INST_0_i_84_n_0 ),
        .I1(\spo[0]_INST_0_i_85_n_0 ),
        .O(\spo[0]_INST_0_i_33_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[0]_INST_0_i_34 
       (.I0(\spo[1]_INST_0_i_54_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_60_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .I5(\spo[0]_INST_0_i_86_n_0 ),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  MUXF8 \spo[0]_INST_0_i_35 
       (.I0(\spo[0]_INST_0_i_87_n_0 ),
        .I1(\spo[0]_INST_0_i_88_n_0 ),
        .O(\spo[0]_INST_0_i_35_n_0 ),
        .S(a[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_36 
       (.I0(\spo[0]_INST_0_i_89_n_0 ),
        .I1(a[8]),
        .I2(\spo[0]_INST_0_i_90_n_0 ),
        .I3(a[9]),
        .I4(\spo[0]_INST_0_i_91_n_0 ),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_37 
       (.I0(\spo[0]_INST_0_i_92_n_0 ),
        .I1(\spo[0]_INST_0_i_93_n_0 ),
        .I2(a[9]),
        .I3(\spo[0]_INST_0_i_94_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_95_n_0 ),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_10_n_0 ),
        .I1(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0000557F)) 
    \spo[0]_INST_0_i_40 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hB833B83333333300)) 
    \spo[0]_INST_0_i_41 
       (.I0(\spo[0]_INST_0_i_96_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_17_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_97_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAD5D55555)) 
    \spo[0]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F7F0F70)) 
    \spo[0]_INST_0_i_43 
       (.I0(\spo[1]_INST_0_i_104_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_88_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F2F0F20)) 
    \spo[0]_INST_0_i_44 
       (.I0(\spo[0]_INST_0_i_98_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_21_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001115555)) 
    \spo[0]_INST_0_i_45 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \spo[0]_INST_0_i_46 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_103_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[0]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[0]_INST_0_i_47 
       (.I0(\spo[0]_INST_0_i_99_n_0 ),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_100_n_0 ),
        .O(\spo[0]_INST_0_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hFBCB3333)) 
    \spo[0]_INST_0_i_48 
       (.I0(\spo[1]_INST_0_i_102_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_55_n_0 ),
        .I4(a[7]),
        .O(\spo[0]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC3B3F3B3)) 
    \spo[0]_INST_0_i_49 
       (.I0(\spo[1]_INST_0_i_96_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_12_n_0 ),
        .I1(a[8]),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  MUXF7 \spo[0]_INST_0_i_50 
       (.I0(\spo[0]_INST_0_i_101_n_0 ),
        .I1(\spo[0]_INST_0_i_102_n_0 ),
        .O(\spo[0]_INST_0_i_50_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_51 
       (.I0(\spo[0]_INST_0_i_103_n_0 ),
        .I1(\spo[0]_INST_0_i_104_n_0 ),
        .O(\spo[0]_INST_0_i_51_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_52 
       (.I0(\spo[0]_INST_0_i_105_n_0 ),
        .I1(\spo[0]_INST_0_i_106_n_0 ),
        .O(\spo[0]_INST_0_i_52_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_53 
       (.I0(\spo[0]_INST_0_i_107_n_0 ),
        .I1(\spo[0]_INST_0_i_108_n_0 ),
        .O(\spo[0]_INST_0_i_53_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_54 
       (.I0(\spo[0]_INST_0_i_109_n_0 ),
        .I1(\spo[0]_INST_0_i_110_n_0 ),
        .O(\spo[0]_INST_0_i_54_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_55 
       (.I0(\spo[0]_INST_0_i_111_n_0 ),
        .I1(\spo[0]_INST_0_i_112_n_0 ),
        .O(\spo[0]_INST_0_i_55_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hCFCCB3B3)) 
    \spo[0]_INST_0_i_56 
       (.I0(\spo[2]_INST_0_i_55_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_94_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \spo[0]_INST_0_i_57 
       (.I0(\spo[0]_INST_0_i_113_n_0 ),
        .I1(a[6]),
        .I2(\spo[6]_INST_0_i_9_n_0 ),
        .I3(a[7]),
        .O(\spo[0]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFFFFFFFFFEEE)) 
    \spo[0]_INST_0_i_58 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[3]_INST_0_i_43_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555575)) 
    \spo[0]_INST_0_i_59 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_44_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_14_n_0 ),
        .I1(\spo[0]_INST_0_i_15_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_16_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_17_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h333333333C3CBC8C)) 
    \spo[0]_INST_0_i_60 
       (.I0(\spo[1]_INST_0_i_92_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_55_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BCBCCCFC)) 
    \spo[0]_INST_0_i_61 
       (.I0(\spo[0]_INST_0_i_114_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_115_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h000000005557FFFF)) 
    \spo[0]_INST_0_i_62 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \spo[0]_INST_0_i_63 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F4F40)) 
    \spo[0]_INST_0_i_64 
       (.I0(a[5]),
        .I1(\spo[0]_INST_0_i_116_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_117_n_0 ),
        .I4(a[6]),
        .O(\spo[0]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hCBCBFBCB33333333)) 
    \spo[0]_INST_0_i_65 
       (.I0(\spo[0]_INST_0_i_118_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_119_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hCFCCB3B3)) 
    \spo[0]_INST_0_i_66 
       (.I0(\spo[0]_INST_0_i_120_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_91_n_0 ),
        .I4(a[7]),
        .O(\spo[0]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h33308C8C)) 
    \spo[0]_INST_0_i_67 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_121_n_0 ),
        .I4(a[7]),
        .O(\spo[0]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAF0FAF0F0FCF0FC0)) 
    \spo[0]_INST_0_i_68 
       (.I0(\spo[1]_INST_0_i_95_n_0 ),
        .I1(\spo[0]_INST_0_i_122_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_25_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h3333333338383808)) 
    \spo[0]_INST_0_i_69 
       (.I0(\spo[1]_INST_0_i_61_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_104_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_18_n_0 ),
        .I1(\spo[0]_INST_0_i_19_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_20_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_21_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAF0FAF0FCFCFCFC0)) 
    \spo[0]_INST_0_i_70 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_56_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_123_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555F7FF)) 
    \spo[0]_INST_0_i_71 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_9_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \spo[0]_INST_0_i_72 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[4]_INST_0_i_28_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEA00000000)) 
    \spo[0]_INST_0_i_73 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F08F0F8F0F)) 
    \spo[0]_INST_0_i_74 
       (.I0(\spo[1]_INST_0_i_104_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_124_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0CF0FC00F)) 
    \spo[0]_INST_0_i_75 
       (.I0(\spo[0]_INST_0_i_125_n_0 ),
        .I1(\spo[0]_INST_0_i_126_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_127_n_0 ),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BCBCBC8C)) 
    \spo[0]_INST_0_i_76 
       (.I0(\spo[0]_INST_0_i_128_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_129_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h33F33333B8BBB8B8)) 
    \spo[0]_INST_0_i_77 
       (.I0(\spo[1]_INST_0_i_62_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_115_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_77_n_0 ));
  MUXF7 \spo[0]_INST_0_i_78 
       (.I0(\spo[0]_INST_0_i_130_n_0 ),
        .I1(\spo[0]_INST_0_i_131_n_0 ),
        .O(\spo[0]_INST_0_i_78_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_79 
       (.I0(\spo[0]_INST_0_i_132_n_0 ),
        .I1(\spo[0]_INST_0_i_133_n_0 ),
        .O(\spo[0]_INST_0_i_79_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_22_n_0 ),
        .I1(\spo[0]_INST_0_i_23_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_24_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  MUXF7 \spo[0]_INST_0_i_80 
       (.I0(\spo[0]_INST_0_i_134_n_0 ),
        .I1(\spo[0]_INST_0_i_135_n_0 ),
        .O(\spo[0]_INST_0_i_80_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_81 
       (.I0(\spo[0]_INST_0_i_136_n_0 ),
        .I1(\spo[0]_INST_0_i_137_n_0 ),
        .O(\spo[0]_INST_0_i_81_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_82 
       (.I0(\spo[0]_INST_0_i_138_n_0 ),
        .I1(\spo[0]_INST_0_i_139_n_0 ),
        .O(\spo[0]_INST_0_i_82_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_83 
       (.I0(\spo[0]_INST_0_i_140_n_0 ),
        .I1(\spo[0]_INST_0_i_141_n_0 ),
        .O(\spo[0]_INST_0_i_83_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_84 
       (.I0(\spo[0]_INST_0_i_142_n_0 ),
        .I1(\spo[0]_INST_0_i_143_n_0 ),
        .O(\spo[0]_INST_0_i_84_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_85 
       (.I0(\spo[0]_INST_0_i_144_n_0 ),
        .I1(\spo[0]_INST_0_i_145_n_0 ),
        .O(\spo[0]_INST_0_i_85_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h38080C0CCCCCCCCC)) 
    \spo[0]_INST_0_i_86 
       (.I0(\spo[0]_INST_0_i_146_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_147_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_86_n_0 ));
  MUXF7 \spo[0]_INST_0_i_87 
       (.I0(\spo[0]_INST_0_i_148_n_0 ),
        .I1(\spo[0]_INST_0_i_149_n_0 ),
        .O(\spo[0]_INST_0_i_87_n_0 ),
        .S(a[8]));
  MUXF7 \spo[0]_INST_0_i_88 
       (.I0(\spo[0]_INST_0_i_150_n_0 ),
        .I1(\spo[0]_INST_0_i_151_n_0 ),
        .O(\spo[0]_INST_0_i_88_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \spo[0]_INST_0_i_89 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_69_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_152_n_0 ),
        .O(\spo[0]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_9 
       (.I0(\spo[0]_INST_0_i_26_n_0 ),
        .I1(\spo[0]_INST_0_i_27_n_0 ),
        .I2(a[11]),
        .I3(\spo[0]_INST_0_i_28_n_0 ),
        .I4(a[10]),
        .I5(\spo[0]_INST_0_i_29_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0EF0FEF0F)) 
    \spo[0]_INST_0_i_90 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[0]_INST_0_i_153_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hB8CCB8CC00FF00CC)) 
    \spo[0]_INST_0_i_91 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(a[8]),
        .I2(\spo[0]_INST_0_i_154_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_127_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_92 
       (.I0(\spo[0]_INST_0_i_155_n_0 ),
        .I1(\spo[1]_INST_0_i_58_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_156_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_157_n_0 ),
        .O(\spo[0]_INST_0_i_92_n_0 ));
  MUXF7 \spo[0]_INST_0_i_93 
       (.I0(\spo[0]_INST_0_i_158_n_0 ),
        .I1(\spo[0]_INST_0_i_159_n_0 ),
        .O(\spo[0]_INST_0_i_93_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_94 
       (.I0(\spo[0]_INST_0_i_121_n_0 ),
        .I1(\spo[0]_INST_0_i_128_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_4_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_89_n_0 ),
        .O(\spo[0]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEE00F000F000)) 
    \spo[0]_INST_0_i_95 
       (.I0(\spo[5]_INST_0_i_17_n_0 ),
        .I1(a[5]),
        .I2(\spo[0]_INST_0_i_160_n_0 ),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_39_n_0 ),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \spo[0]_INST_0_i_96 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \spo[0]_INST_0_i_97 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \spo[0]_INST_0_i_98 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .O(\spo[0]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \spo[0]_INST_0_i_99 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .O(\spo[0]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[14]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[13]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[11]),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_5_n_0 ),
        .I3(a[10]),
        .I4(a[12]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_29_n_0 ),
        .I1(\spo[1]_INST_0_i_30_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ),
        .S(a[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \spo[1]_INST_0_i_100 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \spo[1]_INST_0_i_101 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[1]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEA00000000)) 
    \spo[1]_INST_0_i_102 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spo[1]_INST_0_i_103 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[1]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[1]_INST_0_i_104 
       (.I0(a[3]),
        .I1(a[4]),
        .O(\spo[1]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB3333B8BB0000)) 
    \spo[1]_INST_0_i_105 
       (.I0(\spo[4]_INST_0_i_29_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_30_n_0 ),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_102_n_0 ),
        .O(\spo[1]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F40F0F0)) 
    \spo[1]_INST_0_i_106 
       (.I0(a[5]),
        .I1(\spo[0]_INST_0_i_146_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_38_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_115_n_0 ),
        .O(\spo[1]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFFFA000C000C0)) 
    \spo[1]_INST_0_i_107 
       (.I0(\spo[1]_INST_0_i_63_n_0 ),
        .I1(\spo[1]_INST_0_i_89_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_116_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_107_n_0 ));
  LUT4 #(
    .INIT(16'hBBFC)) 
    \spo[1]_INST_0_i_108 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_121_n_0 ),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h000000005777FFFF)) 
    \spo[1]_INST_0_i_109 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_109_n_0 ));
  MUXF7 \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_31_n_0 ),
        .I1(\spo[1]_INST_0_i_32_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h88FF8800F000F000)) 
    \spo[1]_INST_0_i_110 
       (.I0(\spo[5]_INST_0_i_17_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_95_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011155555)) 
    \spo[1]_INST_0_i_111 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hA0FFA000CF00CF00)) 
    \spo[1]_INST_0_i_112 
       (.I0(\spo[1]_INST_0_i_95_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_18_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \spo[1]_INST_0_i_113 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h01115555FFFFFFFF)) 
    \spo[1]_INST_0_i_114 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[4]_INST_0_i_28_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \spo[1]_INST_0_i_115 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \spo[1]_INST_0_i_116 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hB8CCFFFFB8CC0000)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_33_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_34_n_0 ),
        .I3(a[8]),
        .I4(a[10]),
        .I5(\spo[1]_INST_0_i_35_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  MUXF7 \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_36_n_0 ),
        .I1(\spo[1]_INST_0_i_37_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_38_n_0 ),
        .I1(\spo[1]_INST_0_i_39_n_0 ),
        .I2(a[11]),
        .I3(\spo[1]_INST_0_i_40_n_0 ),
        .I4(a[10]),
        .I5(\spo[1]_INST_0_i_41_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  MUXF8 \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_42_n_0 ),
        .I1(\spo[1]_INST_0_i_43_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0000000055FFA800)) 
    \spo[1]_INST_0_i_16 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F7FFFFF)) 
    \spo[1]_INST_0_i_17 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAAAA)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h4FFF4F00)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[6]),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(a[8]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_6_n_0 ),
        .I1(\spo[1]_INST_0_i_7_n_0 ),
        .I2(a[12]),
        .I3(\spo[1]_INST_0_i_8_n_0 ),
        .I4(a[11]),
        .I5(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  MUXF7 \spo[1]_INST_0_i_20 
       (.I0(\spo[1]_INST_0_i_44_n_0 ),
        .I1(\spo[1]_INST_0_i_45_n_0 ),
        .O(\spo[1]_INST_0_i_20_n_0 ),
        .S(a[8]));
  MUXF7 \spo[1]_INST_0_i_21 
       (.I0(\spo[1]_INST_0_i_46_n_0 ),
        .I1(\spo[1]_INST_0_i_47_n_0 ),
        .O(\spo[1]_INST_0_i_21_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hB833B83330333000)) 
    \spo[1]_INST_0_i_22 
       (.I0(\spo[1]_INST_0_i_48_n_0 ),
        .I1(a[8]),
        .I2(\spo[3]_INST_0_i_41_n_0 ),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_26_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  MUXF7 \spo[1]_INST_0_i_23 
       (.I0(\spo[1]_INST_0_i_49_n_0 ),
        .I1(\spo[1]_INST_0_i_50_n_0 ),
        .O(\spo[1]_INST_0_i_23_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_24 
       (.I0(\spo[1]_INST_0_i_51_n_0 ),
        .I1(\spo[1]_INST_0_i_52_n_0 ),
        .O(\spo[1]_INST_0_i_24_n_0 ),
        .S(a[9]));
  LUT5 #(
    .INIT(32'hBBB8CCCC)) 
    \spo[1]_INST_0_i_25 
       (.I0(\spo[2]_INST_0_i_41_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_53_n_0 ),
        .I4(a[8]),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h33333333B8888888)) 
    \spo[1]_INST_0_i_26 
       (.I0(\spo[1]_INST_0_i_54_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_21_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFBCBF3F3)) 
    \spo[1]_INST_0_i_27 
       (.I0(\spo[3]_INST_0_i_33_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_55_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F40F0F0)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_56_n_0 ),
        .I2(a[9]),
        .I3(\spo[1]_INST_0_i_57_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hCBCBF3C333333333)) 
    \spo[1]_INST_0_i_29 
       (.I0(\spo[1]_INST_0_i_58_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_59_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(\spo[1]_INST_0_i_11_n_0 ),
        .I2(a[12]),
        .I3(\spo[1]_INST_0_i_12_n_0 ),
        .I4(a[11]),
        .I5(\spo[1]_INST_0_i_13_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8CBC833333333)) 
    \spo[1]_INST_0_i_30 
       (.I0(\spo[1]_INST_0_i_60_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_61_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3B383838CCCCCCCC)) 
    \spo[1]_INST_0_i_31 
       (.I0(\spo[1]_INST_0_i_62_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_63_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAF0FAF0FCFC0C0C0)) 
    \spo[1]_INST_0_i_32 
       (.I0(\spo[1]_INST_0_i_64_n_0 ),
        .I1(\spo[4]_INST_0_i_24_n_0 ),
        .I2(a[9]),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_65_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000000005575FFFF)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_66_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_11_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  MUXF7 \spo[1]_INST_0_i_35 
       (.I0(\spo[1]_INST_0_i_67_n_0 ),
        .I1(\spo[1]_INST_0_i_68_n_0 ),
        .O(\spo[1]_INST_0_i_35_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hCFCCCBCB33333333)) 
    \spo[1]_INST_0_i_36 
       (.I0(\spo[1]_INST_0_i_69_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_26_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00A8FFA800)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_70_n_0 ),
        .I2(a[6]),
        .I3(a[9]),
        .I4(\spo[1]_INST_0_i_71_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  MUXF7 \spo[1]_INST_0_i_38 
       (.I0(\spo[1]_INST_0_i_72_n_0 ),
        .I1(\spo[1]_INST_0_i_73_n_0 ),
        .O(\spo[1]_INST_0_i_38_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_39 
       (.I0(\spo[1]_INST_0_i_74_n_0 ),
        .I1(\spo[1]_INST_0_i_75_n_0 ),
        .I2(a[9]),
        .I3(\spo[1]_INST_0_i_76_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_77_n_0 ),
        .O(\spo[1]_INST_0_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[12]),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .I2(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  MUXF7 \spo[1]_INST_0_i_40 
       (.I0(\spo[1]_INST_0_i_78_n_0 ),
        .I1(\spo[1]_INST_0_i_79_n_0 ),
        .O(\spo[1]_INST_0_i_40_n_0 ),
        .S(a[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_41 
       (.I0(\spo[1]_INST_0_i_80_n_0 ),
        .I1(a[9]),
        .I2(\spo[1]_INST_0_i_81_n_0 ),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_82_n_0 ),
        .O(\spo[1]_INST_0_i_41_n_0 ));
  MUXF7 \spo[1]_INST_0_i_42 
       (.I0(\spo[1]_INST_0_i_83_n_0 ),
        .I1(\spo[1]_INST_0_i_84_n_0 ),
        .O(\spo[1]_INST_0_i_42_n_0 ),
        .S(a[10]));
  MUXF7 \spo[1]_INST_0_i_43 
       (.I0(\spo[1]_INST_0_i_85_n_0 ),
        .I1(\spo[1]_INST_0_i_86_n_0 ),
        .O(\spo[1]_INST_0_i_43_n_0 ),
        .S(a[10]));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spo[1]_INST_0_i_44 
       (.I0(\spo[1]_INST_0_i_87_n_0 ),
        .I1(\spo[1]_INST_0_i_88_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_89_n_0 ),
        .I4(a[6]),
        .O(\spo[1]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \spo[1]_INST_0_i_45 
       (.I0(\spo[1]_INST_0_i_90_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_91_n_0 ),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h333088880000FFFF)) 
    \spo[1]_INST_0_i_46 
       (.I0(\spo[1]_INST_0_i_92_n_0 ),
        .I1(a[7]),
        .I2(a[4]),
        .I3(\spo[1]_INST_0_i_93_n_0 ),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hAFAFCFC0)) 
    \spo[1]_INST_0_i_47 
       (.I0(\spo[0]_INST_0_i_38_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(a[6]),
        .O(\spo[1]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAD80B580)) 
    \spo[1]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \spo[1]_INST_0_i_49 
       (.I0(\spo[2]_INST_0_i_53_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[7]_INST_0_i_4_n_0 ),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_17_n_0 ),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_18_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0020F020F0)) 
    \spo[1]_INST_0_i_50 
       (.I0(\spo[1]_INST_0_i_94_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_38_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h3333BFBC)) 
    \spo[1]_INST_0_i_51 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_95_n_0 ),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h33333333B8B8B888)) 
    \spo[1]_INST_0_i_52 
       (.I0(\spo[1]_INST_0_i_62_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_34_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \spo[1]_INST_0_i_53 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \spo[1]_INST_0_i_54 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_18_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h000000005557FFFF)) 
    \spo[1]_INST_0_i_55 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555777F)) 
    \spo[1]_INST_0_i_56 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \spo[1]_INST_0_i_57 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \spo[1]_INST_0_i_58 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0015FFFF)) 
    \spo[1]_INST_0_i_59 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_19_n_0 ),
        .I1(\spo[1]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_21_n_0 ),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_22_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \spo[1]_INST_0_i_60 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h00000111FFFFFFFF)) 
    \spo[1]_INST_0_i_61 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \spo[1]_INST_0_i_62 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[1]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spo[1]_INST_0_i_63 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \spo[1]_INST_0_i_64 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[1]_INST_0_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \spo[1]_INST_0_i_65 
       (.I0(a[5]),
        .I1(\spo[6]_INST_0_i_12_n_0 ),
        .I2(a[4]),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[1]_INST_0_i_66 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .O(\spo[1]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0F0E00F0F000F)) 
    \spo[1]_INST_0_i_67 
       (.I0(\spo[1]_INST_0_i_96_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_17_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h11155555FFFFFFFF)) 
    \spo[1]_INST_0_i_68 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_10_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \spo[1]_INST_0_i_69 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_69_n_0 ));
  MUXF8 \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_23_n_0 ),
        .I1(\spo[1]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \spo[1]_INST_0_i_70 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h5555777FFFFFFFFF)) 
    \spo[1]_INST_0_i_71 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hB833B83330333000)) 
    \spo[1]_INST_0_i_72 
       (.I0(\spo[0]_INST_0_i_39_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_97_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_98_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFA0A0CFCFCFCF)) 
    \spo[1]_INST_0_i_73 
       (.I0(\spo[1]_INST_0_i_99_n_0 ),
        .I1(\spo[7]_INST_0_i_5_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_26_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555577F7)) 
    \spo[1]_INST_0_i_74 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_66_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \spo[1]_INST_0_i_75 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_25_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h3F3FBFFFFCFCFCCC)) 
    \spo[1]_INST_0_i_76 
       (.I0(\spo[3]_INST_0_i_44_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h005D)) 
    \spo[1]_INST_0_i_77 
       (.I0(a[6]),
        .I1(\spo[1]_INST_0_i_92_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[1]_INST_0_i_77_n_0 ));
  LUT5 #(
    .INIT(32'hB3B33000)) 
    \spo[1]_INST_0_i_78 
       (.I0(\spo[1]_INST_0_i_100_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_26_n_0 ),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hCBCBFBCB33333333)) 
    \spo[1]_INST_0_i_79 
       (.I0(\spo[4]_INST_0_i_21_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_101_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_79_n_0 ));
  MUXF7 \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_25_n_0 ),
        .I1(\spo[1]_INST_0_i_26_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hA0F0A0F0FFCFF0CF)) 
    \spo[1]_INST_0_i_80 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(\spo[1]_INST_0_i_102_n_0 ),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_17_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE0000FF0000)) 
    \spo[1]_INST_0_i_81 
       (.I0(a[5]),
        .I1(\spo[1]_INST_0_i_103_n_0 ),
        .I2(a[4]),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_55_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFFB8CCB8)) 
    \spo[1]_INST_0_i_82 
       (.I0(\spo[1]_INST_0_i_104_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_30_n_0 ),
        .I3(a[5]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[1]_INST_0_i_83 
       (.I0(\spo[1]_INST_0_i_105_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_106_n_0 ),
        .I3(a[9]),
        .I4(\spo[1]_INST_0_i_107_n_0 ),
        .O(\spo[1]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAF00AF00A0CFA0C0)) 
    \spo[1]_INST_0_i_84 
       (.I0(\spo[1]_INST_0_i_108_n_0 ),
        .I1(\spo[2]_INST_0_i_51_n_0 ),
        .I2(a[9]),
        .I3(a[8]),
        .I4(\spo[1]_INST_0_i_109_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \spo[1]_INST_0_i_85 
       (.I0(\spo[1]_INST_0_i_110_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_111_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .I5(\spo[1]_INST_0_i_112_n_0 ),
        .O(\spo[1]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hA8FFA80000FF00FF)) 
    \spo[1]_INST_0_i_86 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_113_n_0 ),
        .I2(a[6]),
        .I3(a[9]),
        .I4(\spo[1]_INST_0_i_114_n_0 ),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAFF)) 
    \spo[1]_INST_0_i_87 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    \spo[1]_INST_0_i_88 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \spo[1]_INST_0_i_89 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .O(\spo[1]_INST_0_i_89_n_0 ));
  MUXF7 \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_27_n_0 ),
        .I1(\spo[1]_INST_0_i_28_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \spo[1]_INST_0_i_90 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001555)) 
    \spo[1]_INST_0_i_91 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_91_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \spo[1]_INST_0_i_92 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[1]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \spo[1]_INST_0_i_93 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\spo[1]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \spo[1]_INST_0_i_94 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[1]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA888000000000)) 
    \spo[1]_INST_0_i_95 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \spo[1]_INST_0_i_96 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[1]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \spo[1]_INST_0_i_97 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[6]),
        .O(\spo[1]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \spo[1]_INST_0_i_98 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \spo[1]_INST_0_i_99 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[6]),
        .O(\spo[1]_INST_0_i_99_n_0 ));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[14]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[13]));
  LUT6 #(
    .INIT(64'h2F20CFCF2F20C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_27_n_0 ),
        .I1(a[8]),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_28_n_0 ),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_29_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BC8C8C8C)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_30_n_0 ),
        .I1(a[10]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h4F40F0F0)) 
    \spo[2]_INST_0_i_12 
       (.I0(a[8]),
        .I1(\spo[4]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_32_n_0 ),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8CCB8CCCCFFCCCC)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_33_n_0 ),
        .I1(a[10]),
        .I2(\spo[2]_INST_0_i_33_n_0 ),
        .I3(a[9]),
        .I4(\spo[3]_INST_0_i_28_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  MUXF7 \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_34_n_0 ),
        .I1(\spo[2]_INST_0_i_35_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ),
        .S(a[10]));
  LUT3 #(
    .INIT(8'hE4)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[10]),
        .I1(\spo[2]_INST_0_i_36_n_0 ),
        .I2(\spo[2]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  MUXF7 \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_38_n_0 ),
        .I1(\spo[2]_INST_0_i_39_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ),
        .S(a[10]));
  LUT5 #(
    .INIT(32'hFBCB3333)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_40_n_0 ),
        .I1(a[10]),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_41_n_0 ),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  MUXF7 \spo[2]_INST_0_i_18 
       (.I0(\spo[2]_INST_0_i_42_n_0 ),
        .I1(\spo[2]_INST_0_i_43_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h0000000000001151)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_17_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[13]));
  LUT6 #(
    .INIT(64'hA0AFA0A0CF0FCF0F)) 
    \spo[2]_INST_0_i_20 
       (.I0(\spo[2]_INST_0_i_44_n_0 ),
        .I1(\spo[2]_INST_0_i_45_n_0 ),
        .I2(a[9]),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_46_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_47_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[2]_INST_0_i_22 
       (.I0(\spo[4]_INST_0_i_24_n_0 ),
        .I1(\spo[2]_INST_0_i_48_n_0 ),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_49_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAF0FAF0F0FCF0FC0)) 
    \spo[2]_INST_0_i_23 
       (.I0(\spo[2]_INST_0_i_50_n_0 ),
        .I1(\spo[2]_INST_0_i_51_n_0 ),
        .I2(a[9]),
        .I3(a[7]),
        .I4(\spo[2]_INST_0_i_52_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hBBB88888)) 
    \spo[2]_INST_0_i_24 
       (.I0(\spo[2]_INST_0_i_53_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_26_n_0 ),
        .I4(a[7]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFCFCFCCC)) 
    \spo[2]_INST_0_i_26 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_54_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h55555575FFFFFFFF)) 
    \spo[2]_INST_0_i_27 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_9_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFCCCCCCC)) 
    \spo[2]_INST_0_i_28 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[2]_INST_0_i_55_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F4F40)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[6]),
        .I1(\spo[1]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(\spo[2]_INST_0_i_8_n_0 ),
        .I2(a[12]),
        .I3(\spo[2]_INST_0_i_9_n_0 ),
        .I4(a[11]),
        .I5(\spo[2]_INST_0_i_10_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000105555)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_9_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \spo[2]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAA00000000)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[2]_INST_0_i_56_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h000055F7)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[4]_INST_0_i_26_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_57_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h8888BB8B)) 
    \spo[2]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_58_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_41_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  MUXF7 \spo[2]_INST_0_i_37 
       (.I0(\spo[2]_INST_0_i_59_n_0 ),
        .I1(\spo[2]_INST_0_i_60_n_0 ),
        .O(\spo[2]_INST_0_i_37_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hEA00FFFFEA000000)) 
    \spo[2]_INST_0_i_38 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_58_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[3]_INST_0_i_32_n_0 ),
        .O(\spo[2]_INST_0_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \spo[2]_INST_0_i_39 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_35_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_11_n_0 ),
        .I1(\spo[2]_INST_0_i_12_n_0 ),
        .I2(a[12]),
        .I3(\spo[2]_INST_0_i_13_n_0 ),
        .I4(a[11]),
        .I5(\spo[2]_INST_0_i_14_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_11_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \spo[2]_INST_0_i_41 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \spo[2]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_61_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hE0E00F00)) 
    \spo[2]_INST_0_i_43 
       (.I0(a[7]),
        .I1(\spo[1]_INST_0_i_60_n_0 ),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .O(\spo[2]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \spo[2]_INST_0_i_44 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_44_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \spo[2]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[2]_INST_0_i_46 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(a[6]),
        .O(\spo[2]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \spo[2]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[2]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000001)) 
    \spo[2]_INST_0_i_48 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[4]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \spo[2]_INST_0_i_49 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_15_n_0 ),
        .I1(\spo[2]_INST_0_i_16_n_0 ),
        .I2(a[12]),
        .I3(\spo[2]_INST_0_i_17_n_0 ),
        .I4(a[11]),
        .I5(\spo[2]_INST_0_i_18_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \spo[2]_INST_0_i_50 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_25_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[2]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0051FFFF)) 
    \spo[2]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_44_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[2]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \spo[2]_INST_0_i_52 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \spo[2]_INST_0_i_53 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[2]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[2]_INST_0_i_54 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[2]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \spo[2]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[2]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[2]_INST_0_i_56 
       (.I0(a[2]),
        .I1(a[3]),
        .O(\spo[2]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \spo[2]_INST_0_i_57 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[2]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hCC33CC33B833BB00)) 
    \spo[2]_INST_0_i_58 
       (.I0(\spo[4]_INST_0_i_29_n_0 ),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_92_n_0 ),
        .I3(a[7]),
        .I4(a[5]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCBB8B)) 
    \spo[2]_INST_0_i_59 
       (.I0(\spo[2]_INST_0_i_62_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_89_n_0 ),
        .I4(a[7]),
        .O(\spo[2]_INST_0_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[11]),
        .I1(\spo[2]_INST_0_i_19_n_0 ),
        .I2(a[12]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \spo[2]_INST_0_i_60 
       (.I0(a[6]),
        .I1(\spo[4]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(a[8]),
        .I4(\spo[3]_INST_0_i_38_n_0 ),
        .O(\spo[2]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \spo[2]_INST_0_i_61 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[2]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    \spo[2]_INST_0_i_62 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[4]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_62_n_0 ));
  MUXF7 \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_20_n_0 ),
        .I1(\spo[2]_INST_0_i_21_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ),
        .S(a[10]));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_22_n_0 ),
        .I1(\spo[2]_INST_0_i_23_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_24_n_0 ),
        .I1(\spo[2]_INST_0_i_25_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_14_n_0 ),
        .I4(a[9]),
        .I5(\spo[2]_INST_0_i_26_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  MUXF7 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .I2(a[13]),
        .I3(\spo[3]_INST_0_i_5_n_0 ),
        .I4(a[12]),
        .I5(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \spo[3]_INST_0_i_10 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_25_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAAAA)) 
    \spo[3]_INST_0_i_11 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_26_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE000E000000F0000)) 
    \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(a[7]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(\spo[3]_INST_0_i_28_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h45FF)) 
    \spo[3]_INST_0_i_13 
       (.I0(a[7]),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEA00000000)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_30_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BFBFFFFC)) 
    \spo[3]_INST_0_i_15 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8888888)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_32_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_33_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAAAA00000000)) 
    \spo[3]_INST_0_i_17 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_34_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBCCCCCCCCC)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[3]_INST_0_i_35_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_36_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAA00000000)) 
    \spo[3]_INST_0_i_19 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_37_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(a[13]),
        .I2(\spo[3]_INST_0_i_8_n_0 ),
        .I3(a[12]),
        .I4(\spo[3]_INST_0_i_9_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333333BBB8B8B8)) 
    \spo[3]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_39_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h30BB308830FF30FF)) 
    \spo[3]_INST_0_i_21 
       (.I0(\spo[3]_INST_0_i_40_n_0 ),
        .I1(a[9]),
        .I2(\spo[6]_INST_0_i_11_n_0 ),
        .I3(a[8]),
        .I4(\spo[3]_INST_0_i_41_n_0 ),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hF0F08F80)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[8]),
        .I1(\spo[3]_INST_0_i_42_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_32_n_0 ),
        .I4(a[9]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FFFFFF)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[3]_INST_0_i_44_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_43_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[6]),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .I2(a[7]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001115555)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hCBCBF3C333333333)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_10_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[4]),
        .I1(a[5]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[3]_INST_0_i_44_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \spo[3]_INST_0_i_36 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \spo[3]_INST_0_i_37 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000000005777FFFF)) 
    \spo[3]_INST_0_i_38 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \spo[3]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[3]_INST_0_i_39_n_0 ));
  MUXF7 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \spo[3]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[4]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[3]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h55555777FFFFFFFF)) 
    \spo[3]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[3]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \spo[3]_INST_0_i_42 
       (.I0(a[6]),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .I2(a[7]),
        .O(\spo[3]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[3]_INST_0_i_43 
       (.I0(a[1]),
        .I1(a[2]),
        .O(\spo[3]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \spo[3]_INST_0_i_44 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .O(\spo[3]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h3033300030883088)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(a[11]),
        .I2(\spo[3]_INST_0_i_14_n_0 ),
        .I3(a[10]),
        .I4(\spo[3]_INST_0_i_15_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_16_n_0 ),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .I2(a[11]),
        .I3(\spo[3]_INST_0_i_17_n_0 ),
        .I4(a[10]),
        .I5(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[10]),
        .I1(\spo[3]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[8]_INST_0_i_4_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_20_n_0 ),
        .I1(a[10]),
        .I2(\spo[3]_INST_0_i_21_n_0 ),
        .I3(a[11]),
        .I4(\spo[3]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFCCB3B33333)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(\spo[4]_INST_0_i_1_n_0 ),
        .I2(a[14]),
        .I3(\spo[4]_INST_0_i_2_n_0 ),
        .I4(a[13]),
        .I5(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hA0A0A0A0CFC0C0C0)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_4_n_0 ),
        .I1(\spo[4]_INST_0_i_5_n_0 ),
        .I2(a[12]),
        .I3(a[10]),
        .I4(\spo[4]_INST_0_i_6_n_0 ),
        .I5(a[11]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB8BBBBB)) 
    \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_23_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF8FF08F)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(a[6]),
        .I2(a[9]),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_10_n_0 ),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \spo[4]_INST_0_i_12 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_11_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hBC8CCCCC)) 
    \spo[4]_INST_0_i_13 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(a[8]),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_27_n_0 ),
        .I4(a[7]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055557FFF)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[4]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5777FFFFFFFFFFFF)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000030080800000)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(a[12]),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_8_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \spo[4]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800000)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3F3CBCBCCCCCCCCC)) 
    \spo[4]_INST_0_i_23 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(a[9]),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_29_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[6]),
        .I1(\spo[4]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555F7F)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[2]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAAAA)) 
    \spo[4]_INST_0_i_29 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(a[10]),
        .I2(\spo[4]_INST_0_i_12_n_0 ),
        .I3(a[8]),
        .I4(a[9]),
        .I5(\spo[4]_INST_0_i_13_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002E222E2E)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(a[9]),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(a[10]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005EA00EA)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[7]),
        .I1(\spo[4]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[4]_INST_0_i_17_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2FF020F0)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_18_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_19_n_0 ),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0FB000B0)) 
    \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_21_n_0 ),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(a[9]),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_13_n_0 ),
        .I4(a[11]),
        .I5(\spo[4]_INST_0_i_22_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[12]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[13]),
        .I4(a[14]),
        .I5(\spo[5]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  LUT5 #(
    .INIT(32'h000055F7)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(\spo[5]_INST_0_i_4_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spo[5]_INST_0_i_10 
       (.I0(a[2]),
        .I1(a[3]),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spo[5]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_19_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_16_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFEAA0000)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_17_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00001151FFFFFFFF)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_18_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h05155555FFFFFFFF)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3B3B3B3BFCFCFCCC)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(a[11]),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_6_n_0 ),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  MUXF7 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[13]));
  LUT6 #(
    .INIT(64'h0000000051555555)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_9_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000005557FFFF)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_10_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA00000000)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_11_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCFCCBBBB)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(a[12]),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_13_n_0 ),
        .I4(a[11]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFCCB3B33333)) 
    \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_14_n_0 ),
        .I1(a[12]),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_15_n_0 ),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  MUXF7 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[14]));
  LUT6 #(
    .INIT(64'hFCBBFC88FF00FF00)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(a[13]),
        .I2(\spo[6]_INST_0_i_4_n_0 ),
        .I3(a[12]),
        .I4(\spo[6]_INST_0_i_5_n_0 ),
        .I5(a[11]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \spo[6]_INST_0_i_10 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[6]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \spo[6]_INST_0_i_11 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[6]_INST_0_i_12_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[6]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \spo[6]_INST_0_i_12 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[12]),
        .I2(a[11]),
        .I3(\spo[6]_INST_0_i_6_n_0 ),
        .I4(a[13]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077F7FFFF)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_9_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0FB000B0)) 
    \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(a[7]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(\spo[6]_INST_0_i_11_n_0 ),
        .I5(a[9]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000515)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAAAA00000000)) 
    \spo[6]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8888888)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[14]),
        .I2(a[12]),
        .I3(\spo[7]_INST_0_i_2_n_0 ),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(a[13]),
        .I2(\spo[7]_INST_0_i_3_n_0 ),
        .I3(a[12]),
        .I4(\spo[5]_INST_0_i_1_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800000)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000000)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(\spo[7]_INST_0_i_5_n_0 ),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[6]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE00FE00000000)) 
    \spo[8]_INST_0 
       (.I0(a[12]),
        .I1(\spo[8]_INST_0_i_1_n_0 ),
        .I2(a[11]),
        .I3(a[13]),
        .I4(\spo[8]_INST_0_i_2_n_0 ),
        .I5(a[14]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[8]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[11]),
        .I1(a[9]),
        .I2(\spo[8]_INST_0_i_4_n_0 ),
        .I3(a[8]),
        .I4(a[10]),
        .I5(a[12]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA888000000000000)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
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
