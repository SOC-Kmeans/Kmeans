////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Random_1_synthesis.v
// /___/   /\     Timestamp: Tue Jun 13 20:11:40 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Random_1.ngc Random_1_synthesis.v 
// Device	: xc7z010-3-clg400
// Input file	: Random_1.ngc
// Output file	: D:\project\soc\Kmeans\Kmeans\netgen\synthesis\Random_1_synthesis.v
// # of Modules	: 1
// Design Name	: Random_1
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Random_1 (
  Random1_clk, Random1_rst, ToBlockRam_clka, dina, SampleX, SampleY, ADDRA, S_VALUE_I
);
  input Random1_clk;
  input Random1_rst;
  output ToBlockRam_clka;
  output dina;
  output [12 : 0] SampleX;
  output [11 : 0] SampleY;
  output [18 : 0] ADDRA;
  output [11 : 0] S_VALUE_I;
  wire Random1_clk_BUFGP_0;
  wire Random1_rst_IBUF_1;
  wire state_FSM_FFd6_3;
  wire state_FSM_FFd3_4;
  wire state_FSM_FFd2_5;
  wire state_FSM_FFd5_6;
  wire _n0202_BUFG_7;
  wire SampleY_11_8;
  wire SampleY_10_9;
  wire SampleY_9_10;
  wire SampleY_8_11;
  wire SampleY_7_12;
  wire SampleY_6_13;
  wire SampleY_5_14;
  wire SampleY_4_15;
  wire dina_OBUF_16;
  wire SampleX_12_17;
  wire SampleX_11_18;
  wire SampleX_10_19;
  wire SampleX_9_20;
  wire SampleX_8_21;
  wire SampleX_7_22;
  wire SampleX_6_23;
  wire SampleX_5_24;
  wire SampleX_4_25;
  wire SampleX_3_26;
  wire SampleX_0_OBUF_27;
  wire ram1_31_28;
  wire ram1_30_29;
  wire ram1_29_30;
  wire ram1_28_31;
  wire ram1_27_32;
  wire ram1_26_33;
  wire ram1_25_34;
  wire ram1_24_35;
  wire ram1_23_36;
  wire ram1_22_37;
  wire ram1_21_38;
  wire ram1_20_39;
  wire ram1_19_40;
  wire ram1_18_41;
  wire ram1_17_42;
  wire ram1_16_43;
  wire ram1_15_44;
  wire ram1_14_45;
  wire ram1_13_46;
  wire ram1_12_47;
  wire ram1_11_48;
  wire ram1_10_49;
  wire ram1_9_50;
  wire ram1_8_51;
  wire ram1_7_52;
  wire ram1_6_53;
  wire ram1_5_54;
  wire ram1_4_55;
  wire ram1_3_56;
  wire ram1_2_57;
  wire ram1_1_58;
  wire ram1_0_59;
  wire ADDRA_18_60;
  wire ADDRA_17_61;
  wire ADDRA_16_62;
  wire ADDRA_15_63;
  wire ADDRA_14_64;
  wire ADDRA_13_65;
  wire ADDRA_12_66;
  wire ADDRA_11_67;
  wire ADDRA_10_68;
  wire ADDRA_9_69;
  wire ADDRA_8_70;
  wire ADDRA_7_71;
  wire ADDRA_6_72;
  wire ADDRA_5_73;
  wire ADDRA_4_74;
  wire ADDRA_3_75;
  wire ADDRA_2_76;
  wire ADDRA_1_77;
  wire ADDRA_0_78;
  wire \state[3]_GND_1_o_select_1313_OUT<31> ;
  wire \state[3]_GND_1_o_select_1313_OUT<30> ;
  wire \state[3]_GND_1_o_select_1313_OUT<29> ;
  wire \state[3]_GND_1_o_select_1313_OUT<28> ;
  wire \state[3]_GND_1_o_select_1313_OUT<27> ;
  wire \state[3]_GND_1_o_select_1313_OUT<26> ;
  wire \state[3]_GND_1_o_select_1313_OUT<25> ;
  wire \state[3]_GND_1_o_select_1313_OUT<24> ;
  wire \state[3]_GND_1_o_select_1313_OUT<23> ;
  wire \state[3]_GND_1_o_select_1313_OUT<22> ;
  wire \state[3]_GND_1_o_select_1313_OUT<21> ;
  wire \state[3]_GND_1_o_select_1313_OUT<20> ;
  wire \state[3]_GND_1_o_select_1313_OUT<19> ;
  wire \state[3]_GND_1_o_select_1313_OUT<18> ;
  wire \state[3]_GND_1_o_select_1313_OUT<17> ;
  wire \state[3]_GND_1_o_select_1313_OUT<16> ;
  wire \state[3]_GND_1_o_select_1313_OUT<15> ;
  wire \state[3]_GND_1_o_select_1313_OUT<14> ;
  wire \state[3]_GND_1_o_select_1313_OUT<13> ;
  wire \state[3]_GND_1_o_select_1313_OUT<12> ;
  wire \state[3]_GND_1_o_select_1313_OUT<11> ;
  wire \state[3]_GND_1_o_select_1313_OUT<10> ;
  wire \state[3]_GND_1_o_select_1313_OUT<9> ;
  wire \state[3]_GND_1_o_select_1313_OUT<8> ;
  wire \state[3]_GND_1_o_select_1313_OUT<7> ;
  wire \state[3]_GND_1_o_select_1313_OUT<6> ;
  wire \state[3]_GND_1_o_select_1313_OUT<5> ;
  wire \state[3]_GND_1_o_select_1313_OUT<4> ;
  wire \state[3]_GND_1_o_select_1313_OUT<3> ;
  wire \state[3]_GND_1_o_select_1313_OUT<2> ;
  wire \state[3]_GND_1_o_select_1313_OUT<1> ;
  wire \state[3]_GND_1_o_select_1313_OUT<0> ;
  wire \state[3]_GND_1_o_select_1314_OUT<18> ;
  wire \state[3]_GND_1_o_select_1314_OUT<17> ;
  wire \state[3]_GND_1_o_select_1314_OUT<16> ;
  wire \state[3]_GND_1_o_select_1314_OUT<15> ;
  wire \state[3]_GND_1_o_select_1314_OUT<14> ;
  wire \state[3]_GND_1_o_select_1314_OUT<13> ;
  wire \state[3]_GND_1_o_select_1314_OUT<12> ;
  wire \state[3]_GND_1_o_select_1314_OUT<11> ;
  wire \state[3]_GND_1_o_select_1314_OUT<10> ;
  wire \state[3]_GND_1_o_select_1314_OUT<9> ;
  wire \state[3]_GND_1_o_select_1314_OUT<8> ;
  wire \state[3]_GND_1_o_select_1314_OUT<7> ;
  wire \state[3]_GND_1_o_select_1314_OUT<6> ;
  wire \state[3]_GND_1_o_select_1314_OUT<5> ;
  wire \state[3]_GND_1_o_select_1314_OUT<4> ;
  wire \state[3]_GND_1_o_select_1314_OUT<3> ;
  wire \state[3]_GND_1_o_select_1314_OUT<2> ;
  wire \state[3]_GND_1_o_select_1314_OUT<1> ;
  wire \state[3]_GND_1_o_select_1314_OUT<0> ;
  wire _n0187;
  wire \state[3]_SampleX[12]_select_1316_OUT<9> ;
  wire \state[3]_SampleX[12]_select_1316_OUT<3> ;
  wire \state[3]_SampleX[12]_select_1316_OUT<5> ;
  wire \state[3]_SampleX[12]_select_1316_OUT<10> ;
  wire \ram1[26]_ram1[10]_XOR_112_o ;
  wire \ram1[26]_ram1[20]_XOR_118_o ;
  wire \ram1[16]_ram1[24]_XOR_114_o ;
  wire \state[3]_SampleX[12]_select_1316_OUT<12> ;
  wire \state[3]_SampleX[12]_select_1316_OUT<7> ;
  wire \state[3]_SampleX[12]_select_1316_OUT<11> ;
  wire \ram1[22]_ram1[7]_XOR_111_o ;
  wire \state[3]_SampleX[12]_select_1316_OUT<6> ;
  wire \ram1[21]_ram1[8]_XOR_113_o ;
  wire \state[3]_SampleX[12]_select_1316_OUT<8> ;
  wire \ram1[7]_ram1[17]_XOR_116_o ;
  wire \ram1[13]_ram1[15]_XOR_115_o ;
  wire \state[3]_SampleX[12]_select_1316_OUT<4> ;
  wire \ram1[11]_ram1[4]_XOR_117_o ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<18> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<17> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<16> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<15> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<14> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<13> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<12> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<11> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<10> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<9> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<8> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<7> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<6> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<5> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<4> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<3> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<2> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<1> ;
  wire \ADDRA[18]_GND_1_o_add_1289_OUT<0> ;
  wire N1;
  wire Random1_rst_inv;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1_187 ;
  wire \state_FSM_FFd5-In_188 ;
  wire state_FSM_FFd4_189;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_lut<0> ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<0>_198 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_199 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_200 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_201 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_202 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_203 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_204 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_205 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_206 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_207 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_208 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_209 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_210 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_211 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_212 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_213 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_214 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_215 ;
  wire N0;
  wire N2;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_rt_271 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_rt_272 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_rt_273 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_rt_274 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_rt_275 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_rt_276 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_rt_277 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_rt_278 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_rt_279 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_rt_280 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_rt_281 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_rt_282 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_rt_283 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_rt_284 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_rt_285 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_rt_286 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_rt_287 ;
  wire \Mcount_divclkcnt_cy<1>_rt_288 ;
  wire \Mcount_divclkcnt_cy<2>_rt_289 ;
  wire \Mcount_divclkcnt_cy<3>_rt_290 ;
  wire \Mcount_divclkcnt_cy<4>_rt_291 ;
  wire \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<18>_rt_292 ;
  wire \Mcount_divclkcnt_xor<5>_rt_293 ;
  wire _n0202;
  wire [5 : 0] divclkcnt;
  wire [5 : 0] Result;
  wire [6 : 0] SampleCnt;
  wire [0 : 0] Mcount_divclkcnt_lut;
  wire [4 : 0] Mcount_divclkcnt_cy;
  VCC   XST_VCC (
    .P(SampleX_0_OBUF_27)
  );
  GND   XST_GND (
    .G(N1)
  );
  LD   ram1_31 (
    .D(\state[3]_GND_1_o_select_1313_OUT<31> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_31_28)
  );
  LD   ram1_30 (
    .D(\state[3]_GND_1_o_select_1313_OUT<30> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_30_29)
  );
  LD   ram1_29 (
    .D(\state[3]_GND_1_o_select_1313_OUT<29> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_29_30)
  );
  LD   ram1_28 (
    .D(\state[3]_GND_1_o_select_1313_OUT<28> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_28_31)
  );
  LD   ram1_27 (
    .D(\state[3]_GND_1_o_select_1313_OUT<27> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_27_32)
  );
  LD   ram1_26 (
    .D(\state[3]_GND_1_o_select_1313_OUT<26> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_26_33)
  );
  LD   ram1_25 (
    .D(\state[3]_GND_1_o_select_1313_OUT<25> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_25_34)
  );
  LD   ram1_24 (
    .D(\state[3]_GND_1_o_select_1313_OUT<24> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_24_35)
  );
  LD   ram1_23 (
    .D(\state[3]_GND_1_o_select_1313_OUT<23> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_23_36)
  );
  LD   ram1_22 (
    .D(\state[3]_GND_1_o_select_1313_OUT<22> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_22_37)
  );
  LD   ram1_21 (
    .D(\state[3]_GND_1_o_select_1313_OUT<21> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_21_38)
  );
  LD   ram1_20 (
    .D(\state[3]_GND_1_o_select_1313_OUT<20> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_20_39)
  );
  LD   ram1_19 (
    .D(\state[3]_GND_1_o_select_1313_OUT<19> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_19_40)
  );
  LD   ram1_18 (
    .D(\state[3]_GND_1_o_select_1313_OUT<18> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_18_41)
  );
  LD   ram1_17 (
    .D(\state[3]_GND_1_o_select_1313_OUT<17> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_17_42)
  );
  LD   ram1_16 (
    .D(\state[3]_GND_1_o_select_1313_OUT<16> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_16_43)
  );
  LD   ram1_15 (
    .D(\state[3]_GND_1_o_select_1313_OUT<15> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_15_44)
  );
  LD   ram1_14 (
    .D(\state[3]_GND_1_o_select_1313_OUT<14> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_14_45)
  );
  LD   ram1_13 (
    .D(\state[3]_GND_1_o_select_1313_OUT<13> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_13_46)
  );
  LD   ram1_12 (
    .D(\state[3]_GND_1_o_select_1313_OUT<12> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_12_47)
  );
  LD   ram1_11 (
    .D(\state[3]_GND_1_o_select_1313_OUT<11> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_11_48)
  );
  LD   ram1_10 (
    .D(\state[3]_GND_1_o_select_1313_OUT<10> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_10_49)
  );
  LD   ram1_9 (
    .D(\state[3]_GND_1_o_select_1313_OUT<9> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_9_50)
  );
  LD   ram1_8 (
    .D(\state[3]_GND_1_o_select_1313_OUT<8> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_8_51)
  );
  LD   ram1_7 (
    .D(\state[3]_GND_1_o_select_1313_OUT<7> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_7_52)
  );
  LD   ram1_6 (
    .D(\state[3]_GND_1_o_select_1313_OUT<6> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_6_53)
  );
  LD   ram1_5 (
    .D(\state[3]_GND_1_o_select_1313_OUT<5> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_5_54)
  );
  LD   ram1_4 (
    .D(\state[3]_GND_1_o_select_1313_OUT<4> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_4_55)
  );
  LD   ram1_3 (
    .D(\state[3]_GND_1_o_select_1313_OUT<3> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_3_56)
  );
  LD   ram1_2 (
    .D(\state[3]_GND_1_o_select_1313_OUT<2> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_2_57)
  );
  LD   ram1_1 (
    .D(\state[3]_GND_1_o_select_1313_OUT<1> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_1_58)
  );
  LD   ram1_0 (
    .D(\state[3]_GND_1_o_select_1313_OUT<0> ),
    .G(_n0202_BUFG_7),
    .Q(ram1_0_59)
  );
  LD   ADDRA_18 (
    .D(\state[3]_GND_1_o_select_1314_OUT<18> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_18_60)
  );
  LD   ADDRA_17 (
    .D(\state[3]_GND_1_o_select_1314_OUT<17> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_17_61)
  );
  LD   ADDRA_16 (
    .D(\state[3]_GND_1_o_select_1314_OUT<16> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_16_62)
  );
  LD   ADDRA_15 (
    .D(\state[3]_GND_1_o_select_1314_OUT<15> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_15_63)
  );
  LD   ADDRA_14 (
    .D(\state[3]_GND_1_o_select_1314_OUT<14> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_14_64)
  );
  LD   ADDRA_11 (
    .D(\state[3]_GND_1_o_select_1314_OUT<11> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_11_67)
  );
  LD   ADDRA_13 (
    .D(\state[3]_GND_1_o_select_1314_OUT<13> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_13_65)
  );
  LD   ADDRA_12 (
    .D(\state[3]_GND_1_o_select_1314_OUT<12> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_12_66)
  );
  LD   ADDRA_10 (
    .D(\state[3]_GND_1_o_select_1314_OUT<10> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_10_68)
  );
  LD   ADDRA_9 (
    .D(\state[3]_GND_1_o_select_1314_OUT<9> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_9_69)
  );
  LD   ADDRA_8 (
    .D(\state[3]_GND_1_o_select_1314_OUT<8> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_8_70)
  );
  LD   ADDRA_7 (
    .D(\state[3]_GND_1_o_select_1314_OUT<7> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_7_71)
  );
  LD   ADDRA_6 (
    .D(\state[3]_GND_1_o_select_1314_OUT<6> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_6_72)
  );
  LD   ADDRA_5 (
    .D(\state[3]_GND_1_o_select_1314_OUT<5> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_5_73)
  );
  LD   ADDRA_4 (
    .D(\state[3]_GND_1_o_select_1314_OUT<4> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_4_74)
  );
  LD   ADDRA_3 (
    .D(\state[3]_GND_1_o_select_1314_OUT<3> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_3_75)
  );
  LD   ADDRA_2 (
    .D(\state[3]_GND_1_o_select_1314_OUT<2> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_2_76)
  );
  LD   ADDRA_1 (
    .D(\state[3]_GND_1_o_select_1314_OUT<1> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_1_77)
  );
  LD   ADDRA_0 (
    .D(\state[3]_GND_1_o_select_1314_OUT<0> ),
    .G(_n0202_BUFG_7),
    .Q(ADDRA_0_78)
  );
  LD   SampleY_11 (
    .D(\ram1[26]_ram1[20]_XOR_118_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_11_8)
  );
  LD   SampleY_10 (
    .D(\ram1[11]_ram1[4]_XOR_117_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_10_9)
  );
  LD   SampleY_9 (
    .D(\ram1[7]_ram1[17]_XOR_116_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_9_10)
  );
  LD   SampleY_8 (
    .D(\ram1[13]_ram1[15]_XOR_115_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_8_11)
  );
  LD   SampleY_7 (
    .D(\ram1[16]_ram1[24]_XOR_114_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_7_12)
  );
  LD   SampleY_6 (
    .D(\ram1[21]_ram1[8]_XOR_113_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_6_13)
  );
  LD   SampleY_5 (
    .D(\ram1[26]_ram1[10]_XOR_112_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_5_14)
  );
  LD   SampleY_4 (
    .D(\ram1[22]_ram1[7]_XOR_111_o ),
    .G(state_FSM_FFd5_6),
    .Q(SampleY_4_15)
  );
  LD   dina_62 (
    .D(state_FSM_FFd2_5),
    .G(_n0187),
    .Q(dina_OBUF_16)
  );
  LD   SampleX_12 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<12> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_12_17)
  );
  LD   SampleX_11 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<11> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_11_18)
  );
  LD   SampleX_10 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<10> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_10_19)
  );
  LD   SampleX_9 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<9> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_9_20)
  );
  LD   SampleX_8 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<8> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_8_21)
  );
  LD   SampleX_7 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<7> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_7_22)
  );
  LD   SampleX_6 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<6> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_6_23)
  );
  LD   SampleX_5 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<5> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_5_24)
  );
  LD   SampleX_4 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<4> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_4_25)
  );
  LD   SampleX_3 (
    .D(\state[3]_SampleX[12]_select_1316_OUT<3> ),
    .G(state_FSM_FFd5_6),
    .Q(SampleX_3_26)
  );
  FDC   divclkcnt_0 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[0]),
    .Q(divclkcnt[0])
  );
  FDC   divclkcnt_1 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[1]),
    .Q(divclkcnt[1])
  );
  FDC   divclkcnt_2 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[2]),
    .Q(divclkcnt[2])
  );
  FDC   divclkcnt_3 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[3]),
    .Q(divclkcnt[3])
  );
  FDC   divclkcnt_4 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[4]),
    .Q(divclkcnt[4])
  );
  FDC   divclkcnt_5 (
    .C(Random1_clk_BUFGP_0),
    .CLR(Random1_rst_inv),
    .D(Result[5]),
    .Q(divclkcnt[5])
  );
  FDP   state_FSM_FFd6 (
    .C(divclkcnt[5]),
    .D(N1),
    .PRE(Random1_rst_inv),
    .Q(state_FSM_FFd6_3)
  );
  FDC   state_FSM_FFd5 (
    .C(divclkcnt[5]),
    .CLR(Random1_rst_inv),
    .D(\state_FSM_FFd5-In_188 ),
    .Q(state_FSM_FFd5_6)
  );
  FDC   state_FSM_FFd4 (
    .C(divclkcnt[5]),
    .CLR(Random1_rst_inv),
    .D(state_FSM_FFd5_6),
    .Q(state_FSM_FFd4_189)
  );
  FDC   state_FSM_FFd3 (
    .C(divclkcnt[5]),
    .CLR(Random1_rst_inv),
    .D(state_FSM_FFd4_189),
    .Q(state_FSM_FFd3_4)
  );
  FDC   state_FSM_FFd2 (
    .C(divclkcnt[5]),
    .CLR(Random1_rst_inv),
    .D(state_FSM_FFd3_4),
    .Q(state_FSM_FFd2_5)
  );
  FDCE   SampleCnt_0 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<0>1 ),
    .Q(SampleCnt[0])
  );
  FDCE   SampleCnt_1 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<1>1 ),
    .Q(SampleCnt[1])
  );
  FDCE   SampleCnt_2 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<2>1 ),
    .Q(SampleCnt[2])
  );
  FDCE   SampleCnt_3 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<3>1 ),
    .Q(SampleCnt[3])
  );
  FDCE   SampleCnt_4 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<4>1 ),
    .Q(SampleCnt[4])
  );
  FDCE   SampleCnt_5 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<5>1 ),
    .Q(SampleCnt[5])
  );
  FDCE   SampleCnt_6 (
    .C(divclkcnt[5]),
    .CE(state_FSM_FFd2_5),
    .CLR(Random1_rst_inv),
    .D(\Result<6>1_187 ),
    .Q(SampleCnt[6])
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<0>  (
    .CI(N1),
    .DI(SampleX_0_OBUF_27),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_lut<0> ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<0>_198 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<0>  (
    .CI(N1),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_lut<0> ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<0> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<0>_198 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_rt_271 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_199 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<1>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<0>_198 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_rt_271 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<1> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_199 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_rt_272 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_200 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<2>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_199 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_rt_272 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<2> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_200 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_rt_273 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_201 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<3>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_200 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_rt_273 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<3> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_201 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_rt_274 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_202 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<4>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_201 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_rt_274 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<4> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_202 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_rt_275 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_203 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<5>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_202 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_rt_275 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<5> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_203 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_rt_276 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_204 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<6>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_203 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_rt_276 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<6> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_204 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_rt_277 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_205 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<7>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_204 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_rt_277 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<7> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_205 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_rt_278 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_206 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<8>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_205 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_rt_278 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<8> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_206 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_rt_279 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_207 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<9>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_206 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_rt_279 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<9> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_207 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_rt_280 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_208 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<10>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_207 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_rt_280 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<10> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_208 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_rt_281 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_209 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<11>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_208 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_rt_281 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<11> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_209 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_rt_282 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_210 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<12>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_209 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_rt_282 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<12> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_210 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_rt_283 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_211 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<13>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_210 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_rt_283 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<13> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_211 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_rt_284 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_212 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<14>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_211 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_rt_284 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<14> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_212 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_rt_285 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_213 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<15>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_212 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_rt_285 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<15> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_213 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_rt_286 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_214 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<16>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_213 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_rt_286 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<16> )
  );
  MUXCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_214 ),
    .DI(N1),
    .S(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_rt_287 ),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_215 )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<17>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_214 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_rt_287 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<17> )
  );
  XORCY   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<18>  (
    .CI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_215 ),
    .LI(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<18>_rt_292 ),
    .O(\ADDRA[18]_GND_1_o_add_1289_OUT<18> )
  );
  MUXCY   \Mcount_divclkcnt_cy<0>  (
    .CI(N1),
    .DI(SampleX_0_OBUF_27),
    .S(Mcount_divclkcnt_lut[0]),
    .O(Mcount_divclkcnt_cy[0])
  );
  XORCY   \Mcount_divclkcnt_xor<0>  (
    .CI(N1),
    .LI(Mcount_divclkcnt_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_divclkcnt_cy<1>  (
    .CI(Mcount_divclkcnt_cy[0]),
    .DI(N1),
    .S(\Mcount_divclkcnt_cy<1>_rt_288 ),
    .O(Mcount_divclkcnt_cy[1])
  );
  XORCY   \Mcount_divclkcnt_xor<1>  (
    .CI(Mcount_divclkcnt_cy[0]),
    .LI(\Mcount_divclkcnt_cy<1>_rt_288 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_divclkcnt_cy<2>  (
    .CI(Mcount_divclkcnt_cy[1]),
    .DI(N1),
    .S(\Mcount_divclkcnt_cy<2>_rt_289 ),
    .O(Mcount_divclkcnt_cy[2])
  );
  XORCY   \Mcount_divclkcnt_xor<2>  (
    .CI(Mcount_divclkcnt_cy[1]),
    .LI(\Mcount_divclkcnt_cy<2>_rt_289 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_divclkcnt_cy<3>  (
    .CI(Mcount_divclkcnt_cy[2]),
    .DI(N1),
    .S(\Mcount_divclkcnt_cy<3>_rt_290 ),
    .O(Mcount_divclkcnt_cy[3])
  );
  XORCY   \Mcount_divclkcnt_xor<3>  (
    .CI(Mcount_divclkcnt_cy[2]),
    .LI(\Mcount_divclkcnt_cy<3>_rt_290 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_divclkcnt_cy<4>  (
    .CI(Mcount_divclkcnt_cy[3]),
    .DI(N1),
    .S(\Mcount_divclkcnt_cy<4>_rt_291 ),
    .O(Mcount_divclkcnt_cy[4])
  );
  XORCY   \Mcount_divclkcnt_xor<4>  (
    .CI(Mcount_divclkcnt_cy[3]),
    .LI(\Mcount_divclkcnt_cy<4>_rt_291 ),
    .O(Result[4])
  );
  XORCY   \Mcount_divclkcnt_xor<5>  (
    .CI(Mcount_divclkcnt_cy[4]),
    .LI(\Mcount_divclkcnt_xor<5>_rt_293 ),
    .O(Result[5])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  _n02021 (
    .I0(state_FSM_FFd6_3),
    .I1(state_FSM_FFd5_6),
    .O(_n0202)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<18>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<18> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<18> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<17>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<17> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<17> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<16>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<16> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<16> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<15>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<15> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<14>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<14> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<14> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<13>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<13> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<13> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<12>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<12> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<12> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<11>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<11> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<10>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<10> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<9>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<9> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<8>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<8> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<7>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<7> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<6>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<6> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<5>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<5> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<4>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<4> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<3>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<3> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<2>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<2> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<1>1  (
    .I0(state_FSM_FFd5_6),
    .I1(\ADDRA[18]_GND_1_o_add_1289_OUT<1> ),
    .O(\state[3]_GND_1_o_select_1314_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \state[3]_GND_1_o_select_1314_OUT<0>1  (
    .I0(\ADDRA[18]_GND_1_o_add_1289_OUT<0> ),
    .I1(state_FSM_FFd5_6),
    .O(\state[3]_GND_1_o_select_1314_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[11]_ram1[4]_XOR_117_o_xo<0>1  (
    .I0(ram1_11_48),
    .I1(ram1_4_55),
    .O(\ram1[11]_ram1[4]_XOR_117_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<4>_xo<0>1  (
    .I0(ram1_14_45),
    .I1(ram1_3_56),
    .O(\state[3]_SampleX[12]_select_1316_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[13]_ram1[15]_XOR_115_o_xo<0>1  (
    .I0(ram1_13_46),
    .I1(ram1_15_44),
    .O(\ram1[13]_ram1[15]_XOR_115_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[7]_ram1[17]_XOR_116_o_xo<0>1  (
    .I0(ram1_17_42),
    .I1(ram1_7_52),
    .O(\ram1[7]_ram1[17]_XOR_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[21]_ram1[8]_XOR_113_o_xo<0>1  (
    .I0(ram1_21_38),
    .I1(ram1_8_51),
    .O(\ram1[21]_ram1[8]_XOR_113_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<6>_xo<0>1  (
    .I0(ram1_0_59),
    .I1(ram1_21_38),
    .O(\state[3]_SampleX[12]_select_1316_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[22]_ram1[7]_XOR_111_o_xo<0>1  (
    .I0(ram1_22_37),
    .I1(ram1_7_52),
    .O(\ram1[22]_ram1[7]_XOR_111_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<11>_xo<0>1  (
    .I0(ram1_19_40),
    .I1(ram1_22_37),
    .O(\state[3]_SampleX[12]_select_1316_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<12>_xo<0>1  (
    .I0(ram1_23_36),
    .I1(ram1_5_54),
    .O(\state[3]_SampleX[12]_select_1316_OUT<12> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<7>_xo<0>1  (
    .I0(ram1_11_48),
    .I1(ram1_22_37),
    .O(\state[3]_SampleX[12]_select_1316_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[16]_ram1[24]_XOR_114_o_xo<0>1  (
    .I0(ram1_16_43),
    .I1(ram1_24_35),
    .O(\ram1[16]_ram1[24]_XOR_114_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[26]_ram1[10]_XOR_112_o_xo<0>1  (
    .I0(ram1_10_49),
    .I1(ram1_26_33),
    .O(\ram1[26]_ram1[10]_XOR_112_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_ram1[26]_ram1[20]_XOR_118_o_xo<0>1  (
    .I0(ram1_20_39),
    .I1(ram1_26_33),
    .O(\ram1[26]_ram1[20]_XOR_118_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<10>_xo<0>1  (
    .I0(ram1_1_58),
    .I1(ram1_27_32),
    .O(\state[3]_SampleX[12]_select_1316_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<5>_xo<0>1  (
    .I0(ram1_27_32),
    .I1(ram1_2_57),
    .O(\state[3]_SampleX[12]_select_1316_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<3>_xo<0>1  (
    .I0(ram1_28_31),
    .I1(ram1_9_50),
    .O(\state[3]_SampleX[12]_select_1316_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_state[3]_SampleX[12]_select_1316_OUT<9>_xo<0>1  (
    .I0(ram1_13_46),
    .I1(ram1_31_28),
    .O(\state[3]_SampleX[12]_select_1316_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_SampleCnt_xor<1>11  (
    .I0(SampleCnt[1]),
    .I1(SampleCnt[0]),
    .O(\Result<1>1 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  _n01871 (
    .I0(state_FSM_FFd3_4),
    .I1(state_FSM_FFd5_6),
    .I2(state_FSM_FFd6_3),
    .I3(state_FSM_FFd2_5),
    .O(_n0187)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<0>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_0_59),
    .I2(ram1_31_28),
    .O(\state[3]_GND_1_o_select_1313_OUT<31> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<1>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_0_59),
    .I2(ram1_1_58),
    .O(\state[3]_GND_1_o_select_1313_OUT<30> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<2>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_1_58),
    .I2(ram1_2_57),
    .O(\state[3]_GND_1_o_select_1313_OUT<29> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<3>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_2_57),
    .I2(ram1_3_56),
    .O(\state[3]_GND_1_o_select_1313_OUT<28> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<4>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_3_56),
    .I2(ram1_4_55),
    .O(\state[3]_GND_1_o_select_1313_OUT<27> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<5>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_4_55),
    .I2(ram1_5_54),
    .O(\state[3]_GND_1_o_select_1313_OUT<26> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<6>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_5_54),
    .I2(ram1_6_53),
    .O(\state[3]_GND_1_o_select_1313_OUT<25> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<7>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_6_53),
    .I2(ram1_7_52),
    .O(\state[3]_GND_1_o_select_1313_OUT<24> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<8>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_7_52),
    .I2(ram1_8_51),
    .O(\state[3]_GND_1_o_select_1313_OUT<23> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<9>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_8_51),
    .I2(ram1_9_50),
    .O(\state[3]_GND_1_o_select_1313_OUT<22> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<10>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_10_49),
    .I2(ram1_9_50),
    .O(\state[3]_GND_1_o_select_1313_OUT<21> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<11>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_10_49),
    .I2(ram1_11_48),
    .O(\state[3]_GND_1_o_select_1313_OUT<20> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<12>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_11_48),
    .I2(ram1_12_47),
    .O(\state[3]_GND_1_o_select_1313_OUT<19> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<13>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_12_47),
    .I2(ram1_13_46),
    .O(\state[3]_GND_1_o_select_1313_OUT<18> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<14>2  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_13_46),
    .I2(ram1_14_45),
    .O(\state[3]_GND_1_o_select_1313_OUT<17> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<15>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_14_45),
    .I2(ram1_15_44),
    .O(\state[3]_GND_1_o_select_1313_OUT<16> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<16>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_15_44),
    .I2(ram1_16_43),
    .O(\state[3]_GND_1_o_select_1313_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<18>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_17_42),
    .I2(ram1_18_41),
    .O(\state[3]_GND_1_o_select_1313_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<19>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_18_41),
    .I2(ram1_19_40),
    .O(\state[3]_GND_1_o_select_1313_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<20>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_19_40),
    .I2(ram1_20_39),
    .O(\state[3]_GND_1_o_select_1313_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<21>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_20_39),
    .I2(ram1_21_38),
    .O(\state[3]_GND_1_o_select_1313_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<22>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_21_38),
    .I2(ram1_22_37),
    .O(\state[3]_GND_1_o_select_1313_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<23>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_22_37),
    .I2(ram1_23_36),
    .O(\state[3]_GND_1_o_select_1313_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<24>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_23_36),
    .I2(ram1_24_35),
    .O(\state[3]_GND_1_o_select_1313_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<25>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_24_35),
    .I2(ram1_25_34),
    .O(\state[3]_GND_1_o_select_1313_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<26>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_25_34),
    .I2(ram1_26_33),
    .O(\state[3]_GND_1_o_select_1313_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<27>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_26_33),
    .I2(ram1_27_32),
    .O(\state[3]_GND_1_o_select_1313_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<28>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_27_32),
    .I2(ram1_28_31),
    .O(\state[3]_GND_1_o_select_1313_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<29>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_28_31),
    .I2(ram1_29_30),
    .O(\state[3]_GND_1_o_select_1313_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<30>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_29_30),
    .I2(ram1_30_29),
    .O(\state[3]_GND_1_o_select_1313_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<31>1  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_30_29),
    .I2(ram1_31_28),
    .O(\state[3]_GND_1_o_select_1313_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \state[3]_GND_1_o_select_1313_OUT<14>11  (
    .I0(state_FSM_FFd5_6),
    .I1(ram1_16_43),
    .I2(ram1_17_42),
    .O(\state[3]_GND_1_o_select_1313_OUT<14> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \state[3]_SampleX[12]_select_1316_OUT<8>1  (
    .I0(ram1_16_43),
    .I1(ram1_17_42),
    .O(\state[3]_SampleX[12]_select_1316_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \Result<5>11  (
    .I0(SampleCnt[5]),
    .I1(SampleCnt[2]),
    .I2(SampleCnt[3]),
    .I3(SampleCnt[4]),
    .I4(SampleCnt[0]),
    .I5(SampleCnt[1]),
    .O(\Result<5>1 )
  );
  LUT5 #(
    .INIT ( 32'h78F0F0F0 ))
  \Result<4>11  (
    .I0(SampleCnt[2]),
    .I1(SampleCnt[3]),
    .I2(SampleCnt[4]),
    .I3(SampleCnt[0]),
    .I4(SampleCnt[1]),
    .O(\Result<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>11  (
    .I0(SampleCnt[2]),
    .I1(SampleCnt[3]),
    .I2(SampleCnt[0]),
    .I3(SampleCnt[1]),
    .O(\Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>11  (
    .I0(SampleCnt[2]),
    .I1(SampleCnt[0]),
    .I2(SampleCnt[1]),
    .O(\Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \state_FSM_FFd5-In_SW0  (
    .I0(SampleCnt[2]),
    .I1(SampleCnt[1]),
    .I2(SampleCnt[0]),
    .I3(SampleCnt[3]),
    .O(N0)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80808000 ))
  \state_FSM_FFd5-In  (
    .I0(state_FSM_FFd2_5),
    .I1(SampleCnt[5]),
    .I2(SampleCnt[6]),
    .I3(SampleCnt[4]),
    .I4(N0),
    .I5(state_FSM_FFd6_3),
    .O(\state_FSM_FFd5-In_188 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Result<6>1_SW0  (
    .I0(SampleCnt[3]),
    .I1(SampleCnt[2]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \Result<6>1  (
    .I0(SampleCnt[6]),
    .I1(SampleCnt[1]),
    .I2(SampleCnt[0]),
    .I3(SampleCnt[5]),
    .I4(SampleCnt[4]),
    .I5(N2),
    .O(\Result<6>1_187 )
  );
  IBUF   Random1_rst_IBUF (
    .I(Random1_rst),
    .O(Random1_rst_IBUF_1)
  );
  OBUF   SampleX_12_OBUF (
    .I(SampleX_12_17),
    .O(SampleX[12])
  );
  OBUF   SampleX_11_OBUF (
    .I(SampleX_11_18),
    .O(SampleX[11])
  );
  OBUF   SampleX_10_OBUF (
    .I(SampleX_10_19),
    .O(SampleX[10])
  );
  OBUF   SampleX_9_OBUF (
    .I(SampleX_9_20),
    .O(SampleX[9])
  );
  OBUF   SampleX_8_OBUF (
    .I(SampleX_8_21),
    .O(SampleX[8])
  );
  OBUF   SampleX_7_OBUF (
    .I(SampleX_7_22),
    .O(SampleX[7])
  );
  OBUF   SampleX_6_OBUF (
    .I(SampleX_6_23),
    .O(SampleX[6])
  );
  OBUF   SampleX_5_OBUF (
    .I(SampleX_5_24),
    .O(SampleX[5])
  );
  OBUF   SampleX_4_OBUF (
    .I(SampleX_4_25),
    .O(SampleX[4])
  );
  OBUF   SampleX_3_OBUF (
    .I(SampleX_3_26),
    .O(SampleX[3])
  );
  OBUF   SampleX_2_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleX[2])
  );
  OBUF   SampleX_1_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleX[1])
  );
  OBUF   SampleX_0_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleX[0])
  );
  OBUF   SampleY_11_OBUF (
    .I(SampleY_11_8),
    .O(SampleY[11])
  );
  OBUF   SampleY_10_OBUF (
    .I(SampleY_10_9),
    .O(SampleY[10])
  );
  OBUF   SampleY_9_OBUF (
    .I(SampleY_9_10),
    .O(SampleY[9])
  );
  OBUF   SampleY_8_OBUF (
    .I(SampleY_8_11),
    .O(SampleY[8])
  );
  OBUF   SampleY_7_OBUF (
    .I(SampleY_7_12),
    .O(SampleY[7])
  );
  OBUF   SampleY_6_OBUF (
    .I(SampleY_6_13),
    .O(SampleY[6])
  );
  OBUF   SampleY_5_OBUF (
    .I(SampleY_5_14),
    .O(SampleY[5])
  );
  OBUF   SampleY_4_OBUF (
    .I(SampleY_4_15),
    .O(SampleY[4])
  );
  OBUF   SampleY_3_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleY[3])
  );
  OBUF   SampleY_2_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleY[2])
  );
  OBUF   SampleY_1_OBUF (
    .I(SampleX_0_OBUF_27),
    .O(SampleY[1])
  );
  OBUF   ADDRA_18_OBUF (
    .I(ADDRA_18_60),
    .O(ADDRA[18])
  );
  OBUF   ADDRA_17_OBUF (
    .I(ADDRA_17_61),
    .O(ADDRA[17])
  );
  OBUF   ADDRA_16_OBUF (
    .I(ADDRA_16_62),
    .O(ADDRA[16])
  );
  OBUF   ADDRA_15_OBUF (
    .I(ADDRA_15_63),
    .O(ADDRA[15])
  );
  OBUF   ADDRA_14_OBUF (
    .I(ADDRA_14_64),
    .O(ADDRA[14])
  );
  OBUF   ADDRA_13_OBUF (
    .I(ADDRA_13_65),
    .O(ADDRA[13])
  );
  OBUF   ADDRA_12_OBUF (
    .I(ADDRA_12_66),
    .O(ADDRA[12])
  );
  OBUF   ADDRA_11_OBUF (
    .I(ADDRA_11_67),
    .O(ADDRA[11])
  );
  OBUF   ADDRA_10_OBUF (
    .I(ADDRA_10_68),
    .O(ADDRA[10])
  );
  OBUF   ADDRA_9_OBUF (
    .I(ADDRA_9_69),
    .O(ADDRA[9])
  );
  OBUF   ADDRA_8_OBUF (
    .I(ADDRA_8_70),
    .O(ADDRA[8])
  );
  OBUF   ADDRA_7_OBUF (
    .I(ADDRA_7_71),
    .O(ADDRA[7])
  );
  OBUF   ADDRA_6_OBUF (
    .I(ADDRA_6_72),
    .O(ADDRA[6])
  );
  OBUF   ADDRA_5_OBUF (
    .I(ADDRA_5_73),
    .O(ADDRA[5])
  );
  OBUF   ADDRA_4_OBUF (
    .I(ADDRA_4_74),
    .O(ADDRA[4])
  );
  OBUF   ADDRA_3_OBUF (
    .I(ADDRA_3_75),
    .O(ADDRA[3])
  );
  OBUF   ADDRA_2_OBUF (
    .I(ADDRA_2_76),
    .O(ADDRA[2])
  );
  OBUF   ADDRA_1_OBUF (
    .I(ADDRA_1_77),
    .O(ADDRA[1])
  );
  OBUF   ADDRA_0_OBUF (
    .I(ADDRA_0_78),
    .O(ADDRA[0])
  );
  OBUF   ToBlockRam_clka_OBUF (
    .I(divclkcnt[5]),
    .O(ToBlockRam_clka)
  );
  OBUF   dina_OBUF (
    .I(dina_OBUF_16),
    .O(dina)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_rt  (
    .I0(ADDRA_1_77),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<1>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_rt  (
    .I0(ADDRA_2_76),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<2>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_rt  (
    .I0(ADDRA_3_75),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<3>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_rt  (
    .I0(ADDRA_4_74),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<4>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_rt  (
    .I0(ADDRA_5_73),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<5>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_rt  (
    .I0(ADDRA_6_72),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<6>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_rt  (
    .I0(ADDRA_7_71),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<7>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_rt  (
    .I0(ADDRA_8_70),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<8>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_rt  (
    .I0(ADDRA_9_69),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<9>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_rt  (
    .I0(ADDRA_10_68),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<10>_rt_280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_rt  (
    .I0(ADDRA_11_67),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<11>_rt_281 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_rt  (
    .I0(ADDRA_12_66),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<12>_rt_282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_rt  (
    .I0(ADDRA_13_65),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<13>_rt_283 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_rt  (
    .I0(ADDRA_14_64),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<14>_rt_284 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_rt  (
    .I0(ADDRA_15_63),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<15>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_rt  (
    .I0(ADDRA_16_62),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<16>_rt_286 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_rt  (
    .I0(ADDRA_17_61),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_cy<17>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_divclkcnt_cy<1>_rt  (
    .I0(divclkcnt[1]),
    .O(\Mcount_divclkcnt_cy<1>_rt_288 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_divclkcnt_cy<2>_rt  (
    .I0(divclkcnt[2]),
    .O(\Mcount_divclkcnt_cy<2>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_divclkcnt_cy<3>_rt  (
    .I0(divclkcnt[3]),
    .O(\Mcount_divclkcnt_cy<3>_rt_290 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_divclkcnt_cy<4>_rt  (
    .I0(divclkcnt[4]),
    .O(\Mcount_divclkcnt_cy<4>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<18>_rt  (
    .I0(ADDRA_18_60),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_xor<18>_rt_292 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_divclkcnt_xor<5>_rt  (
    .I0(divclkcnt[5]),
    .O(\Mcount_divclkcnt_xor<5>_rt_293 )
  );
  BUFG   _n0202_BUFG (
    .O(_n0202_BUFG_7),
    .I(_n0202)
  );
  BUFGP   Random1_clk_BUFGP (
    .I(Random1_clk),
    .O(Random1_clk_BUFGP_0)
  );
  INV   \Madd_ADDRA[18]_GND_1_o_add_1289_OUT_lut<0>_INV_0  (
    .I(ADDRA_0_78),
    .O(\Madd_ADDRA[18]_GND_1_o_add_1289_OUT_lut<0> )
  );
  INV   \Mcount_divclkcnt_lut<0>_INV_0  (
    .I(divclkcnt[0]),
    .O(Mcount_divclkcnt_lut[0])
  );
  INV   Random1_rst_inv1_INV_0 (
    .I(Random1_rst_IBUF_1),
    .O(Random1_rst_inv)
  );
  INV   \Mcount_SampleCnt_xor<0>11_INV_0  (
    .I(SampleCnt[0]),
    .O(\Result<0>1 )
  );
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

