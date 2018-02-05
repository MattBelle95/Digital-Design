// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Thu Aug 31 18:48:04 2017
// Host        : Beltagy running 64-bit major release  (build 9200)
// Design      : MIPS_microprocessor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Part        : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CONTROL_WIDTH = "6" *) (* SRC_WIDTH = "32" *) 
module ALU
   (alu_control,
    src_a,
    src_b,
    shamt,
    result_hi,
    result_lo,
    zero,
    overflow);
  input [5:0]alu_control;
  input [31:0]src_a;
  input [31:0]src_b;
  input [4:0]shamt;
  output [31:0]result_hi;
  output [31:0]result_lo;
  output zero;
  output overflow;

  wire \<const0> ;
  wire [5:0]alu_control;
  wire [31:0]data3;
  wire [31:0]data4;
  wire \n_0_result_hi[0]_INST_0_i_1 ;
  wire \n_0_result_hi[0]_INST_0_i_2 ;
  wire \n_0_result_hi[0]_INST_0_i_3 ;
  wire \n_0_result_hi[0]_INST_0_i_4 ;
  wire \n_0_result_hi[0]_INST_0_i_5 ;
  wire \n_0_result_hi[10]_INST_0_i_1 ;
  wire \n_0_result_hi[10]_INST_0_i_2 ;
  wire \n_0_result_hi[10]_INST_0_i_3 ;
  wire \n_0_result_hi[10]_INST_0_i_4 ;
  wire \n_0_result_hi[10]_INST_0_i_5 ;
  wire \n_0_result_hi[10]_INST_0_i_6 ;
  wire \n_0_result_hi[10]_INST_0_i_7 ;
  wire \n_0_result_hi[11]_INST_0_i_1 ;
  wire \n_0_result_hi[11]_INST_0_i_10 ;
  wire \n_0_result_hi[11]_INST_0_i_11 ;
  wire \n_0_result_hi[11]_INST_0_i_12 ;
  wire \n_0_result_hi[11]_INST_0_i_13 ;
  wire \n_0_result_hi[11]_INST_0_i_14 ;
  wire \n_0_result_hi[11]_INST_0_i_2 ;
  wire \n_0_result_hi[11]_INST_0_i_3 ;
  wire \n_0_result_hi[11]_INST_0_i_4 ;
  wire \n_0_result_hi[11]_INST_0_i_5 ;
  wire \n_0_result_hi[11]_INST_0_i_6 ;
  wire \n_0_result_hi[11]_INST_0_i_7 ;
  wire \n_0_result_hi[11]_INST_0_i_8 ;
  wire \n_0_result_hi[11]_INST_0_i_9 ;
  wire \n_0_result_hi[12]_INST_0_i_1 ;
  wire \n_0_result_hi[12]_INST_0_i_2 ;
  wire \n_0_result_hi[12]_INST_0_i_3 ;
  wire \n_0_result_hi[12]_INST_0_i_4 ;
  wire \n_0_result_hi[13]_INST_0_i_1 ;
  wire \n_0_result_hi[13]_INST_0_i_2 ;
  wire \n_0_result_hi[13]_INST_0_i_3 ;
  wire \n_0_result_hi[13]_INST_0_i_4 ;
  wire \n_0_result_hi[14]_INST_0_i_1 ;
  wire \n_0_result_hi[14]_INST_0_i_10 ;
  wire \n_0_result_hi[14]_INST_0_i_2 ;
  wire \n_0_result_hi[14]_INST_0_i_3 ;
  wire \n_0_result_hi[14]_INST_0_i_4 ;
  wire \n_0_result_hi[14]_INST_0_i_5 ;
  wire \n_0_result_hi[14]_INST_0_i_6 ;
  wire \n_0_result_hi[14]_INST_0_i_7 ;
  wire \n_0_result_hi[14]_INST_0_i_8 ;
  wire \n_0_result_hi[14]_INST_0_i_9 ;
  wire \n_0_result_hi[15]_INST_0_i_1 ;
  wire \n_0_result_hi[15]_INST_0_i_2 ;
  wire \n_0_result_hi[15]_INST_0_i_3 ;
  wire \n_0_result_hi[15]_INST_0_i_4 ;
  wire \n_0_result_hi[15]_INST_0_i_5 ;
  wire \n_0_result_hi[16]_INST_0_i_1 ;
  wire \n_0_result_hi[16]_INST_0_i_2 ;
  wire \n_0_result_hi[16]_INST_0_i_3 ;
  wire \n_0_result_hi[16]_INST_0_i_4 ;
  wire \n_0_result_hi[17]_INST_0_i_1 ;
  wire \n_0_result_hi[17]_INST_0_i_2 ;
  wire \n_0_result_hi[17]_INST_0_i_3 ;
  wire \n_0_result_hi[17]_INST_0_i_4 ;
  wire \n_0_result_hi[17]_INST_0_i_5 ;
  wire \n_0_result_hi[18]_INST_0_i_1 ;
  wire \n_0_result_hi[18]_INST_0_i_2 ;
  wire \n_0_result_hi[18]_INST_0_i_3 ;
  wire \n_0_result_hi[18]_INST_0_i_4 ;
  wire \n_0_result_hi[19]_INST_0_i_1 ;
  wire \n_0_result_hi[19]_INST_0_i_2 ;
  wire \n_0_result_hi[19]_INST_0_i_3 ;
  wire \n_0_result_hi[19]_INST_0_i_4 ;
  wire \n_0_result_hi[19]_INST_0_i_5 ;
  wire \n_0_result_hi[19]_INST_0_i_6 ;
  wire \n_0_result_hi[1]_INST_0_i_1 ;
  wire \n_0_result_hi[1]_INST_0_i_10 ;
  wire \n_0_result_hi[1]_INST_0_i_11 ;
  wire \n_0_result_hi[1]_INST_0_i_12 ;
  wire \n_0_result_hi[1]_INST_0_i_13 ;
  wire \n_0_result_hi[1]_INST_0_i_14 ;
  wire \n_0_result_hi[1]_INST_0_i_15 ;
  wire \n_0_result_hi[1]_INST_0_i_2 ;
  wire \n_0_result_hi[1]_INST_0_i_3 ;
  wire \n_0_result_hi[1]_INST_0_i_4 ;
  wire \n_0_result_hi[1]_INST_0_i_5 ;
  wire \n_0_result_hi[1]_INST_0_i_6 ;
  wire \n_0_result_hi[1]_INST_0_i_7 ;
  wire \n_0_result_hi[1]_INST_0_i_8 ;
  wire \n_0_result_hi[1]_INST_0_i_9 ;
  wire \n_0_result_hi[20]_INST_0_i_1 ;
  wire \n_0_result_hi[20]_INST_0_i_2 ;
  wire \n_0_result_hi[20]_INST_0_i_3 ;
  wire \n_0_result_hi[20]_INST_0_i_4 ;
  wire \n_0_result_hi[20]_INST_0_i_5 ;
  wire \n_0_result_hi[21]_INST_0_i_1 ;
  wire \n_0_result_hi[21]_INST_0_i_2 ;
  wire \n_0_result_hi[21]_INST_0_i_3 ;
  wire \n_0_result_hi[21]_INST_0_i_4 ;
  wire \n_0_result_hi[21]_INST_0_i_5 ;
  wire \n_0_result_hi[22]_INST_0_i_1 ;
  wire \n_0_result_hi[22]_INST_0_i_2 ;
  wire \n_0_result_hi[22]_INST_0_i_3 ;
  wire \n_0_result_hi[22]_INST_0_i_4 ;
  wire \n_0_result_hi[22]_INST_0_i_5 ;
  wire \n_0_result_hi[22]_INST_0_i_6 ;
  wire \n_0_result_hi[22]_INST_0_i_7 ;
  wire \n_0_result_hi[23]_INST_0_i_1 ;
  wire \n_0_result_hi[23]_INST_0_i_10 ;
  wire \n_0_result_hi[23]_INST_0_i_11 ;
  wire \n_0_result_hi[23]_INST_0_i_12 ;
  wire \n_0_result_hi[23]_INST_0_i_13 ;
  wire \n_0_result_hi[23]_INST_0_i_2 ;
  wire \n_0_result_hi[23]_INST_0_i_3 ;
  wire \n_0_result_hi[23]_INST_0_i_4 ;
  wire \n_0_result_hi[23]_INST_0_i_5 ;
  wire \n_0_result_hi[23]_INST_0_i_6 ;
  wire \n_0_result_hi[23]_INST_0_i_7 ;
  wire \n_0_result_hi[23]_INST_0_i_8 ;
  wire \n_0_result_hi[23]_INST_0_i_9 ;
  wire \n_0_result_hi[24]_INST_0_i_1 ;
  wire \n_0_result_hi[24]_INST_0_i_2 ;
  wire \n_0_result_hi[25]_INST_0_i_1 ;
  wire \n_0_result_hi[25]_INST_0_i_2 ;
  wire \n_0_result_hi[26]_INST_0_i_1 ;
  wire \n_0_result_hi[26]_INST_0_i_2 ;
  wire \n_0_result_hi[27]_INST_0_i_1 ;
  wire \n_0_result_hi[27]_INST_0_i_2 ;
  wire \n_0_result_hi[27]_INST_0_i_3 ;
  wire \n_0_result_hi[27]_INST_0_i_4 ;
  wire \n_0_result_hi[27]_INST_0_i_5 ;
  wire \n_0_result_hi[27]_INST_0_i_6 ;
  wire \n_0_result_hi[27]_INST_0_i_7 ;
  wire \n_0_result_hi[27]_INST_0_i_8 ;
  wire \n_0_result_hi[28]_INST_0_i_1 ;
  wire \n_0_result_hi[28]_INST_0_i_2 ;
  wire \n_0_result_hi[29]_INST_0_i_1 ;
  wire \n_0_result_hi[29]_INST_0_i_2 ;
  wire \n_0_result_hi[2]_INST_0_i_1 ;
  wire \n_0_result_hi[2]_INST_0_i_2 ;
  wire \n_0_result_hi[2]_INST_0_i_3 ;
  wire \n_0_result_hi[2]_INST_0_i_4 ;
  wire \n_0_result_hi[30]_INST_0_i_1 ;
  wire \n_0_result_hi[30]_INST_0_i_2 ;
  wire \n_0_result_hi[30]_INST_0_i_3 ;
  wire \n_0_result_hi[30]_INST_0_i_4 ;
  wire \n_0_result_hi[31]_INST_0_i_2 ;
  wire \n_0_result_hi[31]_INST_0_i_3 ;
  wire \n_0_result_hi[31]_INST_0_i_4 ;
  wire \n_0_result_hi[31]_INST_0_i_5 ;
  wire \n_0_result_hi[31]_INST_0_i_6 ;
  wire \n_0_result_hi[3]_INST_0_i_1 ;
  wire \n_0_result_hi[3]_INST_0_i_10 ;
  wire \n_0_result_hi[3]_INST_0_i_11 ;
  wire \n_0_result_hi[3]_INST_0_i_12 ;
  wire \n_0_result_hi[3]_INST_0_i_13 ;
  wire \n_0_result_hi[3]_INST_0_i_14 ;
  wire \n_0_result_hi[3]_INST_0_i_15 ;
  wire \n_0_result_hi[3]_INST_0_i_2 ;
  wire \n_0_result_hi[3]_INST_0_i_3 ;
  wire \n_0_result_hi[3]_INST_0_i_4 ;
  wire \n_0_result_hi[3]_INST_0_i_5 ;
  wire \n_0_result_hi[3]_INST_0_i_6 ;
  wire \n_0_result_hi[3]_INST_0_i_7 ;
  wire \n_0_result_hi[3]_INST_0_i_8 ;
  wire \n_0_result_hi[3]_INST_0_i_9 ;
  wire \n_0_result_hi[4]_INST_0_i_1 ;
  wire \n_0_result_hi[4]_INST_0_i_2 ;
  wire \n_0_result_hi[4]_INST_0_i_3 ;
  wire \n_0_result_hi[4]_INST_0_i_4 ;
  wire \n_0_result_hi[5]_INST_0_i_1 ;
  wire \n_0_result_hi[5]_INST_0_i_2 ;
  wire \n_0_result_hi[5]_INST_0_i_3 ;
  wire \n_0_result_hi[5]_INST_0_i_4 ;
  wire \n_0_result_hi[6]_INST_0_i_1 ;
  wire \n_0_result_hi[6]_INST_0_i_2 ;
  wire \n_0_result_hi[6]_INST_0_i_3 ;
  wire \n_0_result_hi[6]_INST_0_i_4 ;
  wire \n_0_result_hi[7]_INST_0_i_1 ;
  wire \n_0_result_hi[7]_INST_0_i_2 ;
  wire \n_0_result_hi[7]_INST_0_i_3 ;
  wire \n_0_result_hi[7]_INST_0_i_4 ;
  wire \n_0_result_hi[7]_INST_0_i_5 ;
  wire \n_0_result_hi[8]_INST_0_i_1 ;
  wire \n_0_result_hi[8]_INST_0_i_2 ;
  wire \n_0_result_hi[8]_INST_0_i_3 ;
  wire \n_0_result_hi[8]_INST_0_i_4 ;
  wire \n_0_result_hi[9]_INST_0_i_1 ;
  wire \n_0_result_hi[9]_INST_0_i_2 ;
  wire \n_0_result_hi[9]_INST_0_i_3 ;
  wire \n_0_result_hi[9]_INST_0_i_4 ;
  wire \n_0_result_lo[0]_INST_0_i_1 ;
  wire \n_0_result_lo[0]_INST_0_i_10 ;
  wire \n_0_result_lo[0]_INST_0_i_11 ;
  wire \n_0_result_lo[0]_INST_0_i_12 ;
  wire \n_0_result_lo[0]_INST_0_i_13 ;
  wire \n_0_result_lo[0]_INST_0_i_14 ;
  wire \n_0_result_lo[0]_INST_0_i_15 ;
  wire \n_0_result_lo[0]_INST_0_i_16 ;
  wire \n_0_result_lo[0]_INST_0_i_17 ;
  wire \n_0_result_lo[0]_INST_0_i_18 ;
  wire \n_0_result_lo[0]_INST_0_i_19 ;
  wire \n_0_result_lo[0]_INST_0_i_2 ;
  wire \n_0_result_lo[0]_INST_0_i_20 ;
  wire \n_0_result_lo[0]_INST_0_i_21 ;
  wire \n_0_result_lo[0]_INST_0_i_22 ;
  wire \n_0_result_lo[0]_INST_0_i_23 ;
  wire \n_0_result_lo[0]_INST_0_i_24 ;
  wire \n_0_result_lo[0]_INST_0_i_25 ;
  wire \n_0_result_lo[0]_INST_0_i_26 ;
  wire \n_0_result_lo[0]_INST_0_i_27 ;
  wire \n_0_result_lo[0]_INST_0_i_28 ;
  wire \n_0_result_lo[0]_INST_0_i_29 ;
  wire \n_0_result_lo[0]_INST_0_i_3 ;
  wire \n_0_result_lo[0]_INST_0_i_30 ;
  wire \n_0_result_lo[0]_INST_0_i_31 ;
  wire \n_0_result_lo[0]_INST_0_i_32 ;
  wire \n_0_result_lo[0]_INST_0_i_33 ;
  wire \n_0_result_lo[0]_INST_0_i_34 ;
  wire \n_0_result_lo[0]_INST_0_i_35 ;
  wire \n_0_result_lo[0]_INST_0_i_36 ;
  wire \n_0_result_lo[0]_INST_0_i_37 ;
  wire \n_0_result_lo[0]_INST_0_i_38 ;
  wire \n_0_result_lo[0]_INST_0_i_39 ;
  wire \n_0_result_lo[0]_INST_0_i_4 ;
  wire \n_0_result_lo[0]_INST_0_i_40 ;
  wire \n_0_result_lo[0]_INST_0_i_41 ;
  wire \n_0_result_lo[0]_INST_0_i_42 ;
  wire \n_0_result_lo[0]_INST_0_i_43 ;
  wire \n_0_result_lo[0]_INST_0_i_44 ;
  wire \n_0_result_lo[0]_INST_0_i_45 ;
  wire \n_0_result_lo[0]_INST_0_i_5 ;
  wire \n_0_result_lo[0]_INST_0_i_6 ;
  wire \n_0_result_lo[0]_INST_0_i_8 ;
  wire \n_0_result_lo[0]_INST_0_i_9 ;
  wire \n_0_result_lo[10]_INST_0_i_1 ;
  wire \n_0_result_lo[10]_INST_0_i_2 ;
  wire \n_0_result_lo[10]_INST_0_i_3 ;
  wire \n_0_result_lo[10]_INST_0_i_4 ;
  wire \n_0_result_lo[10]_INST_0_i_5 ;
  wire \n_0_result_lo[10]_INST_0_i_6 ;
  wire \n_0_result_lo[10]_INST_0_i_7 ;
  wire \n_0_result_lo[10]_INST_0_i_8 ;
  wire \n_0_result_lo[11]_INST_0_i_1 ;
  wire \n_0_result_lo[11]_INST_0_i_10 ;
  wire \n_0_result_lo[11]_INST_0_i_11 ;
  wire \n_0_result_lo[11]_INST_0_i_12 ;
  wire \n_0_result_lo[11]_INST_0_i_13 ;
  wire \n_0_result_lo[11]_INST_0_i_14 ;
  wire \n_0_result_lo[11]_INST_0_i_15 ;
  wire \n_0_result_lo[11]_INST_0_i_16 ;
  wire \n_0_result_lo[11]_INST_0_i_17 ;
  wire \n_0_result_lo[11]_INST_0_i_18 ;
  wire \n_0_result_lo[11]_INST_0_i_2 ;
  wire \n_0_result_lo[11]_INST_0_i_3 ;
  wire \n_0_result_lo[11]_INST_0_i_4 ;
  wire \n_0_result_lo[11]_INST_0_i_5 ;
  wire \n_0_result_lo[11]_INST_0_i_6 ;
  wire \n_0_result_lo[11]_INST_0_i_7 ;
  wire \n_0_result_lo[11]_INST_0_i_8 ;
  wire \n_0_result_lo[11]_INST_0_i_9 ;
  wire \n_0_result_lo[12]_INST_0_i_1 ;
  wire \n_0_result_lo[12]_INST_0_i_2 ;
  wire \n_0_result_lo[12]_INST_0_i_3 ;
  wire \n_0_result_lo[12]_INST_0_i_4 ;
  wire \n_0_result_lo[12]_INST_0_i_5 ;
  wire \n_0_result_lo[12]_INST_0_i_6 ;
  wire \n_0_result_lo[12]_INST_0_i_7 ;
  wire \n_0_result_lo[12]_INST_0_i_8 ;
  wire \n_0_result_lo[12]_INST_0_i_9 ;
  wire \n_0_result_lo[13]_INST_0_i_1 ;
  wire \n_0_result_lo[13]_INST_0_i_2 ;
  wire \n_0_result_lo[13]_INST_0_i_3 ;
  wire \n_0_result_lo[13]_INST_0_i_4 ;
  wire \n_0_result_lo[13]_INST_0_i_5 ;
  wire \n_0_result_lo[13]_INST_0_i_6 ;
  wire \n_0_result_lo[13]_INST_0_i_7 ;
  wire \n_0_result_lo[13]_INST_0_i_8 ;
  wire \n_0_result_lo[13]_INST_0_i_9 ;
  wire \n_0_result_lo[14]_INST_0_i_1 ;
  wire \n_0_result_lo[14]_INST_0_i_2 ;
  wire \n_0_result_lo[14]_INST_0_i_3 ;
  wire \n_0_result_lo[14]_INST_0_i_4 ;
  wire \n_0_result_lo[14]_INST_0_i_5 ;
  wire \n_0_result_lo[14]_INST_0_i_6 ;
  wire \n_0_result_lo[14]_INST_0_i_7 ;
  wire \n_0_result_lo[14]_INST_0_i_8 ;
  wire \n_0_result_lo[15]_INST_0_i_1 ;
  wire \n_0_result_lo[15]_INST_0_i_10 ;
  wire \n_0_result_lo[15]_INST_0_i_11 ;
  wire \n_0_result_lo[15]_INST_0_i_12 ;
  wire \n_0_result_lo[15]_INST_0_i_13 ;
  wire \n_0_result_lo[15]_INST_0_i_14 ;
  wire \n_0_result_lo[15]_INST_0_i_15 ;
  wire \n_0_result_lo[15]_INST_0_i_16 ;
  wire \n_0_result_lo[15]_INST_0_i_17 ;
  wire \n_0_result_lo[15]_INST_0_i_18 ;
  wire \n_0_result_lo[15]_INST_0_i_19 ;
  wire \n_0_result_lo[15]_INST_0_i_2 ;
  wire \n_0_result_lo[15]_INST_0_i_20 ;
  wire \n_0_result_lo[15]_INST_0_i_21 ;
  wire \n_0_result_lo[15]_INST_0_i_22 ;
  wire \n_0_result_lo[15]_INST_0_i_23 ;
  wire \n_0_result_lo[15]_INST_0_i_3 ;
  wire \n_0_result_lo[15]_INST_0_i_4 ;
  wire \n_0_result_lo[15]_INST_0_i_5 ;
  wire \n_0_result_lo[15]_INST_0_i_6 ;
  wire \n_0_result_lo[15]_INST_0_i_7 ;
  wire \n_0_result_lo[15]_INST_0_i_8 ;
  wire \n_0_result_lo[15]_INST_0_i_9 ;
  wire \n_0_result_lo[16]_INST_0_i_1 ;
  wire \n_0_result_lo[16]_INST_0_i_10 ;
  wire \n_0_result_lo[16]_INST_0_i_11 ;
  wire \n_0_result_lo[16]_INST_0_i_12 ;
  wire \n_0_result_lo[16]_INST_0_i_2 ;
  wire \n_0_result_lo[16]_INST_0_i_3 ;
  wire \n_0_result_lo[16]_INST_0_i_4 ;
  wire \n_0_result_lo[16]_INST_0_i_5 ;
  wire \n_0_result_lo[16]_INST_0_i_6 ;
  wire \n_0_result_lo[16]_INST_0_i_7 ;
  wire \n_0_result_lo[16]_INST_0_i_8 ;
  wire \n_0_result_lo[16]_INST_0_i_9 ;
  wire \n_0_result_lo[17]_INST_0_i_1 ;
  wire \n_0_result_lo[17]_INST_0_i_2 ;
  wire \n_0_result_lo[17]_INST_0_i_3 ;
  wire \n_0_result_lo[17]_INST_0_i_4 ;
  wire \n_0_result_lo[17]_INST_0_i_5 ;
  wire \n_0_result_lo[17]_INST_0_i_6 ;
  wire \n_0_result_lo[17]_INST_0_i_7 ;
  wire \n_0_result_lo[17]_INST_0_i_8 ;
  wire \n_0_result_lo[17]_INST_0_i_9 ;
  wire \n_0_result_lo[18]_INST_0_i_1 ;
  wire \n_0_result_lo[18]_INST_0_i_2 ;
  wire \n_0_result_lo[18]_INST_0_i_3 ;
  wire \n_0_result_lo[18]_INST_0_i_4 ;
  wire \n_0_result_lo[18]_INST_0_i_5 ;
  wire \n_0_result_lo[18]_INST_0_i_6 ;
  wire \n_0_result_lo[18]_INST_0_i_7 ;
  wire \n_0_result_lo[18]_INST_0_i_8 ;
  wire \n_0_result_lo[18]_INST_0_i_9 ;
  wire \n_0_result_lo[19]_INST_0_i_1 ;
  wire \n_0_result_lo[19]_INST_0_i_10 ;
  wire \n_0_result_lo[19]_INST_0_i_11 ;
  wire \n_0_result_lo[19]_INST_0_i_12 ;
  wire \n_0_result_lo[19]_INST_0_i_13 ;
  wire \n_0_result_lo[19]_INST_0_i_14 ;
  wire \n_0_result_lo[19]_INST_0_i_15 ;
  wire \n_0_result_lo[19]_INST_0_i_16 ;
  wire \n_0_result_lo[19]_INST_0_i_17 ;
  wire \n_0_result_lo[19]_INST_0_i_18 ;
  wire \n_0_result_lo[19]_INST_0_i_19 ;
  wire \n_0_result_lo[19]_INST_0_i_2 ;
  wire \n_0_result_lo[19]_INST_0_i_20 ;
  wire \n_0_result_lo[19]_INST_0_i_21 ;
  wire \n_0_result_lo[19]_INST_0_i_22 ;
  wire \n_0_result_lo[19]_INST_0_i_23 ;
  wire \n_0_result_lo[19]_INST_0_i_24 ;
  wire \n_0_result_lo[19]_INST_0_i_3 ;
  wire \n_0_result_lo[19]_INST_0_i_4 ;
  wire \n_0_result_lo[19]_INST_0_i_5 ;
  wire \n_0_result_lo[19]_INST_0_i_6 ;
  wire \n_0_result_lo[19]_INST_0_i_7 ;
  wire \n_0_result_lo[19]_INST_0_i_8 ;
  wire \n_0_result_lo[19]_INST_0_i_9 ;
  wire \n_0_result_lo[1]_INST_0_i_1 ;
  wire \n_0_result_lo[1]_INST_0_i_2 ;
  wire \n_0_result_lo[1]_INST_0_i_3 ;
  wire \n_0_result_lo[1]_INST_0_i_4 ;
  wire \n_0_result_lo[1]_INST_0_i_5 ;
  wire \n_0_result_lo[1]_INST_0_i_6 ;
  wire \n_0_result_lo[1]_INST_0_i_7 ;
  wire \n_0_result_lo[1]_INST_0_i_8 ;
  wire \n_0_result_lo[20]_INST_0_i_1 ;
  wire \n_0_result_lo[20]_INST_0_i_2 ;
  wire \n_0_result_lo[20]_INST_0_i_3 ;
  wire \n_0_result_lo[20]_INST_0_i_4 ;
  wire \n_0_result_lo[20]_INST_0_i_5 ;
  wire \n_0_result_lo[20]_INST_0_i_6 ;
  wire \n_0_result_lo[20]_INST_0_i_7 ;
  wire \n_0_result_lo[20]_INST_0_i_8 ;
  wire \n_0_result_lo[21]_INST_0_i_1 ;
  wire \n_0_result_lo[21]_INST_0_i_2 ;
  wire \n_0_result_lo[21]_INST_0_i_3 ;
  wire \n_0_result_lo[21]_INST_0_i_4 ;
  wire \n_0_result_lo[21]_INST_0_i_5 ;
  wire \n_0_result_lo[21]_INST_0_i_6 ;
  wire \n_0_result_lo[21]_INST_0_i_7 ;
  wire \n_0_result_lo[21]_INST_0_i_8 ;
  wire \n_0_result_lo[22]_INST_0_i_1 ;
  wire \n_0_result_lo[22]_INST_0_i_2 ;
  wire \n_0_result_lo[22]_INST_0_i_3 ;
  wire \n_0_result_lo[22]_INST_0_i_4 ;
  wire \n_0_result_lo[22]_INST_0_i_5 ;
  wire \n_0_result_lo[22]_INST_0_i_6 ;
  wire \n_0_result_lo[22]_INST_0_i_7 ;
  wire \n_0_result_lo[22]_INST_0_i_8 ;
  wire \n_0_result_lo[23]_INST_0_i_1 ;
  wire \n_0_result_lo[23]_INST_0_i_10 ;
  wire \n_0_result_lo[23]_INST_0_i_11 ;
  wire \n_0_result_lo[23]_INST_0_i_12 ;
  wire \n_0_result_lo[23]_INST_0_i_13 ;
  wire \n_0_result_lo[23]_INST_0_i_14 ;
  wire \n_0_result_lo[23]_INST_0_i_15 ;
  wire \n_0_result_lo[23]_INST_0_i_16 ;
  wire \n_0_result_lo[23]_INST_0_i_17 ;
  wire \n_0_result_lo[23]_INST_0_i_18 ;
  wire \n_0_result_lo[23]_INST_0_i_19 ;
  wire \n_0_result_lo[23]_INST_0_i_2 ;
  wire \n_0_result_lo[23]_INST_0_i_20 ;
  wire \n_0_result_lo[23]_INST_0_i_21 ;
  wire \n_0_result_lo[23]_INST_0_i_22 ;
  wire \n_0_result_lo[23]_INST_0_i_23 ;
  wire \n_0_result_lo[23]_INST_0_i_3 ;
  wire \n_0_result_lo[23]_INST_0_i_4 ;
  wire \n_0_result_lo[23]_INST_0_i_5 ;
  wire \n_0_result_lo[23]_INST_0_i_6 ;
  wire \n_0_result_lo[23]_INST_0_i_7 ;
  wire \n_0_result_lo[23]_INST_0_i_8 ;
  wire \n_0_result_lo[23]_INST_0_i_9 ;
  wire \n_0_result_lo[24]_INST_0_i_1 ;
  wire \n_0_result_lo[24]_INST_0_i_2 ;
  wire \n_0_result_lo[24]_INST_0_i_3 ;
  wire \n_0_result_lo[24]_INST_0_i_4 ;
  wire \n_0_result_lo[24]_INST_0_i_5 ;
  wire \n_0_result_lo[24]_INST_0_i_6 ;
  wire \n_0_result_lo[24]_INST_0_i_7 ;
  wire \n_0_result_lo[24]_INST_0_i_8 ;
  wire \n_0_result_lo[25]_INST_0_i_1 ;
  wire \n_0_result_lo[25]_INST_0_i_2 ;
  wire \n_0_result_lo[25]_INST_0_i_3 ;
  wire \n_0_result_lo[25]_INST_0_i_4 ;
  wire \n_0_result_lo[25]_INST_0_i_5 ;
  wire \n_0_result_lo[25]_INST_0_i_6 ;
  wire \n_0_result_lo[25]_INST_0_i_7 ;
  wire \n_0_result_lo[25]_INST_0_i_8 ;
  wire \n_0_result_lo[26]_INST_0_i_1 ;
  wire \n_0_result_lo[26]_INST_0_i_2 ;
  wire \n_0_result_lo[26]_INST_0_i_3 ;
  wire \n_0_result_lo[26]_INST_0_i_4 ;
  wire \n_0_result_lo[26]_INST_0_i_5 ;
  wire \n_0_result_lo[26]_INST_0_i_6 ;
  wire \n_0_result_lo[26]_INST_0_i_7 ;
  wire \n_0_result_lo[27]_INST_0_i_1 ;
  wire \n_0_result_lo[27]_INST_0_i_10 ;
  wire \n_0_result_lo[27]_INST_0_i_11 ;
  wire \n_0_result_lo[27]_INST_0_i_12 ;
  wire \n_0_result_lo[27]_INST_0_i_13 ;
  wire \n_0_result_lo[27]_INST_0_i_14 ;
  wire \n_0_result_lo[27]_INST_0_i_15 ;
  wire \n_0_result_lo[27]_INST_0_i_16 ;
  wire \n_0_result_lo[27]_INST_0_i_17 ;
  wire \n_0_result_lo[27]_INST_0_i_2 ;
  wire \n_0_result_lo[27]_INST_0_i_3 ;
  wire \n_0_result_lo[27]_INST_0_i_4 ;
  wire \n_0_result_lo[27]_INST_0_i_5 ;
  wire \n_0_result_lo[27]_INST_0_i_6 ;
  wire \n_0_result_lo[27]_INST_0_i_7 ;
  wire \n_0_result_lo[27]_INST_0_i_8 ;
  wire \n_0_result_lo[27]_INST_0_i_9 ;
  wire \n_0_result_lo[28]_INST_0_i_1 ;
  wire \n_0_result_lo[28]_INST_0_i_2 ;
  wire \n_0_result_lo[28]_INST_0_i_3 ;
  wire \n_0_result_lo[28]_INST_0_i_4 ;
  wire \n_0_result_lo[28]_INST_0_i_5 ;
  wire \n_0_result_lo[28]_INST_0_i_6 ;
  wire \n_0_result_lo[28]_INST_0_i_7 ;
  wire \n_0_result_lo[29]_INST_0_i_1 ;
  wire \n_0_result_lo[29]_INST_0_i_10 ;
  wire \n_0_result_lo[29]_INST_0_i_2 ;
  wire \n_0_result_lo[29]_INST_0_i_3 ;
  wire \n_0_result_lo[29]_INST_0_i_4 ;
  wire \n_0_result_lo[29]_INST_0_i_5 ;
  wire \n_0_result_lo[29]_INST_0_i_6 ;
  wire \n_0_result_lo[29]_INST_0_i_7 ;
  wire \n_0_result_lo[29]_INST_0_i_8 ;
  wire \n_0_result_lo[29]_INST_0_i_9 ;
  wire \n_0_result_lo[2]_INST_0_i_1 ;
  wire \n_0_result_lo[2]_INST_0_i_2 ;
  wire \n_0_result_lo[2]_INST_0_i_3 ;
  wire \n_0_result_lo[2]_INST_0_i_4 ;
  wire \n_0_result_lo[2]_INST_0_i_5 ;
  wire \n_0_result_lo[2]_INST_0_i_6 ;
  wire \n_0_result_lo[2]_INST_0_i_7 ;
  wire \n_0_result_lo[2]_INST_0_i_8 ;
  wire \n_0_result_lo[30]_INST_0_i_1 ;
  wire \n_0_result_lo[30]_INST_0_i_2 ;
  wire \n_0_result_lo[30]_INST_0_i_3 ;
  wire \n_0_result_lo[30]_INST_0_i_4 ;
  wire \n_0_result_lo[30]_INST_0_i_5 ;
  wire \n_0_result_lo[30]_INST_0_i_6 ;
  wire \n_0_result_lo[30]_INST_0_i_7 ;
  wire \n_0_result_lo[31]_INST_0_i_1 ;
  wire \n_0_result_lo[31]_INST_0_i_10 ;
  wire \n_0_result_lo[31]_INST_0_i_11 ;
  wire \n_0_result_lo[31]_INST_0_i_12 ;
  wire \n_0_result_lo[31]_INST_0_i_13 ;
  wire \n_0_result_lo[31]_INST_0_i_14 ;
  wire \n_0_result_lo[31]_INST_0_i_15 ;
  wire \n_0_result_lo[31]_INST_0_i_2 ;
  wire \n_0_result_lo[31]_INST_0_i_3 ;
  wire \n_0_result_lo[31]_INST_0_i_4 ;
  wire \n_0_result_lo[31]_INST_0_i_5 ;
  wire \n_0_result_lo[31]_INST_0_i_6 ;
  wire \n_0_result_lo[31]_INST_0_i_7 ;
  wire \n_0_result_lo[31]_INST_0_i_8 ;
  wire \n_0_result_lo[31]_INST_0_i_9 ;
  wire \n_0_result_lo[3]_INST_0_i_1 ;
  wire \n_0_result_lo[3]_INST_0_i_10 ;
  wire \n_0_result_lo[3]_INST_0_i_11 ;
  wire \n_0_result_lo[3]_INST_0_i_12 ;
  wire \n_0_result_lo[3]_INST_0_i_13 ;
  wire \n_0_result_lo[3]_INST_0_i_14 ;
  wire \n_0_result_lo[3]_INST_0_i_15 ;
  wire \n_0_result_lo[3]_INST_0_i_16 ;
  wire \n_0_result_lo[3]_INST_0_i_17 ;
  wire \n_0_result_lo[3]_INST_0_i_18 ;
  wire \n_0_result_lo[3]_INST_0_i_2 ;
  wire \n_0_result_lo[3]_INST_0_i_3 ;
  wire \n_0_result_lo[3]_INST_0_i_4 ;
  wire \n_0_result_lo[3]_INST_0_i_5 ;
  wire \n_0_result_lo[3]_INST_0_i_6 ;
  wire \n_0_result_lo[3]_INST_0_i_7 ;
  wire \n_0_result_lo[3]_INST_0_i_8 ;
  wire \n_0_result_lo[3]_INST_0_i_9 ;
  wire \n_0_result_lo[4]_INST_0_i_1 ;
  wire \n_0_result_lo[4]_INST_0_i_2 ;
  wire \n_0_result_lo[4]_INST_0_i_3 ;
  wire \n_0_result_lo[4]_INST_0_i_4 ;
  wire \n_0_result_lo[4]_INST_0_i_5 ;
  wire \n_0_result_lo[4]_INST_0_i_6 ;
  wire \n_0_result_lo[4]_INST_0_i_7 ;
  wire \n_0_result_lo[4]_INST_0_i_8 ;
  wire \n_0_result_lo[5]_INST_0_i_1 ;
  wire \n_0_result_lo[5]_INST_0_i_2 ;
  wire \n_0_result_lo[5]_INST_0_i_3 ;
  wire \n_0_result_lo[5]_INST_0_i_4 ;
  wire \n_0_result_lo[5]_INST_0_i_5 ;
  wire \n_0_result_lo[5]_INST_0_i_6 ;
  wire \n_0_result_lo[5]_INST_0_i_7 ;
  wire \n_0_result_lo[5]_INST_0_i_8 ;
  wire \n_0_result_lo[6]_INST_0_i_1 ;
  wire \n_0_result_lo[6]_INST_0_i_2 ;
  wire \n_0_result_lo[6]_INST_0_i_3 ;
  wire \n_0_result_lo[6]_INST_0_i_4 ;
  wire \n_0_result_lo[6]_INST_0_i_5 ;
  wire \n_0_result_lo[6]_INST_0_i_6 ;
  wire \n_0_result_lo[6]_INST_0_i_7 ;
  wire \n_0_result_lo[6]_INST_0_i_8 ;
  wire \n_0_result_lo[7]_INST_0_i_1 ;
  wire \n_0_result_lo[7]_INST_0_i_10 ;
  wire \n_0_result_lo[7]_INST_0_i_11 ;
  wire \n_0_result_lo[7]_INST_0_i_12 ;
  wire \n_0_result_lo[7]_INST_0_i_13 ;
  wire \n_0_result_lo[7]_INST_0_i_14 ;
  wire \n_0_result_lo[7]_INST_0_i_15 ;
  wire \n_0_result_lo[7]_INST_0_i_16 ;
  wire \n_0_result_lo[7]_INST_0_i_17 ;
  wire \n_0_result_lo[7]_INST_0_i_18 ;
  wire \n_0_result_lo[7]_INST_0_i_19 ;
  wire \n_0_result_lo[7]_INST_0_i_2 ;
  wire \n_0_result_lo[7]_INST_0_i_3 ;
  wire \n_0_result_lo[7]_INST_0_i_4 ;
  wire \n_0_result_lo[7]_INST_0_i_5 ;
  wire \n_0_result_lo[7]_INST_0_i_6 ;
  wire \n_0_result_lo[7]_INST_0_i_7 ;
  wire \n_0_result_lo[7]_INST_0_i_8 ;
  wire \n_0_result_lo[7]_INST_0_i_9 ;
  wire \n_0_result_lo[8]_INST_0_i_1 ;
  wire \n_0_result_lo[8]_INST_0_i_2 ;
  wire \n_0_result_lo[8]_INST_0_i_3 ;
  wire \n_0_result_lo[8]_INST_0_i_4 ;
  wire \n_0_result_lo[8]_INST_0_i_5 ;
  wire \n_0_result_lo[8]_INST_0_i_6 ;
  wire \n_0_result_lo[8]_INST_0_i_7 ;
  wire \n_0_result_lo[8]_INST_0_i_8 ;
  wire \n_0_result_lo[9]_INST_0_i_1 ;
  wire \n_0_result_lo[9]_INST_0_i_2 ;
  wire \n_0_result_lo[9]_INST_0_i_3 ;
  wire \n_0_result_lo[9]_INST_0_i_4 ;
  wire \n_0_result_lo[9]_INST_0_i_5 ;
  wire \n_0_result_lo[9]_INST_0_i_6 ;
  wire \n_0_result_lo[9]_INST_0_i_7 ;
  wire \n_0_result_lo[9]_INST_0_i_8 ;
  wire n_0_zero_INST_0_i_1;
  wire n_0_zero_INST_0_i_10;
  wire n_0_zero_INST_0_i_11;
  wire n_0_zero_INST_0_i_12;
  wire n_0_zero_INST_0_i_13;
  wire n_0_zero_INST_0_i_14;
  wire n_0_zero_INST_0_i_15;
  wire n_0_zero_INST_0_i_16;
  wire n_0_zero_INST_0_i_17;
  wire n_0_zero_INST_0_i_18;
  wire n_0_zero_INST_0_i_19;
  wire n_0_zero_INST_0_i_2;
  wire n_0_zero_INST_0_i_20;
  wire n_0_zero_INST_0_i_21;
  wire n_0_zero_INST_0_i_22;
  wire n_0_zero_INST_0_i_23;
  wire n_0_zero_INST_0_i_24;
  wire n_0_zero_INST_0_i_25;
  wire n_0_zero_INST_0_i_26;
  wire n_0_zero_INST_0_i_27;
  wire n_0_zero_INST_0_i_28;
  wire n_0_zero_INST_0_i_29;
  wire n_0_zero_INST_0_i_3;
  wire n_0_zero_INST_0_i_4;
  wire n_0_zero_INST_0_i_5;
  wire n_0_zero_INST_0_i_6;
  wire n_0_zero_INST_0_i_7;
  wire n_0_zero_INST_0_i_8;
  wire n_0_zero_INST_0_i_9;
  wire n_100_result_hi0;
  wire n_100_result_hi0__0;
  wire n_101_result_hi0;
  wire n_101_result_hi0__0;
  wire n_102_result_hi0;
  wire n_102_result_hi0__0;
  wire n_103_result_hi0;
  wire n_103_result_hi0__0;
  wire n_104_result_hi0;
  wire n_104_result_hi0__0;
  wire n_105_result_hi0;
  wire n_105_result_hi0__0;
  wire n_106_result_hi0;
  wire n_106_result_hi0__1;
  wire n_107_result_hi0;
  wire n_107_result_hi0__1;
  wire n_108_result_hi0;
  wire n_108_result_hi0__1;
  wire n_109_result_hi0;
  wire n_109_result_hi0__1;
  wire n_110_result_hi0;
  wire n_110_result_hi0__1;
  wire n_111_result_hi0;
  wire n_111_result_hi0__1;
  wire n_112_result_hi0;
  wire n_112_result_hi0__1;
  wire n_113_result_hi0;
  wire n_113_result_hi0__1;
  wire n_114_result_hi0;
  wire n_114_result_hi0__1;
  wire n_115_result_hi0;
  wire n_115_result_hi0__1;
  wire n_116_result_hi0;
  wire n_116_result_hi0__1;
  wire n_117_result_hi0;
  wire n_117_result_hi0__1;
  wire n_118_result_hi0;
  wire n_118_result_hi0__1;
  wire n_119_result_hi0;
  wire n_119_result_hi0__1;
  wire n_120_result_hi0;
  wire n_120_result_hi0__1;
  wire n_121_result_hi0;
  wire n_121_result_hi0__1;
  wire n_122_result_hi0;
  wire n_122_result_hi0__1;
  wire n_123_result_hi0;
  wire n_123_result_hi0__1;
  wire n_124_result_hi0;
  wire n_124_result_hi0__1;
  wire n_125_result_hi0;
  wire n_125_result_hi0__1;
  wire n_126_result_hi0;
  wire n_126_result_hi0__1;
  wire n_127_result_hi0;
  wire n_127_result_hi0__1;
  wire n_128_result_hi0;
  wire n_128_result_hi0__1;
  wire n_129_result_hi0;
  wire n_129_result_hi0__1;
  wire n_130_result_hi0;
  wire n_130_result_hi0__1;
  wire n_131_result_hi0;
  wire n_131_result_hi0__1;
  wire n_132_result_hi0;
  wire n_132_result_hi0__1;
  wire n_133_result_hi0;
  wire n_133_result_hi0__1;
  wire n_134_result_hi0;
  wire n_134_result_hi0__1;
  wire n_135_result_hi0;
  wire n_135_result_hi0__1;
  wire n_136_result_hi0;
  wire n_136_result_hi0__1;
  wire n_137_result_hi0;
  wire n_137_result_hi0__1;
  wire n_138_result_hi0;
  wire n_138_result_hi0__1;
  wire n_139_result_hi0;
  wire n_139_result_hi0__1;
  wire n_140_result_hi0;
  wire n_140_result_hi0__1;
  wire n_141_result_hi0;
  wire n_141_result_hi0__1;
  wire n_142_result_hi0;
  wire n_142_result_hi0__1;
  wire n_143_result_hi0;
  wire n_143_result_hi0__1;
  wire n_144_result_hi0;
  wire n_144_result_hi0__1;
  wire n_145_result_hi0;
  wire n_145_result_hi0__1;
  wire n_146_result_hi0;
  wire n_146_result_hi0__1;
  wire n_147_result_hi0;
  wire n_147_result_hi0__1;
  wire n_148_result_hi0;
  wire n_148_result_hi0__1;
  wire n_149_result_hi0;
  wire n_149_result_hi0__1;
  wire n_150_result_hi0;
  wire n_150_result_hi0__1;
  wire n_151_result_hi0;
  wire n_151_result_hi0__1;
  wire n_152_result_hi0;
  wire n_152_result_hi0__1;
  wire n_153_result_hi0;
  wire n_153_result_hi0__1;
  wire \n_1_result_hi[10]_INST_0_i_3 ;
  wire \n_1_result_hi[11]_INST_0_i_2 ;
  wire \n_1_result_hi[11]_INST_0_i_5 ;
  wire \n_1_result_hi[14]_INST_0_i_2 ;
  wire \n_1_result_hi[15]_INST_0_i_4 ;
  wire \n_1_result_hi[19]_INST_0_i_6 ;
  wire \n_1_result_hi[1]_INST_0_i_2 ;
  wire \n_1_result_hi[1]_INST_0_i_5 ;
  wire \n_1_result_hi[23]_INST_0_i_2 ;
  wire \n_1_result_hi[23]_INST_0_i_3 ;
  wire \n_1_result_hi[23]_INST_0_i_5 ;
  wire \n_1_result_hi[27]_INST_0_i_2 ;
  wire \n_1_result_hi[27]_INST_0_i_3 ;
  wire \n_1_result_hi[31]_INST_0_i_1 ;
  wire \n_1_result_hi[31]_INST_0_i_7 ;
  wire \n_1_result_hi[3]_INST_0_i_2 ;
  wire \n_1_result_hi[3]_INST_0_i_5 ;
  wire \n_1_result_hi[3]_INST_0_i_7 ;
  wire \n_1_result_hi[7]_INST_0_i_2 ;
  wire \n_1_result_lo[0]_INST_0_i_10 ;
  wire \n_1_result_lo[0]_INST_0_i_20 ;
  wire \n_1_result_lo[0]_INST_0_i_29 ;
  wire \n_1_result_lo[0]_INST_0_i_7 ;
  wire \n_1_result_lo[11]_INST_0_i_13 ;
  wire \n_1_result_lo[11]_INST_0_i_6 ;
  wire \n_1_result_lo[15]_INST_0_i_15 ;
  wire \n_1_result_lo[15]_INST_0_i_8 ;
  wire \n_1_result_lo[19]_INST_0_i_19 ;
  wire \n_1_result_lo[19]_INST_0_i_5 ;
  wire \n_1_result_lo[19]_INST_0_i_7 ;
  wire \n_1_result_lo[23]_INST_0_i_18 ;
  wire \n_1_result_lo[23]_INST_0_i_6 ;
  wire \n_1_result_lo[23]_INST_0_i_7 ;
  wire \n_1_result_lo[27]_INST_0_i_6 ;
  wire \n_1_result_lo[27]_INST_0_i_7 ;
  wire \n_1_result_lo[31]_INST_0_i_7 ;
  wire \n_1_result_lo[3]_INST_0_i_13 ;
  wire \n_1_result_lo[3]_INST_0_i_6 ;
  wire \n_1_result_lo[7]_INST_0_i_14 ;
  wire \n_1_result_lo[7]_INST_0_i_7 ;
  wire \n_2_result_hi[10]_INST_0_i_3 ;
  wire \n_2_result_hi[11]_INST_0_i_2 ;
  wire \n_2_result_hi[11]_INST_0_i_5 ;
  wire \n_2_result_hi[14]_INST_0_i_2 ;
  wire \n_2_result_hi[15]_INST_0_i_4 ;
  wire \n_2_result_hi[19]_INST_0_i_6 ;
  wire \n_2_result_hi[1]_INST_0_i_2 ;
  wire \n_2_result_hi[1]_INST_0_i_5 ;
  wire \n_2_result_hi[23]_INST_0_i_2 ;
  wire \n_2_result_hi[23]_INST_0_i_3 ;
  wire \n_2_result_hi[23]_INST_0_i_5 ;
  wire \n_2_result_hi[27]_INST_0_i_2 ;
  wire \n_2_result_hi[27]_INST_0_i_3 ;
  wire \n_2_result_hi[31]_INST_0_i_1 ;
  wire \n_2_result_hi[31]_INST_0_i_7 ;
  wire \n_2_result_hi[3]_INST_0_i_2 ;
  wire \n_2_result_hi[3]_INST_0_i_5 ;
  wire \n_2_result_hi[3]_INST_0_i_7 ;
  wire \n_2_result_hi[7]_INST_0_i_2 ;
  wire \n_2_result_lo[0]_INST_0_i_10 ;
  wire \n_2_result_lo[0]_INST_0_i_20 ;
  wire \n_2_result_lo[0]_INST_0_i_29 ;
  wire \n_2_result_lo[0]_INST_0_i_7 ;
  wire \n_2_result_lo[11]_INST_0_i_13 ;
  wire \n_2_result_lo[11]_INST_0_i_6 ;
  wire \n_2_result_lo[15]_INST_0_i_15 ;
  wire \n_2_result_lo[15]_INST_0_i_8 ;
  wire \n_2_result_lo[19]_INST_0_i_19 ;
  wire \n_2_result_lo[19]_INST_0_i_5 ;
  wire \n_2_result_lo[19]_INST_0_i_7 ;
  wire \n_2_result_lo[23]_INST_0_i_18 ;
  wire \n_2_result_lo[23]_INST_0_i_6 ;
  wire \n_2_result_lo[23]_INST_0_i_7 ;
  wire \n_2_result_lo[27]_INST_0_i_6 ;
  wire \n_2_result_lo[27]_INST_0_i_7 ;
  wire \n_2_result_lo[31]_INST_0_i_7 ;
  wire \n_2_result_lo[3]_INST_0_i_13 ;
  wire \n_2_result_lo[3]_INST_0_i_6 ;
  wire \n_2_result_lo[7]_INST_0_i_14 ;
  wire \n_2_result_lo[7]_INST_0_i_7 ;
  wire \n_3_result_hi[10]_INST_0_i_3 ;
  wire \n_3_result_hi[11]_INST_0_i_2 ;
  wire \n_3_result_hi[11]_INST_0_i_5 ;
  wire \n_3_result_hi[14]_INST_0_i_2 ;
  wire \n_3_result_hi[15]_INST_0_i_4 ;
  wire \n_3_result_hi[19]_INST_0_i_6 ;
  wire \n_3_result_hi[1]_INST_0_i_2 ;
  wire \n_3_result_hi[1]_INST_0_i_5 ;
  wire \n_3_result_hi[23]_INST_0_i_2 ;
  wire \n_3_result_hi[23]_INST_0_i_3 ;
  wire \n_3_result_hi[23]_INST_0_i_5 ;
  wire \n_3_result_hi[27]_INST_0_i_2 ;
  wire \n_3_result_hi[27]_INST_0_i_3 ;
  wire \n_3_result_hi[31]_INST_0_i_1 ;
  wire \n_3_result_hi[31]_INST_0_i_7 ;
  wire \n_3_result_hi[3]_INST_0_i_2 ;
  wire \n_3_result_hi[3]_INST_0_i_5 ;
  wire \n_3_result_hi[3]_INST_0_i_7 ;
  wire \n_3_result_hi[7]_INST_0_i_2 ;
  wire \n_3_result_lo[0]_INST_0_i_10 ;
  wire \n_3_result_lo[0]_INST_0_i_20 ;
  wire \n_3_result_lo[0]_INST_0_i_29 ;
  wire \n_3_result_lo[0]_INST_0_i_7 ;
  wire \n_3_result_lo[11]_INST_0_i_13 ;
  wire \n_3_result_lo[11]_INST_0_i_6 ;
  wire \n_3_result_lo[15]_INST_0_i_15 ;
  wire \n_3_result_lo[15]_INST_0_i_8 ;
  wire \n_3_result_lo[19]_INST_0_i_19 ;
  wire \n_3_result_lo[19]_INST_0_i_5 ;
  wire \n_3_result_lo[19]_INST_0_i_7 ;
  wire \n_3_result_lo[23]_INST_0_i_18 ;
  wire \n_3_result_lo[23]_INST_0_i_6 ;
  wire \n_3_result_lo[23]_INST_0_i_7 ;
  wire \n_3_result_lo[27]_INST_0_i_6 ;
  wire \n_3_result_lo[27]_INST_0_i_7 ;
  wire \n_3_result_lo[31]_INST_0_i_7 ;
  wire \n_3_result_lo[3]_INST_0_i_13 ;
  wire \n_3_result_lo[3]_INST_0_i_6 ;
  wire \n_3_result_lo[7]_INST_0_i_14 ;
  wire \n_3_result_lo[7]_INST_0_i_7 ;
  wire \n_4_result_hi[1]_INST_0_i_5 ;
  wire \n_4_result_hi[3]_INST_0_i_5 ;
  wire \n_4_result_hi[3]_INST_0_i_7 ;
  wire \n_4_result_lo[11]_INST_0_i_13 ;
  wire \n_4_result_lo[11]_INST_0_i_6 ;
  wire \n_4_result_lo[15]_INST_0_i_15 ;
  wire \n_4_result_lo[15]_INST_0_i_8 ;
  wire \n_4_result_lo[19]_INST_0_i_19 ;
  wire \n_4_result_lo[19]_INST_0_i_5 ;
  wire \n_4_result_lo[19]_INST_0_i_7 ;
  wire \n_4_result_lo[23]_INST_0_i_18 ;
  wire \n_4_result_lo[23]_INST_0_i_6 ;
  wire \n_4_result_lo[23]_INST_0_i_7 ;
  wire \n_4_result_lo[27]_INST_0_i_6 ;
  wire \n_4_result_lo[27]_INST_0_i_7 ;
  wire \n_4_result_lo[31]_INST_0_i_7 ;
  wire \n_4_result_lo[3]_INST_0_i_13 ;
  wire \n_4_result_lo[3]_INST_0_i_6 ;
  wire \n_4_result_lo[7]_INST_0_i_14 ;
  wire \n_4_result_lo[7]_INST_0_i_7 ;
  wire n_58_result_hi0;
  wire n_58_result_hi0__1;
  wire n_59_result_hi0;
  wire n_59_result_hi0__1;
  wire \n_5_result_hi[1]_INST_0_i_5 ;
  wire \n_5_result_hi[3]_INST_0_i_5 ;
  wire \n_5_result_hi[3]_INST_0_i_7 ;
  wire \n_5_result_lo[11]_INST_0_i_13 ;
  wire \n_5_result_lo[11]_INST_0_i_6 ;
  wire \n_5_result_lo[15]_INST_0_i_15 ;
  wire \n_5_result_lo[15]_INST_0_i_8 ;
  wire \n_5_result_lo[19]_INST_0_i_19 ;
  wire \n_5_result_lo[19]_INST_0_i_5 ;
  wire \n_5_result_lo[19]_INST_0_i_7 ;
  wire \n_5_result_lo[23]_INST_0_i_18 ;
  wire \n_5_result_lo[23]_INST_0_i_6 ;
  wire \n_5_result_lo[23]_INST_0_i_7 ;
  wire \n_5_result_lo[27]_INST_0_i_6 ;
  wire \n_5_result_lo[27]_INST_0_i_7 ;
  wire \n_5_result_lo[31]_INST_0_i_7 ;
  wire \n_5_result_lo[3]_INST_0_i_13 ;
  wire \n_5_result_lo[3]_INST_0_i_6 ;
  wire \n_5_result_lo[7]_INST_0_i_14 ;
  wire \n_5_result_lo[7]_INST_0_i_7 ;
  wire n_60_result_hi0;
  wire n_60_result_hi0__1;
  wire n_61_result_hi0;
  wire n_61_result_hi0__1;
  wire n_62_result_hi0;
  wire n_62_result_hi0__1;
  wire n_63_result_hi0;
  wire n_63_result_hi0__1;
  wire n_64_result_hi0;
  wire n_64_result_hi0__1;
  wire n_65_result_hi0;
  wire n_65_result_hi0__1;
  wire n_66_result_hi0;
  wire n_66_result_hi0__1;
  wire n_67_result_hi0;
  wire n_67_result_hi0__1;
  wire n_68_result_hi0;
  wire n_68_result_hi0__1;
  wire n_69_result_hi0;
  wire n_69_result_hi0__1;
  wire \n_6_result_hi[1]_INST_0_i_5 ;
  wire \n_6_result_hi[3]_INST_0_i_5 ;
  wire \n_6_result_hi[3]_INST_0_i_7 ;
  wire \n_6_result_lo[11]_INST_0_i_13 ;
  wire \n_6_result_lo[11]_INST_0_i_6 ;
  wire \n_6_result_lo[15]_INST_0_i_15 ;
  wire \n_6_result_lo[15]_INST_0_i_8 ;
  wire \n_6_result_lo[19]_INST_0_i_19 ;
  wire \n_6_result_lo[19]_INST_0_i_5 ;
  wire \n_6_result_lo[19]_INST_0_i_7 ;
  wire \n_6_result_lo[23]_INST_0_i_18 ;
  wire \n_6_result_lo[23]_INST_0_i_6 ;
  wire \n_6_result_lo[23]_INST_0_i_7 ;
  wire \n_6_result_lo[27]_INST_0_i_6 ;
  wire \n_6_result_lo[27]_INST_0_i_7 ;
  wire \n_6_result_lo[31]_INST_0_i_7 ;
  wire \n_6_result_lo[3]_INST_0_i_13 ;
  wire \n_6_result_lo[3]_INST_0_i_6 ;
  wire \n_6_result_lo[7]_INST_0_i_14 ;
  wire \n_6_result_lo[7]_INST_0_i_7 ;
  wire n_70_result_hi0;
  wire n_70_result_hi0__1;
  wire n_71_result_hi0;
  wire n_71_result_hi0__1;
  wire n_72_result_hi0;
  wire n_72_result_hi0__1;
  wire n_73_result_hi0;
  wire n_73_result_hi0__1;
  wire n_74_result_hi0;
  wire n_74_result_hi0__1;
  wire n_75_result_hi0;
  wire n_75_result_hi0__1;
  wire n_76_result_hi0;
  wire n_76_result_hi0__0;
  wire n_76_result_hi0__1;
  wire n_77_result_hi0;
  wire n_77_result_hi0__0;
  wire n_77_result_hi0__1;
  wire n_78_result_hi0;
  wire n_78_result_hi0__0;
  wire n_78_result_hi0__1;
  wire n_79_result_hi0;
  wire n_79_result_hi0__0;
  wire n_79_result_hi0__1;
  wire \n_7_result_hi[1]_INST_0_i_5 ;
  wire \n_7_result_hi[3]_INST_0_i_5 ;
  wire \n_7_result_hi[3]_INST_0_i_7 ;
  wire \n_7_result_lo[11]_INST_0_i_13 ;
  wire \n_7_result_lo[11]_INST_0_i_6 ;
  wire \n_7_result_lo[15]_INST_0_i_15 ;
  wire \n_7_result_lo[15]_INST_0_i_8 ;
  wire \n_7_result_lo[19]_INST_0_i_19 ;
  wire \n_7_result_lo[19]_INST_0_i_5 ;
  wire \n_7_result_lo[19]_INST_0_i_7 ;
  wire \n_7_result_lo[23]_INST_0_i_18 ;
  wire \n_7_result_lo[23]_INST_0_i_6 ;
  wire \n_7_result_lo[23]_INST_0_i_7 ;
  wire \n_7_result_lo[27]_INST_0_i_6 ;
  wire \n_7_result_lo[27]_INST_0_i_7 ;
  wire \n_7_result_lo[31]_INST_0_i_7 ;
  wire \n_7_result_lo[3]_INST_0_i_13 ;
  wire \n_7_result_lo[3]_INST_0_i_6 ;
  wire \n_7_result_lo[7]_INST_0_i_14 ;
  wire \n_7_result_lo[7]_INST_0_i_7 ;
  wire n_80_result_hi0;
  wire n_80_result_hi0__0;
  wire n_80_result_hi0__1;
  wire n_81_result_hi0;
  wire n_81_result_hi0__0;
  wire n_81_result_hi0__1;
  wire n_82_result_hi0;
  wire n_82_result_hi0__0;
  wire n_82_result_hi0__1;
  wire n_83_result_hi0;
  wire n_83_result_hi0__0;
  wire n_83_result_hi0__1;
  wire n_84_result_hi0;
  wire n_84_result_hi0__0;
  wire n_84_result_hi0__1;
  wire n_85_result_hi0;
  wire n_85_result_hi0__0;
  wire n_85_result_hi0__1;
  wire n_86_result_hi0;
  wire n_86_result_hi0__0;
  wire n_86_result_hi0__1;
  wire n_87_result_hi0;
  wire n_87_result_hi0__0;
  wire n_87_result_hi0__1;
  wire n_88_result_hi0;
  wire n_88_result_hi0__0;
  wire n_88_result_hi0__1;
  wire n_89_result_hi0;
  wire n_89_result_hi0__0;
  wire n_90_result_hi0;
  wire n_90_result_hi0__0;
  wire n_91_result_hi0;
  wire n_91_result_hi0__0;
  wire n_92_result_hi0;
  wire n_92_result_hi0__0;
  wire n_93_result_hi0;
  wire n_93_result_hi0__0;
  wire n_94_result_hi0;
  wire n_94_result_hi0__0;
  wire n_95_result_hi0;
  wire n_95_result_hi0__0;
  wire n_96_result_hi0;
  wire n_96_result_hi0__0;
  wire n_97_result_hi0;
  wire n_97_result_hi0__0;
  wire n_98_result_hi0;
  wire n_98_result_hi0__0;
  wire n_99_result_hi0;
  wire n_99_result_hi0__0;
  wire [63:0]p_1_in;
  wire [31:0]result_hi;
  wire result_hi2;
  wire [31:0]result_lo;
  wire [4:0]shamt;
  wire [31:0]src_a;
  wire [31:0]src_b;
  wire zero;
  wire NLW_result_hi0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_result_hi0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_result_hi0_OVERFLOW_UNCONNECTED;
  wire NLW_result_hi0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_result_hi0_PATTERNDETECT_UNCONNECTED;
  wire NLW_result_hi0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_result_hi0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_result_hi0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_result_hi0_CARRYOUT_UNCONNECTED;
  wire NLW_result_hi0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_result_hi0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_result_hi0__0_OVERFLOW_UNCONNECTED;
  wire NLW_result_hi0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_result_hi0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_result_hi0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_result_hi0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_result_hi0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_result_hi0__0_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_result_hi0__0_P_UNCONNECTED;
  wire [47:0]NLW_result_hi0__0_PCOUT_UNCONNECTED;
  wire NLW_result_hi0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_result_hi0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_result_hi0__1_OVERFLOW_UNCONNECTED;
  wire NLW_result_hi0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_result_hi0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_result_hi0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_result_hi0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_result_hi0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_result_hi0__1_CARRYOUT_UNCONNECTED;
  wire NLW_result_hi0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_result_hi0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_result_hi0__2_OVERFLOW_UNCONNECTED;
  wire NLW_result_hi0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_result_hi0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_result_hi0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_result_hi0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_result_hi0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_result_hi0__2_CARRYOUT_UNCONNECTED;
  wire [47:47]NLW_result_hi0__2_P_UNCONNECTED;
  wire [47:0]NLW_result_hi0__2_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_result_hi[31]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_hi[31]_INST_0_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_lo[0]_INST_0_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_result_lo[0]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_result_lo[0]_INST_0_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_result_lo[0]_INST_0_i_7_O_UNCONNECTED ;

  assign overflow = \<const0> ;
GND GND
       (.G(\<const0> ));
DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
     result_hi0
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,src_b[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACOUT(NLW_result_hi0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\<const0> ,\<const0> ,src_a[31:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(NLW_result_hi0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(NLW_result_hi0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(NLW_result_hi0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(NLW_result_hi0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,1'b1,\<const0> ,1'b1}),
        .OVERFLOW(NLW_result_hi0_OVERFLOW_UNCONNECTED),
        .P({n_58_result_hi0,n_59_result_hi0,n_60_result_hi0,n_61_result_hi0,n_62_result_hi0,n_63_result_hi0,n_64_result_hi0,n_65_result_hi0,n_66_result_hi0,n_67_result_hi0,n_68_result_hi0,n_69_result_hi0,n_70_result_hi0,n_71_result_hi0,n_72_result_hi0,n_73_result_hi0,n_74_result_hi0,n_75_result_hi0,n_76_result_hi0,n_77_result_hi0,n_78_result_hi0,n_79_result_hi0,n_80_result_hi0,n_81_result_hi0,n_82_result_hi0,n_83_result_hi0,n_84_result_hi0,n_85_result_hi0,n_86_result_hi0,n_87_result_hi0,n_88_result_hi0,n_89_result_hi0,n_90_result_hi0,n_91_result_hi0,n_92_result_hi0,n_93_result_hi0,n_94_result_hi0,n_95_result_hi0,n_96_result_hi0,n_97_result_hi0,n_98_result_hi0,n_99_result_hi0,n_100_result_hi0,n_101_result_hi0,n_102_result_hi0,n_103_result_hi0,n_104_result_hi0,n_105_result_hi0}),
        .PATTERNBDETECT(NLW_result_hi0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_result_hi0_PATTERNDETECT_UNCONNECTED),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCOUT({n_106_result_hi0,n_107_result_hi0,n_108_result_hi0,n_109_result_hi0,n_110_result_hi0,n_111_result_hi0,n_112_result_hi0,n_113_result_hi0,n_114_result_hi0,n_115_result_hi0,n_116_result_hi0,n_117_result_hi0,n_118_result_hi0,n_119_result_hi0,n_120_result_hi0,n_121_result_hi0,n_122_result_hi0,n_123_result_hi0,n_124_result_hi0,n_125_result_hi0,n_126_result_hi0,n_127_result_hi0,n_128_result_hi0,n_129_result_hi0,n_130_result_hi0,n_131_result_hi0,n_132_result_hi0,n_133_result_hi0,n_134_result_hi0,n_135_result_hi0,n_136_result_hi0,n_137_result_hi0,n_138_result_hi0,n_139_result_hi0,n_140_result_hi0,n_141_result_hi0,n_142_result_hi0,n_143_result_hi0,n_144_result_hi0,n_145_result_hi0,n_146_result_hi0,n_147_result_hi0,n_148_result_hi0,n_149_result_hi0,n_150_result_hi0,n_151_result_hi0,n_152_result_hi0,n_153_result_hi0}),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(NLW_result_hi0_UNDERFLOW_UNCONNECTED));
DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
     result_hi0__0
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,src_a[31:17]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACOUT(NLW_result_hi0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\<const0> ,\<const0> ,src_b[31:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(NLW_result_hi0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(NLW_result_hi0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(NLW_result_hi0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(NLW_result_hi0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,\<const0> ,1'b1,\<const0> ,1'b1,\<const0> ,1'b1}),
        .OVERFLOW(NLW_result_hi0__0_OVERFLOW_UNCONNECTED),
        .P({NLW_result_hi0__0_P_UNCONNECTED[47:30],n_76_result_hi0__0,n_77_result_hi0__0,n_78_result_hi0__0,n_79_result_hi0__0,n_80_result_hi0__0,n_81_result_hi0__0,n_82_result_hi0__0,n_83_result_hi0__0,n_84_result_hi0__0,n_85_result_hi0__0,n_86_result_hi0__0,n_87_result_hi0__0,n_88_result_hi0__0,n_89_result_hi0__0,n_90_result_hi0__0,n_91_result_hi0__0,n_92_result_hi0__0,n_93_result_hi0__0,n_94_result_hi0__0,n_95_result_hi0__0,n_96_result_hi0__0,n_97_result_hi0__0,n_98_result_hi0__0,n_99_result_hi0__0,n_100_result_hi0__0,n_101_result_hi0__0,n_102_result_hi0__0,n_103_result_hi0__0,n_104_result_hi0__0,n_105_result_hi0__0}),
        .PATTERNBDETECT(NLW_result_hi0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_result_hi0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({n_106_result_hi0,n_107_result_hi0,n_108_result_hi0,n_109_result_hi0,n_110_result_hi0,n_111_result_hi0,n_112_result_hi0,n_113_result_hi0,n_114_result_hi0,n_115_result_hi0,n_116_result_hi0,n_117_result_hi0,n_118_result_hi0,n_119_result_hi0,n_120_result_hi0,n_121_result_hi0,n_122_result_hi0,n_123_result_hi0,n_124_result_hi0,n_125_result_hi0,n_126_result_hi0,n_127_result_hi0,n_128_result_hi0,n_129_result_hi0,n_130_result_hi0,n_131_result_hi0,n_132_result_hi0,n_133_result_hi0,n_134_result_hi0,n_135_result_hi0,n_136_result_hi0,n_137_result_hi0,n_138_result_hi0,n_139_result_hi0,n_140_result_hi0,n_141_result_hi0,n_142_result_hi0,n_143_result_hi0,n_144_result_hi0,n_145_result_hi0,n_146_result_hi0,n_147_result_hi0,n_148_result_hi0,n_149_result_hi0,n_150_result_hi0,n_151_result_hi0,n_152_result_hi0,n_153_result_hi0}),
        .PCOUT(NLW_result_hi0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(NLW_result_hi0__0_UNDERFLOW_UNCONNECTED));
DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
     result_hi0__1
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,src_a[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACOUT(NLW_result_hi0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,src_b[16:0]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(NLW_result_hi0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(NLW_result_hi0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(NLW_result_hi0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(NLW_result_hi0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,1'b1,\<const0> ,1'b1}),
        .OVERFLOW(NLW_result_hi0__1_OVERFLOW_UNCONNECTED),
        .P({n_58_result_hi0__1,n_59_result_hi0__1,n_60_result_hi0__1,n_61_result_hi0__1,n_62_result_hi0__1,n_63_result_hi0__1,n_64_result_hi0__1,n_65_result_hi0__1,n_66_result_hi0__1,n_67_result_hi0__1,n_68_result_hi0__1,n_69_result_hi0__1,n_70_result_hi0__1,n_71_result_hi0__1,n_72_result_hi0__1,n_73_result_hi0__1,n_74_result_hi0__1,n_75_result_hi0__1,n_76_result_hi0__1,n_77_result_hi0__1,n_78_result_hi0__1,n_79_result_hi0__1,n_80_result_hi0__1,n_81_result_hi0__1,n_82_result_hi0__1,n_83_result_hi0__1,n_84_result_hi0__1,n_85_result_hi0__1,n_86_result_hi0__1,n_87_result_hi0__1,n_88_result_hi0__1,p_1_in[16:0]}),
        .PATTERNBDETECT(NLW_result_hi0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_result_hi0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCOUT({n_106_result_hi0__1,n_107_result_hi0__1,n_108_result_hi0__1,n_109_result_hi0__1,n_110_result_hi0__1,n_111_result_hi0__1,n_112_result_hi0__1,n_113_result_hi0__1,n_114_result_hi0__1,n_115_result_hi0__1,n_116_result_hi0__1,n_117_result_hi0__1,n_118_result_hi0__1,n_119_result_hi0__1,n_120_result_hi0__1,n_121_result_hi0__1,n_122_result_hi0__1,n_123_result_hi0__1,n_124_result_hi0__1,n_125_result_hi0__1,n_126_result_hi0__1,n_127_result_hi0__1,n_128_result_hi0__1,n_129_result_hi0__1,n_130_result_hi0__1,n_131_result_hi0__1,n_132_result_hi0__1,n_133_result_hi0__1,n_134_result_hi0__1,n_135_result_hi0__1,n_136_result_hi0__1,n_137_result_hi0__1,n_138_result_hi0__1,n_139_result_hi0__1,n_140_result_hi0__1,n_141_result_hi0__1,n_142_result_hi0__1,n_143_result_hi0__1,n_144_result_hi0__1,n_145_result_hi0__1,n_146_result_hi0__1,n_147_result_hi0__1,n_148_result_hi0__1,n_149_result_hi0__1,n_150_result_hi0__1,n_151_result_hi0__1,n_152_result_hi0__1,n_153_result_hi0__1}),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(NLW_result_hi0__1_UNDERFLOW_UNCONNECTED));
DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
     result_hi0__2
       (.A({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,src_a[16:0]}),
        .ACIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ACOUT(NLW_result_hi0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .B({\<const0> ,\<const0> ,\<const0> ,src_b[31:17]}),
        .BCIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .BCOUT(NLW_result_hi0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(\<const0> ),
        .CARRYCASCOUT(NLW_result_hi0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(\<const0> ),
        .CARRYINSEL({\<const0> ,\<const0> ,\<const0> }),
        .CARRYOUT(NLW_result_hi0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(\<const0> ),
        .CEA2(\<const0> ),
        .CEAD(\<const0> ),
        .CEALUMODE(\<const0> ),
        .CEB1(\<const0> ),
        .CEB2(\<const0> ),
        .CEC(\<const0> ),
        .CECARRYIN(\<const0> ),
        .CECTRL(\<const0> ),
        .CED(\<const0> ),
        .CEINMODE(\<const0> ),
        .CEM(\<const0> ),
        .CEP(\<const0> ),
        .CLK(\<const0> ),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .MULTSIGNIN(\<const0> ),
        .MULTSIGNOUT(NLW_result_hi0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,\<const0> ,1'b1,\<const0> ,1'b1,\<const0> ,1'b1}),
        .OVERFLOW(NLW_result_hi0__2_OVERFLOW_UNCONNECTED),
        .P({NLW_result_hi0__2_P_UNCONNECTED[47],p_1_in[63:17]}),
        .PATTERNBDETECT(NLW_result_hi0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_result_hi0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({n_106_result_hi0__1,n_107_result_hi0__1,n_108_result_hi0__1,n_109_result_hi0__1,n_110_result_hi0__1,n_111_result_hi0__1,n_112_result_hi0__1,n_113_result_hi0__1,n_114_result_hi0__1,n_115_result_hi0__1,n_116_result_hi0__1,n_117_result_hi0__1,n_118_result_hi0__1,n_119_result_hi0__1,n_120_result_hi0__1,n_121_result_hi0__1,n_122_result_hi0__1,n_123_result_hi0__1,n_124_result_hi0__1,n_125_result_hi0__1,n_126_result_hi0__1,n_127_result_hi0__1,n_128_result_hi0__1,n_129_result_hi0__1,n_130_result_hi0__1,n_131_result_hi0__1,n_132_result_hi0__1,n_133_result_hi0__1,n_134_result_hi0__1,n_135_result_hi0__1,n_136_result_hi0__1,n_137_result_hi0__1,n_138_result_hi0__1,n_139_result_hi0__1,n_140_result_hi0__1,n_141_result_hi0__1,n_142_result_hi0__1,n_143_result_hi0__1,n_144_result_hi0__1,n_145_result_hi0__1,n_146_result_hi0__1,n_147_result_hi0__1,n_148_result_hi0__1,n_149_result_hi0__1,n_150_result_hi0__1,n_151_result_hi0__1,n_152_result_hi0__1,n_153_result_hi0__1}),
        .PCOUT(NLW_result_hi0__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(\<const0> ),
        .RSTALLCARRYIN(\<const0> ),
        .RSTALUMODE(\<const0> ),
        .RSTB(\<const0> ),
        .RSTC(\<const0> ),
        .RSTCTRL(\<const0> ),
        .RSTD(\<const0> ),
        .RSTINMODE(\<const0> ),
        .RSTM(\<const0> ),
        .RSTP(\<const0> ),
        .UNDERFLOW(NLW_result_hi0__2_UNDERFLOW_UNCONNECTED));
LUT6 #(
    .INIT(64'hFFFFFFFF11010000)) 
     \result_hi[0]_INST_0 
       (.I0(alu_control[0]),
        .I1(alu_control[2]),
        .I2(alu_control[4]),
        .I3(data3[0]),
        .I4(\n_0_result_hi[0]_INST_0_i_1 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[0]));
LUT6 #(
    .INIT(64'h8F8F8F800F000F00)) 
     \result_hi[0]_INST_0_i_1 
       (.I0(data4[0]),
        .I1(alu_control[5]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[0]_INST_0_i_2 ),
        .I4(\n_0_result_hi[0]_INST_0_i_3 ),
        .I5(\n_0_result_hi[0]_INST_0_i_4 ),
        .O(\n_0_result_hi[0]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h00E0)) 
     \result_hi[0]_INST_0_i_2 
       (.I0(\n_0_result_lo[31]_INST_0_i_7 ),
        .I1(alu_control[4]),
        .I2(alu_control[3]),
        .I3(alu_control[5]),
        .O(\n_0_result_hi[0]_INST_0_i_2 ));
LUT5 #(
    .INIT(32'hFFE400E4)) 
     \result_hi[0]_INST_0_i_3 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[16]_INST_0_i_1 ),
        .I2(\n_0_result_hi[0]_INST_0_i_5 ),
        .I3(alu_control[5]),
        .I4(\n_0_result_lo[31]_INST_0_i_7 ),
        .O(\n_0_result_hi[0]_INST_0_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \result_hi[0]_INST_0_i_4 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .O(\n_0_result_hi[0]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[0]_INST_0_i_5 
       (.I0(\n_0_result_lo[12]_INST_0_i_8 ),
        .I1(\n_0_result_hi[4]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[8]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[12]_INST_0_i_4 ),
        .O(\n_0_result_hi[0]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[10]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[10]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[10]),
        .I4(\n_0_result_hi[10]_INST_0_i_4 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[10]));
LUT6 #(
    .INIT(64'h00000000A2808080)) 
     \result_hi[10]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[10]_INST_0_i_5 ),
        .I3(\n_0_result_hi[26]_INST_0_i_2 ),
        .I4(shamt[3]),
        .I5(\n_0_result_hi[10]_INST_0_i_6 ),
        .O(\n_0_result_hi[10]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'h00000040)) 
     \result_hi[10]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[5]),
        .I2(alu_control[1]),
        .I3(alu_control[4]),
        .I4(alu_control[3]),
        .O(\n_0_result_hi[10]_INST_0_i_2 ));
CARRY4 \result_hi[10]_INST_0_i_3 
       (.CI(\n_0_result_hi[7]_INST_0_i_2 ),
        .CO({\n_0_result_hi[10]_INST_0_i_3 ,\n_1_result_hi[10]_INST_0_i_3 ,\n_2_result_hi[10]_INST_0_i_3 ,\n_3_result_hi[10]_INST_0_i_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[11:8]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[10]_INST_0_i_4 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[10]),
        .O(\n_0_result_hi[10]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[10]_INST_0_i_5 
       (.I0(\n_0_result_hi[10]_INST_0_i_7 ),
        .I1(\n_0_result_hi[14]_INST_0_i_10 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[18]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[22]_INST_0_i_6 ),
        .O(\n_0_result_hi[10]_INST_0_i_5 ));
LUT2 #(
    .INIT(4'hE)) 
     \result_hi[10]_INST_0_i_6 
       (.I0(alu_control[5]),
        .I1(alu_control[4]),
        .O(\n_0_result_hi[10]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[10]_INST_0_i_7 
       (.I0(src_b[11]),
        .I1(src_b[12]),
        .I2(shamt[1]),
        .I3(src_b[13]),
        .I4(shamt[0]),
        .I5(src_b[14]),
        .O(\n_0_result_hi[10]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[11]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[11]_INST_0_i_1 ),
        .I2(data3[11]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[11]));
LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
     \result_hi[11]_INST_0_i_1 
       (.I0(data4[11]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[11]_INST_0_i_3 ),
        .I3(\n_0_result_hi[11]_INST_0_i_4 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(\n_0_result_hi[11]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[11]_INST_0_i_10 
       (.I0(src_b[12]),
        .I1(src_b[13]),
        .I2(shamt[1]),
        .I3(src_b[14]),
        .I4(shamt[0]),
        .I5(src_b[15]),
        .O(\n_0_result_hi[11]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_11 
       (.I0(p_1_in[39]),
        .I1(n_100_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_12 
       (.I0(p_1_in[38]),
        .I1(n_101_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_13 
       (.I0(p_1_in[37]),
        .I1(n_102_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_14 
       (.I0(p_1_in[36]),
        .I1(n_103_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_14 ));
CARRY4 \result_hi[11]_INST_0_i_2 
       (.CI(\n_0_result_hi[11]_INST_0_i_5 ),
        .CO({\n_0_result_hi[11]_INST_0_i_2 ,\n_1_result_hi[11]_INST_0_i_2 ,\n_2_result_hi[11]_INST_0_i_2 ,\n_3_result_hi[11]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[43:40]),
        .O(data3[11:8]),
        .S({\n_0_result_hi[11]_INST_0_i_6 ,\n_0_result_hi[11]_INST_0_i_7 ,\n_0_result_hi[11]_INST_0_i_8 ,\n_0_result_hi[11]_INST_0_i_9 }));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1555)) 
     \result_hi[11]_INST_0_i_3 
       (.I0(shamt[4]),
        .I1(shamt[3]),
        .I2(shamt[2]),
        .I3(\n_0_result_hi[27]_INST_0_i_4 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[11]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[11]_INST_0_i_4 
       (.I0(\n_0_result_hi[11]_INST_0_i_10 ),
        .I1(\n_0_result_hi[15]_INST_0_i_5 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[19]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[19]_INST_0_i_5 ),
        .O(\n_0_result_hi[11]_INST_0_i_4 ));
CARRY4 \result_hi[11]_INST_0_i_5 
       (.CI(\n_0_result_hi[1]_INST_0_i_2 ),
        .CO({\n_0_result_hi[11]_INST_0_i_5 ,\n_1_result_hi[11]_INST_0_i_5 ,\n_2_result_hi[11]_INST_0_i_5 ,\n_3_result_hi[11]_INST_0_i_5 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[39:36]),
        .O(data3[7:4]),
        .S({\n_0_result_hi[11]_INST_0_i_11 ,\n_0_result_hi[11]_INST_0_i_12 ,\n_0_result_hi[11]_INST_0_i_13 ,\n_0_result_hi[11]_INST_0_i_14 }));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_6 
       (.I0(p_1_in[43]),
        .I1(n_96_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_7 
       (.I0(p_1_in[42]),
        .I1(n_97_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_8 
       (.I0(p_1_in[41]),
        .I1(n_98_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[11]_INST_0_i_9 
       (.I0(p_1_in[40]),
        .I1(n_99_result_hi0__0),
        .O(\n_0_result_hi[11]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[12]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[12]_INST_0_i_1 ),
        .I2(data3[12]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[12]));
LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
     \result_hi[12]_INST_0_i_1 
       (.I0(data4[12]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[12]_INST_0_i_2 ),
        .I3(\n_0_result_hi[12]_INST_0_i_3 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(\n_0_result_hi[12]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1555)) 
     \result_hi[12]_INST_0_i_2 
       (.I0(shamt[4]),
        .I1(shamt[3]),
        .I2(shamt[2]),
        .I3(\n_0_result_hi[28]_INST_0_i_2 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[12]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[12]_INST_0_i_3 
       (.I0(\n_0_result_hi[12]_INST_0_i_4 ),
        .I1(\n_0_result_hi[16]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[20]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[20]_INST_0_i_5 ),
        .O(\n_0_result_hi[12]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[12]_INST_0_i_4 
       (.I0(src_b[13]),
        .I1(src_b[14]),
        .I2(shamt[1]),
        .I3(src_b[15]),
        .I4(shamt[0]),
        .I5(src_b[16]),
        .O(\n_0_result_hi[12]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[13]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[13]_INST_0_i_1 ),
        .I2(data3[13]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[13]));
LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
     \result_hi[13]_INST_0_i_1 
       (.I0(data4[13]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[13]_INST_0_i_2 ),
        .I3(\n_0_result_hi[13]_INST_0_i_3 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(\n_0_result_hi[13]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFFFFFF13)) 
     \result_hi[13]_INST_0_i_2 
       (.I0(\n_0_result_hi[29]_INST_0_i_2 ),
        .I1(shamt[4]),
        .I2(shamt[3]),
        .I3(alu_control[5]),
        .I4(alu_control[4]),
        .O(\n_0_result_hi[13]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[13]_INST_0_i_3 
       (.I0(\n_0_result_hi[13]_INST_0_i_4 ),
        .I1(\n_0_result_hi[17]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[21]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[21]_INST_0_i_5 ),
        .O(\n_0_result_hi[13]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[13]_INST_0_i_4 
       (.I0(src_b[14]),
        .I1(src_b[15]),
        .I2(shamt[1]),
        .I3(src_b[16]),
        .I4(shamt[0]),
        .I5(src_b[17]),
        .O(\n_0_result_hi[13]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[14]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[14]_INST_0_i_1 ),
        .I2(data3[14]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[14]));
LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
     \result_hi[14]_INST_0_i_1 
       (.I0(data4[14]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[14]_INST_0_i_3 ),
        .I3(\n_0_result_hi[14]_INST_0_i_4 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(\n_0_result_hi[14]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[14]_INST_0_i_10 
       (.I0(src_b[15]),
        .I1(src_b[16]),
        .I2(shamt[1]),
        .I3(src_b[17]),
        .I4(shamt[0]),
        .I5(src_b[18]),
        .O(\n_0_result_hi[14]_INST_0_i_10 ));
CARRY4 \result_hi[14]_INST_0_i_2 
       (.CI(\n_0_result_hi[11]_INST_0_i_2 ),
        .CO({\n_0_result_hi[14]_INST_0_i_2 ,\n_1_result_hi[14]_INST_0_i_2 ,\n_2_result_hi[14]_INST_0_i_2 ,\n_3_result_hi[14]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[47:44]),
        .O(data3[15:12]),
        .S({\n_0_result_hi[14]_INST_0_i_6 ,\n_0_result_hi[14]_INST_0_i_7 ,\n_0_result_hi[14]_INST_0_i_8 ,\n_0_result_hi[14]_INST_0_i_9 }));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF007F)) 
     \result_hi[14]_INST_0_i_3 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[30]_INST_0_i_4 ),
        .I3(shamt[4]),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[14]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[14]_INST_0_i_4 
       (.I0(\n_0_result_hi[14]_INST_0_i_10 ),
        .I1(\n_0_result_hi[18]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[22]_INST_0_i_6 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[22]_INST_0_i_7 ),
        .O(\n_0_result_hi[14]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \result_hi[14]_INST_0_i_5 
       (.I0(alu_control[1]),
        .I1(alu_control[2]),
        .I2(alu_control[3]),
        .O(\n_0_result_hi[14]_INST_0_i_5 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[14]_INST_0_i_6 
       (.I0(p_1_in[47]),
        .I1(n_92_result_hi0__0),
        .O(\n_0_result_hi[14]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[14]_INST_0_i_7 
       (.I0(p_1_in[46]),
        .I1(n_93_result_hi0__0),
        .O(\n_0_result_hi[14]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[14]_INST_0_i_8 
       (.I0(p_1_in[45]),
        .I1(n_94_result_hi0__0),
        .O(\n_0_result_hi[14]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[14]_INST_0_i_9 
       (.I0(p_1_in[44]),
        .I1(n_95_result_hi0__0),
        .O(\n_0_result_hi[14]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'h000C0000AAAAAAAA)) 
     \result_hi[15]_INST_0 
       (.I0(\n_0_result_hi[15]_INST_0_i_1 ),
        .I1(alu_control[1]),
        .I2(alu_control[4]),
        .I3(alu_control[3]),
        .I4(\n_0_result_hi[15]_INST_0_i_2 ),
        .I5(alu_control[0]),
        .O(result_hi[15]));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_hi[15]_INST_0_i_1 
       (.I0(\n_0_result_hi[22]_INST_0_i_1 ),
        .I1(\n_0_result_hi[15]_INST_0_i_3 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[15]),
        .I4(data3[15]),
        .I5(\n_0_result_hi[30]_INST_0_i_2 ),
        .O(\n_0_result_hi[15]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \result_hi[15]_INST_0_i_2 
       (.I0(alu_control[5]),
        .I1(alu_control[2]),
        .O(\n_0_result_hi[15]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[15]_INST_0_i_3 
       (.I0(\n_0_result_hi[15]_INST_0_i_5 ),
        .I1(\n_0_result_hi[19]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[19]_INST_0_i_5 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[27]_INST_0_i_4 ),
        .O(\n_0_result_hi[15]_INST_0_i_3 ));
CARRY4 \result_hi[15]_INST_0_i_4 
       (.CI(\n_0_result_hi[10]_INST_0_i_3 ),
        .CO({\n_0_result_hi[15]_INST_0_i_4 ,\n_1_result_hi[15]_INST_0_i_4 ,\n_2_result_hi[15]_INST_0_i_4 ,\n_3_result_hi[15]_INST_0_i_4 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[15:12]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[15]_INST_0_i_5 
       (.I0(src_b[16]),
        .I1(src_b[17]),
        .I2(shamt[1]),
        .I3(src_b[18]),
        .I4(shamt[0]),
        .I5(src_b[19]),
        .O(\n_0_result_hi[15]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[16]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[16]_INST_0_i_1 ),
        .I3(\n_0_result_hi[16]_INST_0_i_2 ),
        .I4(\n_0_result_hi[16]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[16]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[16]_INST_0_i_1 
       (.I0(\n_0_result_hi[16]_INST_0_i_4 ),
        .I1(\n_0_result_hi[20]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[20]_INST_0_i_5 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[28]_INST_0_i_2 ),
        .O(\n_0_result_hi[16]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[16]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[16]),
        .O(\n_0_result_hi[16]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[16]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[16]),
        .O(\n_0_result_hi[16]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[16]_INST_0_i_4 
       (.I0(src_b[17]),
        .I1(src_b[18]),
        .I2(shamt[1]),
        .I3(src_b[19]),
        .I4(shamt[0]),
        .I5(src_b[20]),
        .O(\n_0_result_hi[16]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[17]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[17]_INST_0_i_1 ),
        .I3(\n_0_result_hi[17]_INST_0_i_2 ),
        .I4(\n_0_result_hi[17]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[17]));
LUT6 #(
    .INIT(64'hAFCFAFCFAFC0A0C0)) 
     \result_hi[17]_INST_0_i_1 
       (.I0(\n_0_result_hi[17]_INST_0_i_4 ),
        .I1(\n_0_result_hi[21]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[21]_INST_0_i_5 ),
        .I5(\n_0_result_hi[17]_INST_0_i_5 ),
        .O(\n_0_result_hi[17]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[17]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[17]),
        .O(\n_0_result_hi[17]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[17]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[17]),
        .O(\n_0_result_hi[17]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[17]_INST_0_i_4 
       (.I0(src_b[18]),
        .I1(src_b[19]),
        .I2(shamt[1]),
        .I3(src_b[20]),
        .I4(shamt[0]),
        .I5(src_b[21]),
        .O(\n_0_result_hi[17]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h44400040)) 
     \result_hi[17]_INST_0_i_5 
       (.I0(shamt[2]),
        .I1(shamt[1]),
        .I2(src_b[31]),
        .I3(shamt[0]),
        .I4(src_b[30]),
        .O(\n_0_result_hi[17]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[18]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[18]_INST_0_i_1 ),
        .I3(\n_0_result_hi[18]_INST_0_i_2 ),
        .I4(\n_0_result_hi[18]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[18]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[18]_INST_0_i_1 
       (.I0(\n_0_result_hi[18]_INST_0_i_4 ),
        .I1(\n_0_result_hi[22]_INST_0_i_6 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[22]_INST_0_i_7 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[30]_INST_0_i_4 ),
        .O(\n_0_result_hi[18]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[18]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[18]),
        .O(\n_0_result_hi[18]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[18]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[18]),
        .O(\n_0_result_hi[18]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[18]_INST_0_i_4 
       (.I0(src_b[19]),
        .I1(src_b[20]),
        .I2(shamt[1]),
        .I3(src_b[21]),
        .I4(shamt[0]),
        .I5(src_b[22]),
        .O(\n_0_result_hi[18]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[19]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[19]_INST_0_i_1 ),
        .I3(\n_0_result_hi[19]_INST_0_i_2 ),
        .I4(\n_0_result_hi[19]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[19]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'hAACCF000)) 
     \result_hi[19]_INST_0_i_1 
       (.I0(\n_0_result_hi[19]_INST_0_i_4 ),
        .I1(\n_0_result_hi[19]_INST_0_i_5 ),
        .I2(\n_0_result_hi[27]_INST_0_i_4 ),
        .I3(shamt[2]),
        .I4(shamt[3]),
        .O(\n_0_result_hi[19]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[19]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[19]),
        .O(\n_0_result_hi[19]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[19]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[19]),
        .O(\n_0_result_hi[19]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[19]_INST_0_i_4 
       (.I0(src_b[20]),
        .I1(src_b[21]),
        .I2(shamt[1]),
        .I3(src_b[22]),
        .I4(shamt[0]),
        .I5(src_b[23]),
        .O(\n_0_result_hi[19]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[19]_INST_0_i_5 
       (.I0(src_b[24]),
        .I1(src_b[25]),
        .I2(shamt[1]),
        .I3(src_b[26]),
        .I4(shamt[0]),
        .I5(src_b[27]),
        .O(\n_0_result_hi[19]_INST_0_i_5 ));
CARRY4 \result_hi[19]_INST_0_i_6 
       (.CI(\n_0_result_hi[15]_INST_0_i_4 ),
        .CO({\n_0_result_hi[19]_INST_0_i_6 ,\n_1_result_hi[19]_INST_0_i_6 ,\n_2_result_hi[19]_INST_0_i_6 ,\n_3_result_hi[19]_INST_0_i_6 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[19:16]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[1]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[1]_INST_0_i_1 ),
        .I2(data3[1]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[1]));
LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
     \result_hi[1]_INST_0_i_1 
       (.I0(data4[1]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[1]_INST_0_i_3 ),
        .I3(\n_0_result_hi[1]_INST_0_i_4 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(\n_0_result_hi[1]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_hi[1]_INST_0_i_10 
       (.I0(\n_0_result_hi[17]_INST_0_i_4 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[21]_INST_0_i_4 ),
        .O(\n_0_result_hi[1]_INST_0_i_10 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[1]_INST_0_i_11 
       (.I0(src_b[2]),
        .I1(src_b[3]),
        .I2(shamt[1]),
        .I3(src_b[4]),
        .I4(shamt[0]),
        .I5(src_b[5]),
        .O(\n_0_result_hi[1]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_12 
       (.I0(p_1_in[31]),
        .I1(n_91_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_13 
       (.I0(p_1_in[30]),
        .I1(n_92_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_14 
       (.I0(p_1_in[29]),
        .I1(n_93_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_15 
       (.I0(p_1_in[28]),
        .I1(n_94_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_15 ));
CARRY4 \result_hi[1]_INST_0_i_2 
       (.CI(\n_0_result_hi[1]_INST_0_i_5 ),
        .CO({\n_0_result_hi[1]_INST_0_i_2 ,\n_1_result_hi[1]_INST_0_i_2 ,\n_2_result_hi[1]_INST_0_i_2 ,\n_3_result_hi[1]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[35:32]),
        .O(data3[3:0]),
        .S({\n_0_result_hi[1]_INST_0_i_6 ,\n_0_result_hi[1]_INST_0_i_7 ,\n_0_result_hi[1]_INST_0_i_8 ,\n_0_result_hi[1]_INST_0_i_9 }));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1015)) 
     \result_hi[1]_INST_0_i_3 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[1]_INST_0_i_10 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[25]_INST_0_i_2 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[1]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[1]_INST_0_i_4 
       (.I0(\n_0_result_hi[1]_INST_0_i_11 ),
        .I1(\n_0_result_hi[5]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[9]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[13]_INST_0_i_4 ),
        .O(\n_0_result_hi[1]_INST_0_i_4 ));
CARRY4 \result_hi[1]_INST_0_i_5 
       (.CI(\n_0_result_lo[27]_INST_0_i_7 ),
        .CO({\n_0_result_hi[1]_INST_0_i_5 ,\n_1_result_hi[1]_INST_0_i_5 ,\n_2_result_hi[1]_INST_0_i_5 ,\n_3_result_hi[1]_INST_0_i_5 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[31:28]),
        .O({\n_4_result_hi[1]_INST_0_i_5 ,\n_5_result_hi[1]_INST_0_i_5 ,\n_6_result_hi[1]_INST_0_i_5 ,\n_7_result_hi[1]_INST_0_i_5 }),
        .S({\n_0_result_hi[1]_INST_0_i_12 ,\n_0_result_hi[1]_INST_0_i_13 ,\n_0_result_hi[1]_INST_0_i_14 ,\n_0_result_hi[1]_INST_0_i_15 }));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_6 
       (.I0(p_1_in[35]),
        .I1(n_104_result_hi0__0),
        .O(\n_0_result_hi[1]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_7 
       (.I0(p_1_in[34]),
        .I1(n_105_result_hi0__0),
        .O(\n_0_result_hi[1]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_8 
       (.I0(p_1_in[33]),
        .I1(n_89_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[1]_INST_0_i_9 
       (.I0(p_1_in[32]),
        .I1(n_90_result_hi0),
        .O(\n_0_result_hi[1]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[20]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[20]_INST_0_i_1 ),
        .I3(\n_0_result_hi[20]_INST_0_i_2 ),
        .I4(\n_0_result_hi[20]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[20]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'hAACCF000)) 
     \result_hi[20]_INST_0_i_1 
       (.I0(\n_0_result_hi[20]_INST_0_i_4 ),
        .I1(\n_0_result_hi[20]_INST_0_i_5 ),
        .I2(\n_0_result_hi[28]_INST_0_i_2 ),
        .I3(shamt[2]),
        .I4(shamt[3]),
        .O(\n_0_result_hi[20]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[20]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[20]),
        .O(\n_0_result_hi[20]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[20]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[20]),
        .O(\n_0_result_hi[20]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[20]_INST_0_i_4 
       (.I0(src_b[21]),
        .I1(src_b[22]),
        .I2(shamt[1]),
        .I3(src_b[23]),
        .I4(shamt[0]),
        .I5(src_b[24]),
        .O(\n_0_result_hi[20]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[20]_INST_0_i_5 
       (.I0(src_b[25]),
        .I1(src_b[26]),
        .I2(shamt[1]),
        .I3(src_b[27]),
        .I4(shamt[0]),
        .I5(src_b[28]),
        .O(\n_0_result_hi[20]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[21]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[21]_INST_0_i_1 ),
        .I3(\n_0_result_hi[21]_INST_0_i_2 ),
        .I4(\n_0_result_hi[21]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[21]));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \result_hi[21]_INST_0_i_1 
       (.I0(\n_0_result_hi[21]_INST_0_i_4 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[21]_INST_0_i_5 ),
        .I3(shamt[3]),
        .I4(\n_0_result_hi[29]_INST_0_i_2 ),
        .O(\n_0_result_hi[21]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[21]_INST_0_i_2 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[21]),
        .O(\n_0_result_hi[21]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[21]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[21]),
        .O(\n_0_result_hi[21]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[21]_INST_0_i_4 
       (.I0(src_b[22]),
        .I1(src_b[23]),
        .I2(shamt[1]),
        .I3(src_b[24]),
        .I4(shamt[0]),
        .I5(src_b[25]),
        .O(\n_0_result_hi[21]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[21]_INST_0_i_5 
       (.I0(src_b[26]),
        .I1(src_b[27]),
        .I2(shamt[1]),
        .I3(src_b[28]),
        .I4(shamt[0]),
        .I5(src_b[29]),
        .O(\n_0_result_hi[21]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555540)) 
     \result_hi[22]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[22]_INST_0_i_1 ),
        .I2(\n_0_result_hi[22]_INST_0_i_2 ),
        .I3(\n_0_result_hi[22]_INST_0_i_3 ),
        .I4(\n_0_result_hi[22]_INST_0_i_4 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[22]));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \result_hi[22]_INST_0_i_1 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(shamt[4]),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_hi[22]_INST_0_i_1 ));
LUT5 #(
    .INIT(32'hAACCF000)) 
     \result_hi[22]_INST_0_i_2 
       (.I0(\n_0_result_hi[22]_INST_0_i_6 ),
        .I1(\n_0_result_hi[22]_INST_0_i_7 ),
        .I2(\n_0_result_hi[30]_INST_0_i_4 ),
        .I3(shamt[2]),
        .I4(shamt[3]),
        .O(\n_0_result_hi[22]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \result_hi[22]_INST_0_i_3 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[22]),
        .O(\n_0_result_hi[22]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[22]_INST_0_i_4 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[22]),
        .O(\n_0_result_hi[22]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h0000008000000000)) 
     \result_hi[22]_INST_0_i_5 
       (.I0(alu_control[0]),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(alu_control[1]),
        .O(\n_0_result_hi[22]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[22]_INST_0_i_6 
       (.I0(src_b[23]),
        .I1(src_b[24]),
        .I2(shamt[1]),
        .I3(src_b[25]),
        .I4(shamt[0]),
        .I5(src_b[26]),
        .O(\n_0_result_hi[22]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[22]_INST_0_i_7 
       (.I0(src_b[27]),
        .I1(src_b[28]),
        .I2(shamt[1]),
        .I3(src_b[29]),
        .I4(shamt[0]),
        .I5(src_b[30]),
        .O(\n_0_result_hi[22]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[23]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[23]_INST_0_i_1 ),
        .I2(data3[23]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[23]));
LUT5 #(
    .INIT(32'hF8888888)) 
     \result_hi[23]_INST_0_i_1 
       (.I0(data4[23]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[23]_INST_0_i_4 ),
        .I3(\n_0_result_hi[22]_INST_0_i_1 ),
        .I4(shamt[3]),
        .O(\n_0_result_hi[23]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_10 
       (.I0(p_1_in[51]),
        .I1(n_88_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_11 
       (.I0(p_1_in[50]),
        .I1(n_89_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_12 
       (.I0(p_1_in[49]),
        .I1(n_90_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_13 
       (.I0(p_1_in[48]),
        .I1(n_91_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_13 ));
CARRY4 \result_hi[23]_INST_0_i_2 
       (.CI(\n_0_result_hi[23]_INST_0_i_5 ),
        .CO({\n_0_result_hi[23]_INST_0_i_2 ,\n_1_result_hi[23]_INST_0_i_2 ,\n_2_result_hi[23]_INST_0_i_2 ,\n_3_result_hi[23]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[55:52]),
        .O(data3[23:20]),
        .S({\n_0_result_hi[23]_INST_0_i_6 ,\n_0_result_hi[23]_INST_0_i_7 ,\n_0_result_hi[23]_INST_0_i_8 ,\n_0_result_hi[23]_INST_0_i_9 }));
CARRY4 \result_hi[23]_INST_0_i_3 
       (.CI(\n_0_result_hi[19]_INST_0_i_6 ),
        .CO({\n_0_result_hi[23]_INST_0_i_3 ,\n_1_result_hi[23]_INST_0_i_3 ,\n_2_result_hi[23]_INST_0_i_3 ,\n_3_result_hi[23]_INST_0_i_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[23:20]),
        .S({1'b1,1'b1,1'b1,1'b1}));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_hi[23]_INST_0_i_4 
       (.I0(\n_0_result_hi[19]_INST_0_i_5 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[27]_INST_0_i_4 ),
        .O(\n_0_result_hi[23]_INST_0_i_4 ));
CARRY4 \result_hi[23]_INST_0_i_5 
       (.CI(\n_0_result_hi[14]_INST_0_i_2 ),
        .CO({\n_0_result_hi[23]_INST_0_i_5 ,\n_1_result_hi[23]_INST_0_i_5 ,\n_2_result_hi[23]_INST_0_i_5 ,\n_3_result_hi[23]_INST_0_i_5 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[51:48]),
        .O(data3[19:16]),
        .S({\n_0_result_hi[23]_INST_0_i_10 ,\n_0_result_hi[23]_INST_0_i_11 ,\n_0_result_hi[23]_INST_0_i_12 ,\n_0_result_hi[23]_INST_0_i_13 }));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_6 
       (.I0(p_1_in[55]),
        .I1(n_84_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_7 
       (.I0(p_1_in[54]),
        .I1(n_85_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_8 
       (.I0(p_1_in[53]),
        .I1(n_86_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[23]_INST_0_i_9 
       (.I0(p_1_in[52]),
        .I1(n_87_result_hi0__0),
        .O(\n_0_result_hi[23]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[24]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[24]_INST_0_i_1 ),
        .I2(data3[24]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[24]));
LUT5 #(
    .INIT(32'hF8888888)) 
     \result_hi[24]_INST_0_i_1 
       (.I0(data4[24]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[24]_INST_0_i_2 ),
        .I3(\n_0_result_hi[22]_INST_0_i_1 ),
        .I4(shamt[3]),
        .O(\n_0_result_hi[24]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_hi[24]_INST_0_i_2 
       (.I0(\n_0_result_hi[20]_INST_0_i_5 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[28]_INST_0_i_2 ),
        .O(\n_0_result_hi[24]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[25]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[25]_INST_0_i_1 ),
        .I2(data3[25]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[25]));
LUT5 #(
    .INIT(32'hF8888888)) 
     \result_hi[25]_INST_0_i_1 
       (.I0(data4[25]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[25]_INST_0_i_2 ),
        .I3(\n_0_result_hi[22]_INST_0_i_1 ),
        .I4(shamt[3]),
        .O(\n_0_result_hi[25]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAACFC00000)) 
     \result_hi[25]_INST_0_i_2 
       (.I0(\n_0_result_hi[21]_INST_0_i_5 ),
        .I1(src_b[30]),
        .I2(shamt[0]),
        .I3(src_b[31]),
        .I4(shamt[1]),
        .I5(shamt[2]),
        .O(\n_0_result_hi[25]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[26]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[26]_INST_0_i_1 ),
        .I2(data3[26]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[26]));
LUT5 #(
    .INIT(32'hF8888888)) 
     \result_hi[26]_INST_0_i_1 
       (.I0(data4[26]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[26]_INST_0_i_2 ),
        .I3(\n_0_result_hi[22]_INST_0_i_1 ),
        .I4(shamt[3]),
        .O(\n_0_result_hi[26]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hB8888888)) 
     \result_hi[26]_INST_0_i_2 
       (.I0(\n_0_result_hi[22]_INST_0_i_7 ),
        .I1(shamt[2]),
        .I2(src_b[31]),
        .I3(shamt[1]),
        .I4(shamt[0]),
        .O(\n_0_result_hi[26]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[27]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[27]_INST_0_i_1 ),
        .I2(data3[27]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[27]));
LUT6 #(
    .INIT(64'hF888888888888888)) 
     \result_hi[27]_INST_0_i_1 
       (.I0(data4[27]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(shamt[3]),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[27]_INST_0_i_4 ),
        .I5(\n_0_result_hi[22]_INST_0_i_1 ),
        .O(\n_0_result_hi[27]_INST_0_i_1 ));
CARRY4 \result_hi[27]_INST_0_i_2 
       (.CI(\n_0_result_hi[23]_INST_0_i_2 ),
        .CO({\n_0_result_hi[27]_INST_0_i_2 ,\n_1_result_hi[27]_INST_0_i_2 ,\n_2_result_hi[27]_INST_0_i_2 ,\n_3_result_hi[27]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[59:56]),
        .O(data3[27:24]),
        .S({\n_0_result_hi[27]_INST_0_i_5 ,\n_0_result_hi[27]_INST_0_i_6 ,\n_0_result_hi[27]_INST_0_i_7 ,\n_0_result_hi[27]_INST_0_i_8 }));
CARRY4 \result_hi[27]_INST_0_i_3 
       (.CI(\n_0_result_hi[23]_INST_0_i_3 ),
        .CO({\n_0_result_hi[27]_INST_0_i_3 ,\n_1_result_hi[27]_INST_0_i_3 ,\n_2_result_hi[27]_INST_0_i_3 ,\n_3_result_hi[27]_INST_0_i_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[27:24]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[27]_INST_0_i_4 
       (.I0(src_b[28]),
        .I1(src_b[29]),
        .I2(shamt[1]),
        .I3(src_b[30]),
        .I4(shamt[0]),
        .I5(src_b[31]),
        .O(\n_0_result_hi[27]_INST_0_i_4 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[27]_INST_0_i_5 
       (.I0(p_1_in[59]),
        .I1(n_80_result_hi0__0),
        .O(\n_0_result_hi[27]_INST_0_i_5 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[27]_INST_0_i_6 
       (.I0(p_1_in[58]),
        .I1(n_81_result_hi0__0),
        .O(\n_0_result_hi[27]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[27]_INST_0_i_7 
       (.I0(p_1_in[57]),
        .I1(n_82_result_hi0__0),
        .O(\n_0_result_hi[27]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[27]_INST_0_i_8 
       (.I0(p_1_in[56]),
        .I1(n_83_result_hi0__0),
        .O(\n_0_result_hi[27]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[28]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[28]_INST_0_i_1 ),
        .I2(data3[28]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[28]));
LUT6 #(
    .INIT(64'hF888888888888888)) 
     \result_hi[28]_INST_0_i_1 
       (.I0(data4[28]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(shamt[3]),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[28]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_1 ),
        .O(\n_0_result_hi[28]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hAFC0A0C0)) 
     \result_hi[28]_INST_0_i_2 
       (.I0(src_b[29]),
        .I1(src_b[30]),
        .I2(shamt[1]),
        .I3(shamt[0]),
        .I4(src_b[31]),
        .O(\n_0_result_hi[28]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[29]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[29]_INST_0_i_1 ),
        .I2(data3[29]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[29]));
LUT5 #(
    .INIT(32'hF8888888)) 
     \result_hi[29]_INST_0_i_1 
       (.I0(data4[29]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(\n_0_result_hi[29]_INST_0_i_2 ),
        .I3(\n_0_result_hi[22]_INST_0_i_1 ),
        .I4(shamt[3]),
        .O(\n_0_result_hi[29]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h88800080)) 
     \result_hi[29]_INST_0_i_2 
       (.I0(shamt[2]),
        .I1(shamt[1]),
        .I2(src_b[31]),
        .I3(shamt[0]),
        .I4(src_b[30]),
        .O(\n_0_result_hi[29]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[2]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[2]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[2]),
        .I4(\n_0_result_hi[2]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[2]));
LUT6 #(
    .INIT(64'h000000000000A280)) 
     \result_hi[2]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[2]_INST_0_i_3 ),
        .I3(\n_0_result_hi[18]_INST_0_i_1 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[2]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[2]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[2]),
        .O(\n_0_result_hi[2]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[2]_INST_0_i_3 
       (.I0(\n_0_result_hi[2]_INST_0_i_4 ),
        .I1(\n_0_result_hi[6]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[10]_INST_0_i_7 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[14]_INST_0_i_10 ),
        .O(\n_0_result_hi[2]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[2]_INST_0_i_4 
       (.I0(src_b[3]),
        .I1(src_b[4]),
        .I2(shamt[1]),
        .I3(src_b[5]),
        .I4(shamt[0]),
        .I5(src_b[6]),
        .O(\n_0_result_hi[2]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF544454445444)) 
     \result_hi[30]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[30]_INST_0_i_1 ),
        .I2(data3[30]),
        .I3(\n_0_result_hi[30]_INST_0_i_2 ),
        .I4(alu_control[1]),
        .I5(\n_0_result_hi[30]_INST_0_i_3 ),
        .O(result_hi[30]));
LUT6 #(
    .INIT(64'hF888888888888888)) 
     \result_hi[30]_INST_0_i_1 
       (.I0(data4[30]),
        .I1(\n_0_result_hi[10]_INST_0_i_2 ),
        .I2(shamt[3]),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[30]_INST_0_i_4 ),
        .I5(\n_0_result_hi[22]_INST_0_i_1 ),
        .O(\n_0_result_hi[30]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00000008)) 
     \result_hi[30]_INST_0_i_2 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(alu_control[5]),
        .I3(alu_control[1]),
        .I4(alu_control[2]),
        .O(\n_0_result_hi[30]_INST_0_i_2 ));
LUT5 #(
    .INIT(32'h10000000)) 
     \result_hi[30]_INST_0_i_3 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(alu_control[5]),
        .I3(alu_control[2]),
        .I4(alu_control[0]),
        .O(\n_0_result_hi[30]_INST_0_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \result_hi[30]_INST_0_i_4 
       (.I0(src_b[31]),
        .I1(shamt[1]),
        .I2(shamt[0]),
        .O(\n_0_result_hi[30]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h000C8000)) 
     \result_hi[31]_INST_0 
       (.I0(data3[31]),
        .I1(\n_0_result_hi[31]_INST_0_i_2 ),
        .I2(alu_control[3]),
        .I3(alu_control[4]),
        .I4(alu_control[5]),
        .O(result_hi[31]));
CARRY4 \result_hi[31]_INST_0_i_1 
       (.CI(\n_0_result_hi[27]_INST_0_i_2 ),
        .CO({\NLW_result_hi[31]_INST_0_i_1_CO_UNCONNECTED [3],\n_1_result_hi[31]_INST_0_i_1 ,\n_2_result_hi[31]_INST_0_i_1 ,\n_3_result_hi[31]_INST_0_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,p_1_in[62:60]}),
        .O(data3[31:28]),
        .S({\n_0_result_hi[31]_INST_0_i_3 ,\n_0_result_hi[31]_INST_0_i_4 ,\n_0_result_hi[31]_INST_0_i_5 ,\n_0_result_hi[31]_INST_0_i_6 }));
LUT5 #(
    .INIT(32'h00C00320)) 
     \result_hi[31]_INST_0_i_2 
       (.I0(data4[31]),
        .I1(alu_control[2]),
        .I2(alu_control[1]),
        .I3(alu_control[3]),
        .I4(alu_control[0]),
        .O(\n_0_result_hi[31]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[31]_INST_0_i_3 
       (.I0(p_1_in[63]),
        .I1(n_76_result_hi0__0),
        .O(\n_0_result_hi[31]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[31]_INST_0_i_4 
       (.I0(p_1_in[62]),
        .I1(n_77_result_hi0__0),
        .O(\n_0_result_hi[31]_INST_0_i_4 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[31]_INST_0_i_5 
       (.I0(p_1_in[61]),
        .I1(n_78_result_hi0__0),
        .O(\n_0_result_hi[31]_INST_0_i_5 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_hi[31]_INST_0_i_6 
       (.I0(p_1_in[60]),
        .I1(n_79_result_hi0__0),
        .O(\n_0_result_hi[31]_INST_0_i_6 ));
CARRY4 \result_hi[31]_INST_0_i_7 
       (.CI(\n_0_result_hi[27]_INST_0_i_3 ),
        .CO({\NLW_result_hi[31]_INST_0_i_7_CO_UNCONNECTED [3],\n_1_result_hi[31]_INST_0_i_7 ,\n_2_result_hi[31]_INST_0_i_7 ,\n_3_result_hi[31]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[31:28]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[3]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[3]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[3]),
        .I4(\n_0_result_hi[3]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[3]));
LUT6 #(
    .INIT(64'h000000000000A808)) 
     \result_hi[3]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(\n_0_result_hi[19]_INST_0_i_1 ),
        .I2(shamt[4]),
        .I3(\n_0_result_hi[3]_INST_0_i_4 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[3]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_10 
       (.I0(src_a[29]),
        .I1(src_b[29]),
        .O(\n_0_result_hi[3]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_11 
       (.I0(src_a[28]),
        .I1(src_b[28]),
        .O(\n_0_result_hi[3]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_12 
       (.I0(src_a[27]),
        .I1(src_b[27]),
        .O(\n_0_result_hi[3]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_13 
       (.I0(src_a[26]),
        .I1(src_b[26]),
        .O(\n_0_result_hi[3]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_14 
       (.I0(src_a[25]),
        .I1(src_b[25]),
        .O(\n_0_result_hi[3]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_15 
       (.I0(src_a[24]),
        .I1(src_b[24]),
        .O(\n_0_result_hi[3]_INST_0_i_15 ));
CARRY4 \result_hi[3]_INST_0_i_2 
       (.CI(\n_0_result_hi[3]_INST_0_i_5 ),
        .CO({\n_0_result_hi[3]_INST_0_i_2 ,\n_1_result_hi[3]_INST_0_i_2 ,\n_2_result_hi[3]_INST_0_i_2 ,\n_3_result_hi[3]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[3]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[3]),
        .O(\n_0_result_hi[3]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[3]_INST_0_i_4 
       (.I0(\n_0_result_hi[3]_INST_0_i_6 ),
        .I1(\n_0_result_hi[7]_INST_0_i_5 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[11]_INST_0_i_10 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[15]_INST_0_i_5 ),
        .O(\n_0_result_hi[3]_INST_0_i_4 ));
CARRY4 \result_hi[3]_INST_0_i_5 
       (.CI(\n_0_result_hi[3]_INST_0_i_7 ),
        .CO({\n_0_result_hi[3]_INST_0_i_5 ,\n_1_result_hi[3]_INST_0_i_5 ,\n_2_result_hi[3]_INST_0_i_5 ,\n_3_result_hi[3]_INST_0_i_5 }),
        .CYINIT(\<const0> ),
        .DI(src_a[31:28]),
        .O({\n_4_result_hi[3]_INST_0_i_5 ,\n_5_result_hi[3]_INST_0_i_5 ,\n_6_result_hi[3]_INST_0_i_5 ,\n_7_result_hi[3]_INST_0_i_5 }),
        .S({\n_0_result_hi[3]_INST_0_i_8 ,\n_0_result_hi[3]_INST_0_i_9 ,\n_0_result_hi[3]_INST_0_i_10 ,\n_0_result_hi[3]_INST_0_i_11 }));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[3]_INST_0_i_6 
       (.I0(src_b[4]),
        .I1(src_b[5]),
        .I2(shamt[1]),
        .I3(src_b[6]),
        .I4(shamt[0]),
        .I5(src_b[7]),
        .O(\n_0_result_hi[3]_INST_0_i_6 ));
CARRY4 \result_hi[3]_INST_0_i_7 
       (.CI(\n_0_result_lo[23]_INST_0_i_18 ),
        .CO({\n_0_result_hi[3]_INST_0_i_7 ,\n_1_result_hi[3]_INST_0_i_7 ,\n_2_result_hi[3]_INST_0_i_7 ,\n_3_result_hi[3]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI(src_a[27:24]),
        .O({\n_4_result_hi[3]_INST_0_i_7 ,\n_5_result_hi[3]_INST_0_i_7 ,\n_6_result_hi[3]_INST_0_i_7 ,\n_7_result_hi[3]_INST_0_i_7 }),
        .S({\n_0_result_hi[3]_INST_0_i_12 ,\n_0_result_hi[3]_INST_0_i_13 ,\n_0_result_hi[3]_INST_0_i_14 ,\n_0_result_hi[3]_INST_0_i_15 }));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_8 
       (.I0(src_a[31]),
        .I1(src_b[31]),
        .O(\n_0_result_hi[3]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_hi[3]_INST_0_i_9 
       (.I0(src_a[30]),
        .I1(src_b[30]),
        .O(\n_0_result_hi[3]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[4]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[4]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[4]),
        .I4(\n_0_result_hi[4]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[4]));
LUT6 #(
    .INIT(64'h000000000000A808)) 
     \result_hi[4]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(\n_0_result_hi[20]_INST_0_i_1 ),
        .I2(shamt[4]),
        .I3(\n_0_result_hi[4]_INST_0_i_3 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[4]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[4]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[4]),
        .O(\n_0_result_hi[4]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[4]_INST_0_i_3 
       (.I0(\n_0_result_hi[4]_INST_0_i_4 ),
        .I1(\n_0_result_hi[8]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[12]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[16]_INST_0_i_4 ),
        .O(\n_0_result_hi[4]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[4]_INST_0_i_4 
       (.I0(src_b[5]),
        .I1(src_b[6]),
        .I2(shamt[1]),
        .I3(src_b[7]),
        .I4(shamt[0]),
        .I5(src_b[8]),
        .O(\n_0_result_hi[4]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[5]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[5]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[5]),
        .I4(\n_0_result_hi[5]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[5]));
LUT6 #(
    .INIT(64'h000000000000A280)) 
     \result_hi[5]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[5]_INST_0_i_3 ),
        .I3(\n_0_result_hi[21]_INST_0_i_1 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[5]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[5]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[5]),
        .O(\n_0_result_hi[5]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[5]_INST_0_i_3 
       (.I0(\n_0_result_hi[5]_INST_0_i_4 ),
        .I1(\n_0_result_hi[9]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[13]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[17]_INST_0_i_4 ),
        .O(\n_0_result_hi[5]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[5]_INST_0_i_4 
       (.I0(src_b[6]),
        .I1(src_b[7]),
        .I2(shamt[1]),
        .I3(src_b[8]),
        .I4(shamt[0]),
        .I5(src_b[9]),
        .O(\n_0_result_hi[5]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[6]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[6]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[6]),
        .I4(\n_0_result_hi[6]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[6]));
LUT6 #(
    .INIT(64'h000000000000A808)) 
     \result_hi[6]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(\n_0_result_hi[22]_INST_0_i_2 ),
        .I2(shamt[4]),
        .I3(\n_0_result_hi[6]_INST_0_i_3 ),
        .I4(alu_control[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_hi[6]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[6]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[6]),
        .O(\n_0_result_hi[6]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[6]_INST_0_i_3 
       (.I0(\n_0_result_hi[6]_INST_0_i_4 ),
        .I1(\n_0_result_hi[10]_INST_0_i_7 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[14]_INST_0_i_10 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[18]_INST_0_i_4 ),
        .O(\n_0_result_hi[6]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[6]_INST_0_i_4 
       (.I0(src_b[7]),
        .I1(src_b[8]),
        .I2(shamt[1]),
        .I3(src_b[9]),
        .I4(shamt[0]),
        .I5(src_b[10]),
        .O(\n_0_result_hi[6]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[7]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[7]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[7]),
        .I4(\n_0_result_hi[7]_INST_0_i_3 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[7]));
LUT6 #(
    .INIT(64'h00000000A2808080)) 
     \result_hi[7]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[7]_INST_0_i_4 ),
        .I3(\n_0_result_hi[23]_INST_0_i_4 ),
        .I4(shamt[3]),
        .I5(\n_0_result_hi[10]_INST_0_i_6 ),
        .O(\n_0_result_hi[7]_INST_0_i_1 ));
CARRY4 \result_hi[7]_INST_0_i_2 
       (.CI(\n_0_result_hi[3]_INST_0_i_2 ),
        .CO({\n_0_result_hi[7]_INST_0_i_2 ,\n_1_result_hi[7]_INST_0_i_2 ,\n_2_result_hi[7]_INST_0_i_2 ,\n_3_result_hi[7]_INST_0_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data4[7:4]),
        .S({1'b1,1'b1,1'b1,1'b1}));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[7]_INST_0_i_3 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[7]),
        .O(\n_0_result_hi[7]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[7]_INST_0_i_4 
       (.I0(\n_0_result_hi[7]_INST_0_i_5 ),
        .I1(\n_0_result_hi[11]_INST_0_i_10 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[15]_INST_0_i_5 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[19]_INST_0_i_4 ),
        .O(\n_0_result_hi[7]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[7]_INST_0_i_5 
       (.I0(src_b[8]),
        .I1(src_b[9]),
        .I2(shamt[1]),
        .I3(src_b[10]),
        .I4(shamt[0]),
        .I5(src_b[11]),
        .O(\n_0_result_hi[7]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[8]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[8]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[8]),
        .I4(\n_0_result_hi[8]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[8]));
LUT6 #(
    .INIT(64'h00000000A2808080)) 
     \result_hi[8]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[8]_INST_0_i_3 ),
        .I3(\n_0_result_hi[24]_INST_0_i_2 ),
        .I4(shamt[3]),
        .I5(\n_0_result_hi[10]_INST_0_i_6 ),
        .O(\n_0_result_hi[8]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[8]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[8]),
        .O(\n_0_result_hi[8]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[8]_INST_0_i_3 
       (.I0(\n_0_result_hi[8]_INST_0_i_4 ),
        .I1(\n_0_result_hi[12]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[16]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[20]_INST_0_i_4 ),
        .O(\n_0_result_hi[8]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[8]_INST_0_i_4 
       (.I0(src_b[9]),
        .I1(src_b[10]),
        .I2(shamt[1]),
        .I3(src_b[11]),
        .I4(shamt[0]),
        .I5(src_b[12]),
        .O(\n_0_result_hi[8]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
     \result_hi[9]_INST_0 
       (.I0(alu_control[0]),
        .I1(\n_0_result_hi[9]_INST_0_i_1 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[9]),
        .I4(\n_0_result_hi[9]_INST_0_i_2 ),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(result_hi[9]));
LUT6 #(
    .INIT(64'h00000000A2808080)) 
     \result_hi[9]_INST_0_i_1 
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[9]_INST_0_i_3 ),
        .I3(\n_0_result_hi[25]_INST_0_i_2 ),
        .I4(shamt[3]),
        .I5(\n_0_result_hi[10]_INST_0_i_6 ),
        .O(\n_0_result_hi[9]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     \result_hi[9]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[9]),
        .O(\n_0_result_hi[9]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[9]_INST_0_i_3 
       (.I0(\n_0_result_hi[9]_INST_0_i_4 ),
        .I1(\n_0_result_hi[13]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[17]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[21]_INST_0_i_4 ),
        .O(\n_0_result_hi[9]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_hi[9]_INST_0_i_4 
       (.I0(src_b[10]),
        .I1(src_b[11]),
        .I2(shamt[1]),
        .I3(src_b[12]),
        .I4(shamt[0]),
        .I5(src_b[13]),
        .O(\n_0_result_hi[9]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hBABABABABBBABABA)) 
     \result_lo[0]_INST_0 
       (.I0(\n_0_result_lo[0]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[0]_INST_0_i_2 ),
        .I3(\n_0_result_lo[0]_INST_0_i_3 ),
        .I4(alu_control[1]),
        .I5(alu_control[4]),
        .O(result_lo[0]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[0]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[0]),
        .I2(src_b[0]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[0]_INST_0_i_1 ));
CARRY4 \result_lo[0]_INST_0_i_10 
       (.CI(\n_0_result_lo[0]_INST_0_i_20 ),
        .CO({\n_0_result_lo[0]_INST_0_i_10 ,\n_1_result_lo[0]_INST_0_i_10 ,\n_2_result_lo[0]_INST_0_i_10 ,\n_3_result_lo[0]_INST_0_i_10 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_result_lo[0]_INST_0_i_21 ,\n_0_result_lo[0]_INST_0_i_22 ,\n_0_result_lo[0]_INST_0_i_23 ,\n_0_result_lo[0]_INST_0_i_24 }),
        .O(\NLW_result_lo[0]_INST_0_i_10_O_UNCONNECTED [3:0]),
        .S({\n_0_result_lo[0]_INST_0_i_25 ,\n_0_result_lo[0]_INST_0_i_26 ,\n_0_result_lo[0]_INST_0_i_27 ,\n_0_result_lo[0]_INST_0_i_28 }));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_11 
       (.I0(src_b[31]),
        .I1(src_a[31]),
        .I2(src_b[30]),
        .I3(src_a[30]),
        .O(\n_0_result_lo[0]_INST_0_i_11 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_12 
       (.I0(src_b[29]),
        .I1(src_a[29]),
        .I2(src_b[28]),
        .I3(src_a[28]),
        .O(\n_0_result_lo[0]_INST_0_i_12 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_13 
       (.I0(src_b[27]),
        .I1(src_a[27]),
        .I2(src_b[26]),
        .I3(src_a[26]),
        .O(\n_0_result_lo[0]_INST_0_i_13 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_14 
       (.I0(src_b[25]),
        .I1(src_a[25]),
        .I2(src_b[24]),
        .I3(src_a[24]),
        .O(\n_0_result_lo[0]_INST_0_i_14 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_15 
       (.I0(src_a[30]),
        .I1(src_b[30]),
        .I2(src_a[31]),
        .I3(src_b[31]),
        .O(\n_0_result_lo[0]_INST_0_i_15 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_16 
       (.I0(src_a[28]),
        .I1(src_b[28]),
        .I2(src_a[29]),
        .I3(src_b[29]),
        .O(\n_0_result_lo[0]_INST_0_i_16 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_17 
       (.I0(src_a[26]),
        .I1(src_b[26]),
        .I2(src_a[27]),
        .I3(src_b[27]),
        .O(\n_0_result_lo[0]_INST_0_i_17 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_18 
       (.I0(src_a[24]),
        .I1(src_b[24]),
        .I2(src_a[25]),
        .I3(src_b[25]),
        .O(\n_0_result_lo[0]_INST_0_i_18 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[0]_INST_0_i_19 
       (.I0(src_b[0]),
        .I1(src_b[16]),
        .I2(shamt[3]),
        .I3(src_b[24]),
        .I4(shamt[4]),
        .I5(src_b[8]),
        .O(\n_0_result_lo[0]_INST_0_i_19 ));
LUT6 #(
    .INIT(64'h808080808080FF80)) 
     \result_lo[0]_INST_0_i_2 
       (.I0(\n_0_result_lo[1]_INST_0_i_4 ),
        .I1(src_a[0]),
        .I2(src_b[0]),
        .I3(\n_0_result_lo[0]_INST_0_i_4 ),
        .I4(alu_control[2]),
        .I5(alu_control[1]),
        .O(\n_0_result_lo[0]_INST_0_i_2 ));
CARRY4 \result_lo[0]_INST_0_i_20 
       (.CI(\n_0_result_lo[0]_INST_0_i_29 ),
        .CO({\n_0_result_lo[0]_INST_0_i_20 ,\n_1_result_lo[0]_INST_0_i_20 ,\n_2_result_lo[0]_INST_0_i_20 ,\n_3_result_lo[0]_INST_0_i_20 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_result_lo[0]_INST_0_i_30 ,\n_0_result_lo[0]_INST_0_i_31 ,\n_0_result_lo[0]_INST_0_i_32 ,\n_0_result_lo[0]_INST_0_i_33 }),
        .O(\NLW_result_lo[0]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\n_0_result_lo[0]_INST_0_i_34 ,\n_0_result_lo[0]_INST_0_i_35 ,\n_0_result_lo[0]_INST_0_i_36 ,\n_0_result_lo[0]_INST_0_i_37 }));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_21 
       (.I0(src_b[23]),
        .I1(src_a[23]),
        .I2(src_b[22]),
        .I3(src_a[22]),
        .O(\n_0_result_lo[0]_INST_0_i_21 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_22 
       (.I0(src_b[21]),
        .I1(src_a[21]),
        .I2(src_b[20]),
        .I3(src_a[20]),
        .O(\n_0_result_lo[0]_INST_0_i_22 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_23 
       (.I0(src_b[19]),
        .I1(src_a[19]),
        .I2(src_b[18]),
        .I3(src_a[18]),
        .O(\n_0_result_lo[0]_INST_0_i_23 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_24 
       (.I0(src_b[17]),
        .I1(src_a[17]),
        .I2(src_b[16]),
        .I3(src_a[16]),
        .O(\n_0_result_lo[0]_INST_0_i_24 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_25 
       (.I0(src_a[22]),
        .I1(src_b[22]),
        .I2(src_a[23]),
        .I3(src_b[23]),
        .O(\n_0_result_lo[0]_INST_0_i_25 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_26 
       (.I0(src_a[20]),
        .I1(src_b[20]),
        .I2(src_a[21]),
        .I3(src_b[21]),
        .O(\n_0_result_lo[0]_INST_0_i_26 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_27 
       (.I0(src_a[18]),
        .I1(src_b[18]),
        .I2(src_a[19]),
        .I3(src_b[19]),
        .O(\n_0_result_lo[0]_INST_0_i_27 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_28 
       (.I0(src_a[16]),
        .I1(src_b[16]),
        .I2(src_a[17]),
        .I3(src_b[17]),
        .O(\n_0_result_lo[0]_INST_0_i_28 ));
CARRY4 \result_lo[0]_INST_0_i_29 
       (.CI(\<const0> ),
        .CO({\n_0_result_lo[0]_INST_0_i_29 ,\n_1_result_lo[0]_INST_0_i_29 ,\n_2_result_lo[0]_INST_0_i_29 ,\n_3_result_lo[0]_INST_0_i_29 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_result_lo[0]_INST_0_i_38 ,\n_0_result_lo[0]_INST_0_i_39 ,\n_0_result_lo[0]_INST_0_i_40 ,\n_0_result_lo[0]_INST_0_i_41 }),
        .O(\NLW_result_lo[0]_INST_0_i_29_O_UNCONNECTED [3:0]),
        .S({\n_0_result_lo[0]_INST_0_i_42 ,\n_0_result_lo[0]_INST_0_i_43 ,\n_0_result_lo[0]_INST_0_i_44 ,\n_0_result_lo[0]_INST_0_i_45 }));
LUT6 #(
    .INIT(64'h00F030AA000030AA)) 
     \result_lo[0]_INST_0_i_3 
       (.I0(\n_0_result_lo[0]_INST_0_i_5 ),
        .I1(\n_0_result_lo[0]_INST_0_i_6 ),
        .I2(alu_control[5]),
        .I3(alu_control[2]),
        .I4(alu_control[3]),
        .I5(result_hi2),
        .O(\n_0_result_lo[0]_INST_0_i_3 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_30 
       (.I0(src_b[15]),
        .I1(src_a[15]),
        .I2(src_b[14]),
        .I3(src_a[14]),
        .O(\n_0_result_lo[0]_INST_0_i_30 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_31 
       (.I0(src_b[13]),
        .I1(src_a[13]),
        .I2(src_b[12]),
        .I3(src_a[12]),
        .O(\n_0_result_lo[0]_INST_0_i_31 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_32 
       (.I0(src_b[11]),
        .I1(src_a[11]),
        .I2(src_b[10]),
        .I3(src_a[10]),
        .O(\n_0_result_lo[0]_INST_0_i_32 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_33 
       (.I0(src_b[9]),
        .I1(src_a[9]),
        .I2(src_b[8]),
        .I3(src_a[8]),
        .O(\n_0_result_lo[0]_INST_0_i_33 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_34 
       (.I0(src_a[14]),
        .I1(src_b[14]),
        .I2(src_a[15]),
        .I3(src_b[15]),
        .O(\n_0_result_lo[0]_INST_0_i_34 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_35 
       (.I0(src_a[12]),
        .I1(src_b[12]),
        .I2(src_a[13]),
        .I3(src_b[13]),
        .O(\n_0_result_lo[0]_INST_0_i_35 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_36 
       (.I0(src_a[10]),
        .I1(src_b[10]),
        .I2(src_a[11]),
        .I3(src_b[11]),
        .O(\n_0_result_lo[0]_INST_0_i_36 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_37 
       (.I0(src_a[8]),
        .I1(src_b[8]),
        .I2(src_a[9]),
        .I3(src_b[9]),
        .O(\n_0_result_lo[0]_INST_0_i_37 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_38 
       (.I0(src_b[7]),
        .I1(src_a[7]),
        .I2(src_b[6]),
        .I3(src_a[6]),
        .O(\n_0_result_lo[0]_INST_0_i_38 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_39 
       (.I0(src_b[5]),
        .I1(src_a[5]),
        .I2(src_b[4]),
        .I3(src_a[4]),
        .O(\n_0_result_lo[0]_INST_0_i_39 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[0]_INST_0_i_4 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[0]_INST_0_i_8 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_7_result_lo[3]_INST_0_i_6 ),
        .I4(p_1_in[0]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[0]_INST_0_i_4 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_40 
       (.I0(src_b[3]),
        .I1(src_a[3]),
        .I2(src_b[2]),
        .I3(src_a[2]),
        .O(\n_0_result_lo[0]_INST_0_i_40 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \result_lo[0]_INST_0_i_41 
       (.I0(src_b[1]),
        .I1(src_a[1]),
        .I2(src_b[0]),
        .I3(src_a[0]),
        .O(\n_0_result_lo[0]_INST_0_i_41 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_42 
       (.I0(src_a[6]),
        .I1(src_b[6]),
        .I2(src_a[7]),
        .I3(src_b[7]),
        .O(\n_0_result_lo[0]_INST_0_i_42 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_43 
       (.I0(src_a[4]),
        .I1(src_b[4]),
        .I2(src_a[5]),
        .I3(src_b[5]),
        .O(\n_0_result_lo[0]_INST_0_i_43 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_44 
       (.I0(src_a[2]),
        .I1(src_b[2]),
        .I2(src_a[3]),
        .I3(src_b[3]),
        .O(\n_0_result_lo[0]_INST_0_i_44 ));
LUT4 #(
    .INIT(16'h9009)) 
     \result_lo[0]_INST_0_i_45 
       (.I0(src_b[0]),
        .I1(src_a[0]),
        .I2(src_a[1]),
        .I3(src_b[1]),
        .O(\n_0_result_lo[0]_INST_0_i_45 ));
LUT5 #(
    .INIT(32'hFFE400E4)) 
     \result_lo[0]_INST_0_i_5 
       (.I0(shamt[0]),
        .I1(\n_0_result_lo[0]_INST_0_i_9 ),
        .I2(\n_0_result_lo[1]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(\n_7_result_lo[3]_INST_0_i_13 ),
        .O(\n_0_result_lo[0]_INST_0_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \result_lo[0]_INST_0_i_6 
       (.I0(src_b[0]),
        .I1(src_a[0]),
        .O(\n_0_result_lo[0]_INST_0_i_6 ));
CARRY4 \result_lo[0]_INST_0_i_7 
       (.CI(\n_0_result_lo[0]_INST_0_i_10 ),
        .CO({result_hi2,\n_1_result_lo[0]_INST_0_i_7 ,\n_2_result_lo[0]_INST_0_i_7 ,\n_3_result_lo[0]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_result_lo[0]_INST_0_i_11 ,\n_0_result_lo[0]_INST_0_i_12 ,\n_0_result_lo[0]_INST_0_i_13 ,\n_0_result_lo[0]_INST_0_i_14 }),
        .O(\NLW_result_lo[0]_INST_0_i_7_O_UNCONNECTED [3:0]),
        .S({\n_0_result_lo[0]_INST_0_i_15 ,\n_0_result_lo[0]_INST_0_i_16 ,\n_0_result_lo[0]_INST_0_i_17 ,\n_0_result_lo[0]_INST_0_i_18 }));
LUT5 #(
    .INIT(32'h00000100)) 
     \result_lo[0]_INST_0_i_8 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(shamt[0]),
        .I3(src_b[0]),
        .I4(shamt[1]),
        .O(\n_0_result_lo[0]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[0]_INST_0_i_9 
       (.I0(\n_0_result_lo[0]_INST_0_i_19 ),
        .I1(\n_0_result_lo[4]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[6]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[2]_INST_0_i_8 ),
        .O(\n_0_result_lo[0]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[10]_INST_0 
       (.I0(\n_0_result_lo[10]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[10]_INST_0_i_2 ),
        .I4(\n_0_result_lo[10]_INST_0_i_3 ),
        .I5(\n_0_result_lo[10]_INST_0_i_4 ),
        .O(result_lo[10]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[10]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[10]),
        .I2(src_b[10]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[10]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[10]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[10]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_5_result_lo[11]_INST_0_i_6 ),
        .I4(p_1_in[10]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[10]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[10]_INST_0_i_3 
       (.I0(src_b[10]),
        .I1(src_a[10]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[10]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[10]_INST_0_i_4 
       (.I0(\n_0_result_lo[10]_INST_0_i_6 ),
        .I1(\n_0_result_lo[11]_INST_0_i_8 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[10]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[10]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[10]_INST_0_i_5 
       (.I0(\n_0_result_lo[18]_INST_0_i_8 ),
        .I1(shamt[3]),
        .I2(\n_0_result_hi[2]_INST_0_i_4 ),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[6]_INST_0_i_4 ),
        .O(\n_0_result_lo[10]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[10]_INST_0_i_6 
       (.I0(\n_5_result_lo[11]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[10]),
        .I4(src_b[10]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[10]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[10]_INST_0_i_7 
       (.I0(\n_0_result_lo[16]_INST_0_i_12 ),
        .I1(\n_0_result_lo[12]_INST_0_i_9 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[14]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[10]_INST_0_i_8 ),
        .O(\n_0_result_lo[10]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[10]_INST_0_i_8 
       (.I0(src_b[18]),
        .I1(shamt[3]),
        .I2(src_b[26]),
        .I3(shamt[4]),
        .I4(src_b[10]),
        .O(\n_0_result_lo[10]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[11]_INST_0 
       (.I0(\n_0_result_lo[11]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[11]_INST_0_i_2 ),
        .I4(\n_0_result_lo[11]_INST_0_i_3 ),
        .I5(\n_0_result_lo[11]_INST_0_i_4 ),
        .O(result_lo[11]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[11]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[11]),
        .I2(src_b[11]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[11]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[11]_INST_0_i_10 
       (.I0(src_a[10]),
        .I1(src_b[10]),
        .O(\n_0_result_lo[11]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[11]_INST_0_i_11 
       (.I0(src_a[9]),
        .I1(src_b[9]),
        .O(\n_0_result_lo[11]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[11]_INST_0_i_12 
       (.I0(src_a[8]),
        .I1(src_b[8]),
        .O(\n_0_result_lo[11]_INST_0_i_12 ));
CARRY4 \result_lo[11]_INST_0_i_13 
       (.CI(\n_0_result_lo[7]_INST_0_i_14 ),
        .CO({\n_0_result_lo[11]_INST_0_i_13 ,\n_1_result_lo[11]_INST_0_i_13 ,\n_2_result_lo[11]_INST_0_i_13 ,\n_3_result_lo[11]_INST_0_i_13 }),
        .CYINIT(\<const0> ),
        .DI(src_a[11:8]),
        .O({\n_4_result_lo[11]_INST_0_i_13 ,\n_5_result_lo[11]_INST_0_i_13 ,\n_6_result_lo[11]_INST_0_i_13 ,\n_7_result_lo[11]_INST_0_i_13 }),
        .S({\n_0_result_lo[11]_INST_0_i_15 ,\n_0_result_lo[11]_INST_0_i_16 ,\n_0_result_lo[11]_INST_0_i_17 ,\n_0_result_lo[11]_INST_0_i_18 }));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[11]_INST_0_i_14 
       (.I0(src_b[19]),
        .I1(shamt[3]),
        .I2(src_b[27]),
        .I3(shamt[4]),
        .I4(src_b[11]),
        .O(\n_0_result_lo[11]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[11]_INST_0_i_15 
       (.I0(src_a[11]),
        .I1(src_b[11]),
        .O(\n_0_result_lo[11]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[11]_INST_0_i_16 
       (.I0(src_a[10]),
        .I1(src_b[10]),
        .O(\n_0_result_lo[11]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[11]_INST_0_i_17 
       (.I0(src_a[9]),
        .I1(src_b[9]),
        .O(\n_0_result_lo[11]_INST_0_i_17 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[11]_INST_0_i_18 
       (.I0(src_a[8]),
        .I1(src_b[8]),
        .O(\n_0_result_lo[11]_INST_0_i_18 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[11]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[11]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_4_result_lo[11]_INST_0_i_6 ),
        .I4(p_1_in[11]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[11]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[11]_INST_0_i_3 
       (.I0(src_b[11]),
        .I1(src_a[11]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[11]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[11]_INST_0_i_4 
       (.I0(\n_0_result_lo[11]_INST_0_i_7 ),
        .I1(\n_0_result_lo[12]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[11]_INST_0_i_8 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[11]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[11]_INST_0_i_5 
       (.I0(\n_0_result_lo[19]_INST_0_i_14 ),
        .I1(shamt[3]),
        .I2(\n_0_result_hi[3]_INST_0_i_6 ),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[7]_INST_0_i_5 ),
        .O(\n_0_result_lo[11]_INST_0_i_5 ));
CARRY4 \result_lo[11]_INST_0_i_6 
       (.CI(\n_0_result_lo[7]_INST_0_i_7 ),
        .CO({\n_0_result_lo[11]_INST_0_i_6 ,\n_1_result_lo[11]_INST_0_i_6 ,\n_2_result_lo[11]_INST_0_i_6 ,\n_3_result_lo[11]_INST_0_i_6 }),
        .CYINIT(\<const0> ),
        .DI(src_a[11:8]),
        .O({\n_4_result_lo[11]_INST_0_i_6 ,\n_5_result_lo[11]_INST_0_i_6 ,\n_6_result_lo[11]_INST_0_i_6 ,\n_7_result_lo[11]_INST_0_i_6 }),
        .S({\n_0_result_lo[11]_INST_0_i_9 ,\n_0_result_lo[11]_INST_0_i_10 ,\n_0_result_lo[11]_INST_0_i_11 ,\n_0_result_lo[11]_INST_0_i_12 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[11]_INST_0_i_7 
       (.I0(\n_4_result_lo[11]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[11]),
        .I4(src_a[11]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[11]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[11]_INST_0_i_8 
       (.I0(\n_0_result_lo[15]_INST_0_i_17 ),
        .I1(\n_0_result_lo[13]_INST_0_i_9 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[15]_INST_0_i_19 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[11]_INST_0_i_14 ),
        .O(\n_0_result_lo[11]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[11]_INST_0_i_9 
       (.I0(src_a[11]),
        .I1(src_b[11]),
        .O(\n_0_result_lo[11]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[12]_INST_0 
       (.I0(\n_0_result_lo[12]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[12]_INST_0_i_2 ),
        .I4(\n_0_result_lo[12]_INST_0_i_3 ),
        .I5(\n_0_result_lo[12]_INST_0_i_4 ),
        .O(result_lo[12]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[12]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[12]),
        .I2(src_b[12]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[12]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[12]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[12]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_7_result_lo[15]_INST_0_i_8 ),
        .I4(p_1_in[12]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[12]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[12]_INST_0_i_3 
       (.I0(src_b[12]),
        .I1(src_a[12]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[12]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[12]_INST_0_i_4 
       (.I0(\n_0_result_lo[12]_INST_0_i_6 ),
        .I1(\n_0_result_lo[13]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[12]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[12]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[12]_INST_0_i_5 
       (.I0(\n_0_result_lo[16]_INST_0_i_8 ),
        .I1(\n_0_result_lo[12]_INST_0_i_8 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[4]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[8]_INST_0_i_4 ),
        .O(\n_0_result_lo[12]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[12]_INST_0_i_6 
       (.I0(\n_7_result_lo[15]_INST_0_i_15 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[12]),
        .I4(src_b[12]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[12]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[12]_INST_0_i_7 
       (.I0(\n_0_result_lo[16]_INST_0_i_10 ),
        .I1(\n_0_result_lo[14]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[16]_INST_0_i_12 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[12]_INST_0_i_9 ),
        .O(\n_0_result_lo[12]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[12]_INST_0_i_8 
       (.I0(src_b[1]),
        .I1(src_b[2]),
        .I2(shamt[1]),
        .I3(src_b[3]),
        .I4(shamt[0]),
        .I5(src_b[4]),
        .O(\n_0_result_lo[12]_INST_0_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[12]_INST_0_i_9 
       (.I0(src_b[20]),
        .I1(shamt[3]),
        .I2(src_b[28]),
        .I3(shamt[4]),
        .I4(src_b[12]),
        .O(\n_0_result_lo[12]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[13]_INST_0 
       (.I0(\n_0_result_lo[13]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[13]_INST_0_i_2 ),
        .I4(\n_0_result_lo[13]_INST_0_i_3 ),
        .I5(\n_0_result_lo[13]_INST_0_i_4 ),
        .O(result_lo[13]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[13]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[13]),
        .I2(src_b[13]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[13]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[13]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[13]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_6_result_lo[15]_INST_0_i_8 ),
        .I4(p_1_in[13]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[13]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[13]_INST_0_i_3 
       (.I0(src_b[13]),
        .I1(src_a[13]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[13]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[13]_INST_0_i_4 
       (.I0(\n_0_result_lo[13]_INST_0_i_6 ),
        .I1(\n_0_result_lo[14]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[13]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[13]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0EFEFAFA0E0E0)) 
     \result_lo[13]_INST_0_i_5 
       (.I0(\n_0_result_lo[13]_INST_0_i_8 ),
        .I1(\n_0_result_hi[1]_INST_0_i_11 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[5]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[9]_INST_0_i_4 ),
        .O(\n_0_result_lo[13]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[13]_INST_0_i_6 
       (.I0(\n_6_result_lo[15]_INST_0_i_15 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[13]),
        .I4(src_a[13]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[13]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[13]_INST_0_i_7 
       (.I0(\n_0_result_lo[15]_INST_0_i_18 ),
        .I1(\n_0_result_lo[15]_INST_0_i_19 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[15]_INST_0_i_17 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[13]_INST_0_i_9 ),
        .O(\n_0_result_lo[13]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h44400040)) 
     \result_lo[13]_INST_0_i_8 
       (.I0(shamt[1]),
        .I1(shamt[2]),
        .I2(src_b[1]),
        .I3(shamt[0]),
        .I4(src_b[0]),
        .O(\n_0_result_lo[13]_INST_0_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[13]_INST_0_i_9 
       (.I0(src_b[21]),
        .I1(shamt[3]),
        .I2(src_b[29]),
        .I3(shamt[4]),
        .I4(src_b[13]),
        .O(\n_0_result_lo[13]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[14]_INST_0 
       (.I0(\n_0_result_lo[14]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[14]_INST_0_i_2 ),
        .I4(\n_0_result_lo[14]_INST_0_i_3 ),
        .I5(\n_0_result_lo[14]_INST_0_i_4 ),
        .O(result_lo[14]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[14]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[14]),
        .I2(src_b[14]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[14]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[14]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[14]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_5_result_lo[15]_INST_0_i_8 ),
        .I4(p_1_in[14]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[14]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[14]_INST_0_i_3 
       (.I0(src_b[14]),
        .I1(src_a[14]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[14]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[14]_INST_0_i_4 
       (.I0(\n_0_result_lo[14]_INST_0_i_6 ),
        .I1(\n_0_result_lo[15]_INST_0_i_10 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[14]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[14]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[14]_INST_0_i_5 
       (.I0(\n_0_result_lo[18]_INST_0_i_8 ),
        .I1(\n_0_result_hi[2]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[6]_INST_0_i_4 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[10]_INST_0_i_7 ),
        .O(\n_0_result_lo[14]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[14]_INST_0_i_6 
       (.I0(\n_5_result_lo[15]_INST_0_i_15 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[14]),
        .I4(src_b[14]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[14]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[14]_INST_0_i_7 
       (.I0(\n_0_result_lo[16]_INST_0_i_11 ),
        .I1(\n_0_result_lo[16]_INST_0_i_12 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[16]_INST_0_i_10 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[14]_INST_0_i_8 ),
        .O(\n_0_result_lo[14]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[14]_INST_0_i_8 
       (.I0(src_b[22]),
        .I1(shamt[3]),
        .I2(src_b[30]),
        .I3(shamt[4]),
        .I4(src_b[14]),
        .O(\n_0_result_lo[14]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[15]_INST_0 
       (.I0(\n_0_result_lo[15]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[15]_INST_0_i_2 ),
        .I4(\n_0_result_lo[15]_INST_0_i_3 ),
        .I5(\n_0_result_lo[15]_INST_0_i_4 ),
        .O(result_lo[15]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[15]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[15]),
        .I2(src_b[15]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[15]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[15]_INST_0_i_10 
       (.I0(\n_0_result_lo[15]_INST_0_i_16 ),
        .I1(\n_0_result_lo[15]_INST_0_i_17 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[15]_INST_0_i_18 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[15]_INST_0_i_19 ),
        .O(\n_0_result_lo[15]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[15]_INST_0_i_11 
       (.I0(src_a[15]),
        .I1(src_b[15]),
        .O(\n_0_result_lo[15]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[15]_INST_0_i_12 
       (.I0(src_a[14]),
        .I1(src_b[14]),
        .O(\n_0_result_lo[15]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[15]_INST_0_i_13 
       (.I0(src_a[13]),
        .I1(src_b[13]),
        .O(\n_0_result_lo[15]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[15]_INST_0_i_14 
       (.I0(src_a[12]),
        .I1(src_b[12]),
        .O(\n_0_result_lo[15]_INST_0_i_14 ));
CARRY4 \result_lo[15]_INST_0_i_15 
       (.CI(\n_0_result_lo[11]_INST_0_i_13 ),
        .CO({\n_0_result_lo[15]_INST_0_i_15 ,\n_1_result_lo[15]_INST_0_i_15 ,\n_2_result_lo[15]_INST_0_i_15 ,\n_3_result_lo[15]_INST_0_i_15 }),
        .CYINIT(\<const0> ),
        .DI(src_a[15:12]),
        .O({\n_4_result_lo[15]_INST_0_i_15 ,\n_5_result_lo[15]_INST_0_i_15 ,\n_6_result_lo[15]_INST_0_i_15 ,\n_7_result_lo[15]_INST_0_i_15 }),
        .S({\n_0_result_lo[15]_INST_0_i_20 ,\n_0_result_lo[15]_INST_0_i_21 ,\n_0_result_lo[15]_INST_0_i_22 ,\n_0_result_lo[15]_INST_0_i_23 }));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[15]_INST_0_i_16 
       (.I0(src_b[29]),
        .I1(src_b[21]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[15]_INST_0_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[15]_INST_0_i_17 
       (.I0(src_b[25]),
        .I1(src_b[17]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[15]_INST_0_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[15]_INST_0_i_18 
       (.I0(src_b[27]),
        .I1(src_b[19]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[15]_INST_0_i_18 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[15]_INST_0_i_19 
       (.I0(src_b[23]),
        .I1(shamt[3]),
        .I2(src_b[31]),
        .I3(shamt[4]),
        .I4(src_b[15]),
        .O(\n_0_result_lo[15]_INST_0_i_19 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[15]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[15]_INST_0_i_6 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_4_result_lo[15]_INST_0_i_8 ),
        .I4(p_1_in[15]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[15]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[15]_INST_0_i_20 
       (.I0(src_a[15]),
        .I1(src_b[15]),
        .O(\n_0_result_lo[15]_INST_0_i_20 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[15]_INST_0_i_21 
       (.I0(src_a[14]),
        .I1(src_b[14]),
        .O(\n_0_result_lo[15]_INST_0_i_21 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[15]_INST_0_i_22 
       (.I0(src_a[13]),
        .I1(src_b[13]),
        .O(\n_0_result_lo[15]_INST_0_i_22 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[15]_INST_0_i_23 
       (.I0(src_a[12]),
        .I1(src_b[12]),
        .O(\n_0_result_lo[15]_INST_0_i_23 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[15]_INST_0_i_3 
       (.I0(src_b[15]),
        .I1(src_a[15]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[15]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[15]_INST_0_i_4 
       (.I0(\n_0_result_lo[15]_INST_0_i_9 ),
        .I1(\n_0_result_lo[16]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[15]_INST_0_i_10 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[15]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \result_lo[15]_INST_0_i_5 
       (.I0(alu_control[5]),
        .I1(shamt[4]),
        .I2(alu_control[3]),
        .I3(alu_control[4]),
        .O(\n_0_result_lo[15]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[15]_INST_0_i_6 
       (.I0(\n_0_result_lo[19]_INST_0_i_14 ),
        .I1(\n_0_result_hi[3]_INST_0_i_6 ),
        .I2(shamt[3]),
        .I3(\n_0_result_hi[7]_INST_0_i_5 ),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[11]_INST_0_i_10 ),
        .O(\n_0_result_lo[15]_INST_0_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h14)) 
     \result_lo[15]_INST_0_i_7 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(alu_control[5]),
        .O(\n_0_result_lo[15]_INST_0_i_7 ));
CARRY4 \result_lo[15]_INST_0_i_8 
       (.CI(\n_0_result_lo[11]_INST_0_i_6 ),
        .CO({\n_0_result_lo[15]_INST_0_i_8 ,\n_1_result_lo[15]_INST_0_i_8 ,\n_2_result_lo[15]_INST_0_i_8 ,\n_3_result_lo[15]_INST_0_i_8 }),
        .CYINIT(\<const0> ),
        .DI(src_a[15:12]),
        .O({\n_4_result_lo[15]_INST_0_i_8 ,\n_5_result_lo[15]_INST_0_i_8 ,\n_6_result_lo[15]_INST_0_i_8 ,\n_7_result_lo[15]_INST_0_i_8 }),
        .S({\n_0_result_lo[15]_INST_0_i_11 ,\n_0_result_lo[15]_INST_0_i_12 ,\n_0_result_lo[15]_INST_0_i_13 ,\n_0_result_lo[15]_INST_0_i_14 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[15]_INST_0_i_9 
       (.I0(\n_4_result_lo[15]_INST_0_i_15 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[15]),
        .I4(src_a[15]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[15]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[16]_INST_0 
       (.I0(\n_0_result_lo[16]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[16]_INST_0_i_2 ),
        .I4(\n_0_result_lo[16]_INST_0_i_3 ),
        .I5(\n_0_result_lo[16]_INST_0_i_4 ),
        .O(result_lo[16]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[16]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[16]),
        .I2(src_b[16]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[16]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[16]_INST_0_i_10 
       (.I0(src_b[26]),
        .I1(src_b[18]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[16]_INST_0_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[16]_INST_0_i_11 
       (.I0(src_b[28]),
        .I1(src_b[20]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[16]_INST_0_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[16]_INST_0_i_12 
       (.I0(src_b[24]),
        .I1(src_b[16]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[16]_INST_0_i_12 ));
LUT6 #(
    .INIT(64'h00F0000000AAEECC)) 
     \result_lo[16]_INST_0_i_2 
       (.I0(\n_7_result_lo[19]_INST_0_i_5 ),
        .I1(\n_0_result_lo[16]_INST_0_i_5 ),
        .I2(\n_7_result_lo[19]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[16]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[16]_INST_0_i_3 
       (.I0(src_b[16]),
        .I1(src_a[16]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[16]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[16]_INST_0_i_4 
       (.I0(\n_0_result_lo[16]_INST_0_i_6 ),
        .I1(\n_0_result_lo[17]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[16]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[16]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h000000001010FF00)) 
     \result_lo[16]_INST_0_i_5 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[16]_INST_0_i_8 ),
        .I3(\n_0_result_hi[0]_INST_0_i_5 ),
        .I4(shamt[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[16]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[16]_INST_0_i_6 
       (.I0(\n_7_result_lo[19]_INST_0_i_19 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[16]),
        .I4(src_b[16]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[16]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[16]_INST_0_i_7 
       (.I0(\n_0_result_lo[16]_INST_0_i_9 ),
        .I1(\n_0_result_lo[16]_INST_0_i_10 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[16]_INST_0_i_11 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[16]_INST_0_i_12 ),
        .O(\n_0_result_lo[16]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \result_lo[16]_INST_0_i_8 
       (.I0(shamt[1]),
        .I1(src_b[0]),
        .I2(shamt[0]),
        .O(\n_0_result_lo[16]_INST_0_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h0A0C)) 
     \result_lo[16]_INST_0_i_9 
       (.I0(src_b[30]),
        .I1(src_b[22]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .O(\n_0_result_lo[16]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[17]_INST_0 
       (.I0(\n_0_result_lo[17]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[17]_INST_0_i_2 ),
        .I4(\n_0_result_lo[17]_INST_0_i_3 ),
        .I5(\n_0_result_lo[17]_INST_0_i_4 ),
        .O(result_lo[17]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[17]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[17]),
        .I2(src_b[17]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[17]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[17]_INST_0_i_2 
       (.I0(\n_0_result_lo[17]_INST_0_i_5 ),
        .I1(\n_6_result_lo[19]_INST_0_i_5 ),
        .I2(\n_6_result_lo[19]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[17]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[17]_INST_0_i_3 
       (.I0(src_b[17]),
        .I1(src_a[17]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[17]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[17]_INST_0_i_4 
       (.I0(\n_0_result_lo[17]_INST_0_i_6 ),
        .I1(\n_0_result_lo[18]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[17]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[17]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
     \result_lo[17]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[1]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_lo[17]_INST_0_i_8 ),
        .I4(alu_control[5]),
        .I5(\n_6_result_lo[19]_INST_0_i_5 ),
        .O(\n_0_result_lo[17]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[17]_INST_0_i_6 
       (.I0(\n_6_result_lo[19]_INST_0_i_19 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[17]),
        .I4(src_a[17]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[17]_INST_0_i_6 ));
LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[17]_INST_0_i_7 
       (.I0(\n_0_result_lo[19]_INST_0_i_20 ),
        .I1(shamt[1]),
        .I2(\n_0_result_lo[17]_INST_0_i_9 ),
        .O(\n_0_result_lo[17]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h11100010)) 
     \result_lo[17]_INST_0_i_8 
       (.I0(shamt[1]),
        .I1(shamt[2]),
        .I2(src_b[1]),
        .I3(shamt[0]),
        .I4(src_b[0]),
        .O(\n_0_result_lo[17]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
     \result_lo[17]_INST_0_i_9 
       (.I0(src_b[29]),
        .I1(src_b[21]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[15]_INST_0_i_17 ),
        .O(\n_0_result_lo[17]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[18]_INST_0 
       (.I0(\n_0_result_lo[18]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[18]_INST_0_i_2 ),
        .I4(\n_0_result_lo[18]_INST_0_i_3 ),
        .I5(\n_0_result_lo[18]_INST_0_i_4 ),
        .O(result_lo[18]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[18]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[18]),
        .I2(src_b[18]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[18]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000AAEECC)) 
     \result_lo[18]_INST_0_i_2 
       (.I0(\n_5_result_lo[19]_INST_0_i_5 ),
        .I1(\n_0_result_lo[18]_INST_0_i_5 ),
        .I2(\n_5_result_lo[19]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[18]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[18]_INST_0_i_3 
       (.I0(src_b[18]),
        .I1(src_a[18]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[18]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[18]_INST_0_i_4 
       (.I0(\n_0_result_lo[18]_INST_0_i_6 ),
        .I1(\n_0_result_lo[19]_INST_0_i_9 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[18]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[18]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h000000001010FF00)) 
     \result_lo[18]_INST_0_i_5 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[18]_INST_0_i_8 ),
        .I3(\n_0_result_hi[2]_INST_0_i_3 ),
        .I4(shamt[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[18]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[18]_INST_0_i_6 
       (.I0(\n_5_result_lo[19]_INST_0_i_19 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[18]),
        .I4(src_b[18]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[18]_INST_0_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[18]_INST_0_i_7 
       (.I0(\n_0_result_lo[20]_INST_0_i_8 ),
        .I1(shamt[1]),
        .I2(\n_0_result_lo[18]_INST_0_i_9 ),
        .O(\n_0_result_lo[18]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[18]_INST_0_i_8 
       (.I0(src_b[0]),
        .I1(shamt[1]),
        .I2(src_b[1]),
        .I3(shamt[0]),
        .I4(src_b[2]),
        .O(\n_0_result_lo[18]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
     \result_lo[18]_INST_0_i_9 
       (.I0(src_b[30]),
        .I1(src_b[22]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[16]_INST_0_i_10 ),
        .O(\n_0_result_lo[18]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[19]_INST_0 
       (.I0(\n_0_result_lo[19]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[19]_INST_0_i_2 ),
        .I4(\n_0_result_lo[19]_INST_0_i_3 ),
        .I5(\n_0_result_lo[19]_INST_0_i_4 ),
        .O(result_lo[19]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[19]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[19]),
        .I2(src_b[19]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[19]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_10 
       (.I0(src_a[19]),
        .I1(src_b[19]),
        .O(\n_0_result_lo[19]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_11 
       (.I0(src_a[18]),
        .I1(src_b[18]),
        .O(\n_0_result_lo[19]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_12 
       (.I0(src_a[17]),
        .I1(src_b[17]),
        .O(\n_0_result_lo[19]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_13 
       (.I0(src_a[16]),
        .I1(src_b[16]),
        .O(\n_0_result_lo[19]_INST_0_i_13 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[19]_INST_0_i_14 
       (.I0(src_b[0]),
        .I1(src_b[1]),
        .I2(shamt[1]),
        .I3(src_b[2]),
        .I4(shamt[0]),
        .I5(src_b[3]),
        .O(\n_0_result_lo[19]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_15 
       (.I0(p_1_in[19]),
        .I1(n_103_result_hi0),
        .O(\n_0_result_lo[19]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_16 
       (.I0(p_1_in[18]),
        .I1(n_104_result_hi0),
        .O(\n_0_result_lo[19]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[19]_INST_0_i_17 
       (.I0(p_1_in[17]),
        .I1(n_105_result_hi0),
        .O(\n_0_result_lo[19]_INST_0_i_17 ));
LUT1 #(
    .INIT(2'h2)) 
     \result_lo[19]_INST_0_i_18 
       (.I0(p_1_in[16]),
        .O(\n_0_result_lo[19]_INST_0_i_18 ));
CARRY4 \result_lo[19]_INST_0_i_19 
       (.CI(\n_0_result_lo[15]_INST_0_i_15 ),
        .CO({\n_0_result_lo[19]_INST_0_i_19 ,\n_1_result_lo[19]_INST_0_i_19 ,\n_2_result_lo[19]_INST_0_i_19 ,\n_3_result_lo[19]_INST_0_i_19 }),
        .CYINIT(\<const0> ),
        .DI(src_a[19:16]),
        .O({\n_4_result_lo[19]_INST_0_i_19 ,\n_5_result_lo[19]_INST_0_i_19 ,\n_6_result_lo[19]_INST_0_i_19 ,\n_7_result_lo[19]_INST_0_i_19 }),
        .S({\n_0_result_lo[19]_INST_0_i_21 ,\n_0_result_lo[19]_INST_0_i_22 ,\n_0_result_lo[19]_INST_0_i_23 ,\n_0_result_lo[19]_INST_0_i_24 }));
LUT6 #(
    .INIT(64'h00F0000000AAEECC)) 
     \result_lo[19]_INST_0_i_2 
       (.I0(\n_4_result_lo[19]_INST_0_i_5 ),
        .I1(\n_0_result_lo[19]_INST_0_i_6 ),
        .I2(\n_4_result_lo[19]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[19]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
     \result_lo[19]_INST_0_i_20 
       (.I0(src_b[31]),
        .I1(src_b[23]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[15]_INST_0_i_18 ),
        .O(\n_0_result_lo[19]_INST_0_i_20 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[19]_INST_0_i_21 
       (.I0(src_a[19]),
        .I1(src_b[19]),
        .O(\n_0_result_lo[19]_INST_0_i_21 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[19]_INST_0_i_22 
       (.I0(src_a[18]),
        .I1(src_b[18]),
        .O(\n_0_result_lo[19]_INST_0_i_22 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[19]_INST_0_i_23 
       (.I0(src_a[17]),
        .I1(src_b[17]),
        .O(\n_0_result_lo[19]_INST_0_i_23 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[19]_INST_0_i_24 
       (.I0(src_a[16]),
        .I1(src_b[16]),
        .O(\n_0_result_lo[19]_INST_0_i_24 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[19]_INST_0_i_3 
       (.I0(src_b[19]),
        .I1(src_a[19]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[19]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[19]_INST_0_i_4 
       (.I0(\n_0_result_lo[19]_INST_0_i_8 ),
        .I1(\n_0_result_lo[20]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[19]_INST_0_i_9 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[19]_INST_0_i_4 ));
CARRY4 \result_lo[19]_INST_0_i_5 
       (.CI(\n_0_result_lo[15]_INST_0_i_8 ),
        .CO({\n_0_result_lo[19]_INST_0_i_5 ,\n_1_result_lo[19]_INST_0_i_5 ,\n_2_result_lo[19]_INST_0_i_5 ,\n_3_result_lo[19]_INST_0_i_5 }),
        .CYINIT(\<const0> ),
        .DI(src_a[19:16]),
        .O({\n_4_result_lo[19]_INST_0_i_5 ,\n_5_result_lo[19]_INST_0_i_5 ,\n_6_result_lo[19]_INST_0_i_5 ,\n_7_result_lo[19]_INST_0_i_5 }),
        .S({\n_0_result_lo[19]_INST_0_i_10 ,\n_0_result_lo[19]_INST_0_i_11 ,\n_0_result_lo[19]_INST_0_i_12 ,\n_0_result_lo[19]_INST_0_i_13 }));
LUT6 #(
    .INIT(64'h000000001010FF00)) 
     \result_lo[19]_INST_0_i_6 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[19]_INST_0_i_14 ),
        .I3(\n_0_result_hi[3]_INST_0_i_4 ),
        .I4(shamt[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[19]_INST_0_i_6 ));
CARRY4 \result_lo[19]_INST_0_i_7 
       (.CI(\<const0> ),
        .CO({\n_0_result_lo[19]_INST_0_i_7 ,\n_1_result_lo[19]_INST_0_i_7 ,\n_2_result_lo[19]_INST_0_i_7 ,\n_3_result_lo[19]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI({p_1_in[19:17],\<const0> }),
        .O({\n_4_result_lo[19]_INST_0_i_7 ,\n_5_result_lo[19]_INST_0_i_7 ,\n_6_result_lo[19]_INST_0_i_7 ,\n_7_result_lo[19]_INST_0_i_7 }),
        .S({\n_0_result_lo[19]_INST_0_i_15 ,\n_0_result_lo[19]_INST_0_i_16 ,\n_0_result_lo[19]_INST_0_i_17 ,\n_0_result_lo[19]_INST_0_i_18 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[19]_INST_0_i_8 
       (.I0(\n_4_result_lo[19]_INST_0_i_19 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[19]),
        .I4(src_a[19]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[19]_INST_0_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[19]_INST_0_i_9 
       (.I0(\n_0_result_lo[21]_INST_0_i_8 ),
        .I1(shamt[1]),
        .I2(\n_0_result_lo[19]_INST_0_i_20 ),
        .O(\n_0_result_lo[19]_INST_0_i_9 ));
LUT4 #(
    .INIT(16'hBBBA)) 
     \result_lo[1]_INST_0 
       (.I0(\n_0_result_lo[1]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[1]_INST_0_i_2 ),
        .I3(\n_0_result_lo[1]_INST_0_i_3 ),
        .O(result_lo[1]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[1]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[1]),
        .I2(src_b[1]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[1]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h808080808080FF80)) 
     \result_lo[1]_INST_0_i_2 
       (.I0(\n_0_result_lo[1]_INST_0_i_4 ),
        .I1(src_a[1]),
        .I2(src_b[1]),
        .I3(\n_0_result_lo[1]_INST_0_i_5 ),
        .I4(alu_control[2]),
        .I5(alu_control[1]),
        .O(\n_0_result_lo[1]_INST_0_i_2 ));
LUT5 #(
    .INIT(32'hAAAAA808)) 
     \result_lo[1]_INST_0_i_3 
       (.I0(\n_0_result_lo[1]_INST_0_i_6 ),
        .I1(\n_0_result_lo[1]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[2]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[1]_INST_0_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00001000)) 
     \result_lo[1]_INST_0_i_4 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(alu_control[5]),
        .I3(alu_control[2]),
        .I4(alu_control[1]),
        .O(\n_0_result_lo[1]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[1]_INST_0_i_5 
       (.I0(\n_0_result_lo[7]_INST_0_i_5 ),
        .I1(\n_0_result_lo[17]_INST_0_i_8 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_6_result_lo[3]_INST_0_i_6 ),
        .I4(p_1_in[1]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[1]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[1]_INST_0_i_6 
       (.I0(\n_6_result_lo[3]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[1]),
        .I4(src_a[1]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[1]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[1]_INST_0_i_7 
       (.I0(\n_0_result_lo[1]_INST_0_i_8 ),
        .I1(\n_0_result_lo[5]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[7]_INST_0_i_15 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[3]_INST_0_i_14 ),
        .O(\n_0_result_lo[1]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[1]_INST_0_i_8 
       (.I0(src_b[1]),
        .I1(src_b[17]),
        .I2(shamt[3]),
        .I3(src_b[25]),
        .I4(shamt[4]),
        .I5(src_b[9]),
        .O(\n_0_result_lo[1]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[20]_INST_0 
       (.I0(\n_0_result_lo[20]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[20]_INST_0_i_2 ),
        .I4(\n_0_result_lo[20]_INST_0_i_3 ),
        .I5(\n_0_result_lo[20]_INST_0_i_4 ),
        .O(result_lo[20]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[20]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[20]),
        .I2(src_b[20]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[20]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[20]_INST_0_i_2 
       (.I0(\n_0_result_lo[20]_INST_0_i_5 ),
        .I1(\n_7_result_lo[23]_INST_0_i_6 ),
        .I2(\n_7_result_lo[23]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[20]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[20]_INST_0_i_3 
       (.I0(src_b[20]),
        .I1(src_a[20]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[20]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[20]_INST_0_i_4 
       (.I0(\n_0_result_lo[20]_INST_0_i_6 ),
        .I1(\n_0_result_lo[21]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[20]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[20]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
     \result_lo[20]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[4]_INST_0_i_3 ),
        .I2(shamt[3]),
        .I3(\n_0_result_lo[4]_INST_0_i_5 ),
        .I4(alu_control[5]),
        .I5(\n_7_result_lo[23]_INST_0_i_6 ),
        .O(\n_0_result_lo[20]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[20]_INST_0_i_6 
       (.I0(\n_7_result_lo[23]_INST_0_i_18 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[20]),
        .I4(src_b[20]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[20]_INST_0_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[20]_INST_0_i_7 
       (.I0(\n_0_result_lo[22]_INST_0_i_8 ),
        .I1(shamt[1]),
        .I2(\n_0_result_lo[20]_INST_0_i_8 ),
        .O(\n_0_result_lo[20]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h000030300000BB88)) 
     \result_lo[20]_INST_0_i_8 
       (.I0(src_b[24]),
        .I1(shamt[2]),
        .I2(src_b[28]),
        .I3(src_b[20]),
        .I4(shamt[4]),
        .I5(shamt[3]),
        .O(\n_0_result_lo[20]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[21]_INST_0 
       (.I0(\n_0_result_lo[21]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[21]_INST_0_i_2 ),
        .I4(\n_0_result_lo[21]_INST_0_i_3 ),
        .I5(\n_0_result_lo[21]_INST_0_i_4 ),
        .O(result_lo[21]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[21]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[21]),
        .I2(src_b[21]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[21]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[21]_INST_0_i_2 
       (.I0(\n_0_result_lo[21]_INST_0_i_5 ),
        .I1(\n_6_result_lo[23]_INST_0_i_6 ),
        .I2(\n_6_result_lo[23]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[21]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[21]_INST_0_i_3 
       (.I0(src_b[21]),
        .I1(src_a[21]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[21]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[21]_INST_0_i_4 
       (.I0(\n_0_result_lo[21]_INST_0_i_6 ),
        .I1(\n_0_result_lo[22]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[21]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[21]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
     \result_lo[21]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[5]_INST_0_i_3 ),
        .I2(shamt[3]),
        .I3(\n_0_result_lo[5]_INST_0_i_5 ),
        .I4(alu_control[5]),
        .I5(\n_6_result_lo[23]_INST_0_i_6 ),
        .O(\n_0_result_lo[21]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[21]_INST_0_i_6 
       (.I0(\n_6_result_lo[23]_INST_0_i_18 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[21]),
        .I4(src_a[21]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[21]_INST_0_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[21]_INST_0_i_7 
       (.I0(\n_0_result_lo[23]_INST_0_i_19 ),
        .I1(shamt[1]),
        .I2(\n_0_result_lo[21]_INST_0_i_8 ),
        .O(\n_0_result_lo[21]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h000030300000BB88)) 
     \result_lo[21]_INST_0_i_8 
       (.I0(src_b[25]),
        .I1(shamt[2]),
        .I2(src_b[29]),
        .I3(src_b[21]),
        .I4(shamt[4]),
        .I5(shamt[3]),
        .O(\n_0_result_lo[21]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[22]_INST_0 
       (.I0(\n_0_result_lo[22]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[22]_INST_0_i_2 ),
        .I4(\n_0_result_lo[22]_INST_0_i_3 ),
        .I5(\n_0_result_lo[22]_INST_0_i_4 ),
        .O(result_lo[22]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[22]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[22]),
        .I2(src_b[22]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[22]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[22]_INST_0_i_2 
       (.I0(\n_0_result_lo[22]_INST_0_i_5 ),
        .I1(\n_5_result_lo[23]_INST_0_i_6 ),
        .I2(\n_5_result_lo[23]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[22]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[22]_INST_0_i_3 
       (.I0(src_b[22]),
        .I1(src_a[22]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[22]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[22]_INST_0_i_4 
       (.I0(\n_0_result_lo[22]_INST_0_i_6 ),
        .I1(\n_0_result_lo[23]_INST_0_i_9 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[22]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[22]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
     \result_lo[22]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[6]_INST_0_i_3 ),
        .I2(shamt[3]),
        .I3(\n_0_result_lo[6]_INST_0_i_5 ),
        .I4(alu_control[5]),
        .I5(\n_5_result_lo[23]_INST_0_i_6 ),
        .O(\n_0_result_lo[22]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[22]_INST_0_i_6 
       (.I0(\n_5_result_lo[23]_INST_0_i_18 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[22]),
        .I4(src_b[22]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[22]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
     \result_lo[22]_INST_0_i_7 
       (.I0(src_b[28]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[31]_INST_0_i_10 ),
        .I3(src_b[24]),
        .I4(shamt[1]),
        .I5(\n_0_result_lo[22]_INST_0_i_8 ),
        .O(\n_0_result_lo[22]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h000030300000BB88)) 
     \result_lo[22]_INST_0_i_8 
       (.I0(src_b[26]),
        .I1(shamt[2]),
        .I2(src_b[30]),
        .I3(src_b[22]),
        .I4(shamt[4]),
        .I5(shamt[3]),
        .O(\n_0_result_lo[22]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[23]_INST_0 
       (.I0(\n_0_result_lo[23]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[23]_INST_0_i_2 ),
        .I4(\n_0_result_lo[23]_INST_0_i_3 ),
        .I5(\n_0_result_lo[23]_INST_0_i_4 ),
        .O(result_lo[23]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[23]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[23]),
        .I2(src_b[23]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[23]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_10 
       (.I0(src_a[23]),
        .I1(src_b[23]),
        .O(\n_0_result_lo[23]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_11 
       (.I0(src_a[22]),
        .I1(src_b[22]),
        .O(\n_0_result_lo[23]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_12 
       (.I0(src_a[21]),
        .I1(src_b[21]),
        .O(\n_0_result_lo[23]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_13 
       (.I0(src_a[20]),
        .I1(src_b[20]),
        .O(\n_0_result_lo[23]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_14 
       (.I0(p_1_in[23]),
        .I1(n_99_result_hi0),
        .O(\n_0_result_lo[23]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_15 
       (.I0(p_1_in[22]),
        .I1(n_100_result_hi0),
        .O(\n_0_result_lo[23]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_16 
       (.I0(p_1_in[21]),
        .I1(n_101_result_hi0),
        .O(\n_0_result_lo[23]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[23]_INST_0_i_17 
       (.I0(p_1_in[20]),
        .I1(n_102_result_hi0),
        .O(\n_0_result_lo[23]_INST_0_i_17 ));
CARRY4 \result_lo[23]_INST_0_i_18 
       (.CI(\n_0_result_lo[19]_INST_0_i_19 ),
        .CO({\n_0_result_lo[23]_INST_0_i_18 ,\n_1_result_lo[23]_INST_0_i_18 ,\n_2_result_lo[23]_INST_0_i_18 ,\n_3_result_lo[23]_INST_0_i_18 }),
        .CYINIT(\<const0> ),
        .DI(src_a[23:20]),
        .O({\n_4_result_lo[23]_INST_0_i_18 ,\n_5_result_lo[23]_INST_0_i_18 ,\n_6_result_lo[23]_INST_0_i_18 ,\n_7_result_lo[23]_INST_0_i_18 }),
        .S({\n_0_result_lo[23]_INST_0_i_20 ,\n_0_result_lo[23]_INST_0_i_21 ,\n_0_result_lo[23]_INST_0_i_22 ,\n_0_result_lo[23]_INST_0_i_23 }));
LUT6 #(
    .INIT(64'h000030300000BB88)) 
     \result_lo[23]_INST_0_i_19 
       (.I0(src_b[27]),
        .I1(shamt[2]),
        .I2(src_b[31]),
        .I3(src_b[23]),
        .I4(shamt[4]),
        .I5(shamt[3]),
        .O(\n_0_result_lo[23]_INST_0_i_19 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[23]_INST_0_i_2 
       (.I0(\n_0_result_lo[23]_INST_0_i_5 ),
        .I1(\n_4_result_lo[23]_INST_0_i_6 ),
        .I2(\n_4_result_lo[23]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[23]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[23]_INST_0_i_20 
       (.I0(src_a[23]),
        .I1(src_b[23]),
        .O(\n_0_result_lo[23]_INST_0_i_20 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[23]_INST_0_i_21 
       (.I0(src_a[22]),
        .I1(src_b[22]),
        .O(\n_0_result_lo[23]_INST_0_i_21 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[23]_INST_0_i_22 
       (.I0(src_a[21]),
        .I1(src_b[21]),
        .O(\n_0_result_lo[23]_INST_0_i_22 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[23]_INST_0_i_23 
       (.I0(src_a[20]),
        .I1(src_b[20]),
        .O(\n_0_result_lo[23]_INST_0_i_23 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[23]_INST_0_i_3 
       (.I0(src_b[23]),
        .I1(src_a[23]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[23]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[23]_INST_0_i_4 
       (.I0(\n_0_result_lo[23]_INST_0_i_8 ),
        .I1(\n_0_result_lo[24]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[23]_INST_0_i_9 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[23]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hFFFF4E4400004E44)) 
     \result_lo[23]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[7]_INST_0_i_4 ),
        .I2(shamt[3]),
        .I3(\n_0_result_lo[7]_INST_0_i_6 ),
        .I4(alu_control[5]),
        .I5(\n_4_result_lo[23]_INST_0_i_6 ),
        .O(\n_0_result_lo[23]_INST_0_i_5 ));
CARRY4 \result_lo[23]_INST_0_i_6 
       (.CI(\n_0_result_lo[19]_INST_0_i_5 ),
        .CO({\n_0_result_lo[23]_INST_0_i_6 ,\n_1_result_lo[23]_INST_0_i_6 ,\n_2_result_lo[23]_INST_0_i_6 ,\n_3_result_lo[23]_INST_0_i_6 }),
        .CYINIT(\<const0> ),
        .DI(src_a[23:20]),
        .O({\n_4_result_lo[23]_INST_0_i_6 ,\n_5_result_lo[23]_INST_0_i_6 ,\n_6_result_lo[23]_INST_0_i_6 ,\n_7_result_lo[23]_INST_0_i_6 }),
        .S({\n_0_result_lo[23]_INST_0_i_10 ,\n_0_result_lo[23]_INST_0_i_11 ,\n_0_result_lo[23]_INST_0_i_12 ,\n_0_result_lo[23]_INST_0_i_13 }));
CARRY4 \result_lo[23]_INST_0_i_7 
       (.CI(\n_0_result_lo[19]_INST_0_i_7 ),
        .CO({\n_0_result_lo[23]_INST_0_i_7 ,\n_1_result_lo[23]_INST_0_i_7 ,\n_2_result_lo[23]_INST_0_i_7 ,\n_3_result_lo[23]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[23:20]),
        .O({\n_4_result_lo[23]_INST_0_i_7 ,\n_5_result_lo[23]_INST_0_i_7 ,\n_6_result_lo[23]_INST_0_i_7 ,\n_7_result_lo[23]_INST_0_i_7 }),
        .S({\n_0_result_lo[23]_INST_0_i_14 ,\n_0_result_lo[23]_INST_0_i_15 ,\n_0_result_lo[23]_INST_0_i_16 ,\n_0_result_lo[23]_INST_0_i_17 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[23]_INST_0_i_8 
       (.I0(\n_4_result_lo[23]_INST_0_i_18 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[23]),
        .I4(src_a[23]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[23]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
     \result_lo[23]_INST_0_i_9 
       (.I0(src_b[29]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[31]_INST_0_i_10 ),
        .I3(src_b[25]),
        .I4(shamt[1]),
        .I5(\n_0_result_lo[23]_INST_0_i_19 ),
        .O(\n_0_result_lo[23]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[24]_INST_0 
       (.I0(\n_0_result_lo[24]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[24]_INST_0_i_2 ),
        .I4(\n_0_result_lo[24]_INST_0_i_3 ),
        .I5(\n_0_result_lo[24]_INST_0_i_4 ),
        .O(result_lo[24]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[24]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[24]),
        .I2(src_b[24]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[24]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[24]_INST_0_i_2 
       (.I0(\n_0_result_lo[24]_INST_0_i_5 ),
        .I1(\n_7_result_lo[27]_INST_0_i_6 ),
        .I2(\n_7_result_lo[27]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[24]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[24]_INST_0_i_3 
       (.I0(src_b[24]),
        .I1(src_a[24]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[24]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[24]_INST_0_i_4 
       (.I0(\n_0_result_lo[24]_INST_0_i_6 ),
        .I1(\n_0_result_lo[25]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[24]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[24]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hCCCCF0AA)) 
     \result_lo[24]_INST_0_i_5 
       (.I0(\n_0_result_hi[8]_INST_0_i_3 ),
        .I1(\n_7_result_lo[27]_INST_0_i_6 ),
        .I2(\n_0_result_lo[8]_INST_0_i_5 ),
        .I3(shamt[4]),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[24]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[24]_INST_0_i_6 
       (.I0(\n_7_result_hi[3]_INST_0_i_7 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[24]),
        .I4(src_b[24]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[24]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
     \result_lo[24]_INST_0_i_7 
       (.I0(src_b[30]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[31]_INST_0_i_10 ),
        .I3(src_b[26]),
        .I4(shamt[1]),
        .I5(\n_0_result_lo[24]_INST_0_i_8 ),
        .O(\n_0_result_lo[24]_INST_0_i_7 ));
LUT5 #(
    .INIT(32'h000B0008)) 
     \result_lo[24]_INST_0_i_8 
       (.I0(src_b[28]),
        .I1(shamt[2]),
        .I2(shamt[3]),
        .I3(shamt[4]),
        .I4(src_b[24]),
        .O(\n_0_result_lo[24]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[25]_INST_0 
       (.I0(\n_0_result_lo[25]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[25]_INST_0_i_2 ),
        .I4(\n_0_result_lo[25]_INST_0_i_3 ),
        .I5(\n_0_result_lo[25]_INST_0_i_4 ),
        .O(result_lo[25]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[25]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[25]),
        .I2(src_b[25]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[25]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[25]_INST_0_i_2 
       (.I0(\n_0_result_lo[25]_INST_0_i_5 ),
        .I1(\n_6_result_lo[27]_INST_0_i_6 ),
        .I2(\n_6_result_lo[27]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[25]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[25]_INST_0_i_3 
       (.I0(src_b[25]),
        .I1(src_a[25]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[25]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[25]_INST_0_i_4 
       (.I0(\n_0_result_lo[25]_INST_0_i_6 ),
        .I1(\n_0_result_lo[26]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[25]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[25]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hFFE400E4)) 
     \result_lo[25]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[9]_INST_0_i_3 ),
        .I2(\n_0_result_lo[9]_INST_0_i_5 ),
        .I3(alu_control[5]),
        .I4(\n_6_result_lo[27]_INST_0_i_6 ),
        .O(\n_0_result_lo[25]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[25]_INST_0_i_6 
       (.I0(\n_6_result_hi[3]_INST_0_i_7 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[25]),
        .I4(src_a[25]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[25]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
     \result_lo[25]_INST_0_i_7 
       (.I0(src_b[31]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[31]_INST_0_i_10 ),
        .I3(src_b[27]),
        .I4(shamt[1]),
        .I5(\n_0_result_lo[25]_INST_0_i_8 ),
        .O(\n_0_result_lo[25]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h000B0008)) 
     \result_lo[25]_INST_0_i_8 
       (.I0(src_b[29]),
        .I1(shamt[2]),
        .I2(shamt[3]),
        .I3(shamt[4]),
        .I4(src_b[25]),
        .O(\n_0_result_lo[25]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[26]_INST_0 
       (.I0(\n_0_result_lo[26]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[26]_INST_0_i_2 ),
        .I4(\n_0_result_lo[26]_INST_0_i_3 ),
        .I5(\n_0_result_lo[26]_INST_0_i_4 ),
        .O(result_lo[26]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[26]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[26]),
        .I2(src_b[26]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[26]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[26]_INST_0_i_2 
       (.I0(\n_0_result_lo[26]_INST_0_i_5 ),
        .I1(\n_5_result_lo[27]_INST_0_i_6 ),
        .I2(\n_5_result_lo[27]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[26]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[26]_INST_0_i_3 
       (.I0(src_b[26]),
        .I1(src_a[26]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[26]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[26]_INST_0_i_4 
       (.I0(\n_0_result_lo[26]_INST_0_i_6 ),
        .I1(\n_0_result_lo[27]_INST_0_i_9 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[26]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[26]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hCCCCF0AA)) 
     \result_lo[26]_INST_0_i_5 
       (.I0(\n_0_result_hi[10]_INST_0_i_5 ),
        .I1(\n_5_result_lo[27]_INST_0_i_6 ),
        .I2(\n_0_result_lo[10]_INST_0_i_5 ),
        .I3(shamt[4]),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[26]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[26]_INST_0_i_6 
       (.I0(\n_5_result_hi[3]_INST_0_i_7 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[26]),
        .I4(src_b[26]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[26]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'h30BB000030880000)) 
     \result_lo[26]_INST_0_i_7 
       (.I0(src_b[28]),
        .I1(shamt[1]),
        .I2(src_b[30]),
        .I3(shamt[2]),
        .I4(\n_0_result_lo[31]_INST_0_i_10 ),
        .I5(src_b[26]),
        .O(\n_0_result_lo[26]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[27]_INST_0 
       (.I0(\n_0_result_lo[27]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[27]_INST_0_i_2 ),
        .I4(\n_0_result_lo[27]_INST_0_i_3 ),
        .I5(\n_0_result_lo[27]_INST_0_i_4 ),
        .O(result_lo[27]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[27]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[27]),
        .I2(src_b[27]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[27]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_10 
       (.I0(src_a[27]),
        .I1(src_b[27]),
        .O(\n_0_result_lo[27]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_11 
       (.I0(src_a[26]),
        .I1(src_b[26]),
        .O(\n_0_result_lo[27]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_12 
       (.I0(src_a[25]),
        .I1(src_b[25]),
        .O(\n_0_result_lo[27]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_13 
       (.I0(src_a[24]),
        .I1(src_b[24]),
        .O(\n_0_result_lo[27]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_14 
       (.I0(p_1_in[27]),
        .I1(n_95_result_hi0),
        .O(\n_0_result_lo[27]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_15 
       (.I0(p_1_in[26]),
        .I1(n_96_result_hi0),
        .O(\n_0_result_lo[27]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_16 
       (.I0(p_1_in[25]),
        .I1(n_97_result_hi0),
        .O(\n_0_result_lo[27]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[27]_INST_0_i_17 
       (.I0(p_1_in[24]),
        .I1(n_98_result_hi0),
        .O(\n_0_result_lo[27]_INST_0_i_17 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[27]_INST_0_i_2 
       (.I0(\n_0_result_lo[27]_INST_0_i_5 ),
        .I1(\n_4_result_lo[27]_INST_0_i_6 ),
        .I2(\n_4_result_lo[27]_INST_0_i_7 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[27]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[27]_INST_0_i_3 
       (.I0(src_b[27]),
        .I1(src_a[27]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[27]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAAA808)) 
     \result_lo[27]_INST_0_i_4 
       (.I0(\n_0_result_lo[27]_INST_0_i_8 ),
        .I1(\n_0_result_lo[27]_INST_0_i_9 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[28]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[27]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hCCCCF0AA)) 
     \result_lo[27]_INST_0_i_5 
       (.I0(\n_0_result_hi[11]_INST_0_i_4 ),
        .I1(\n_4_result_lo[27]_INST_0_i_6 ),
        .I2(\n_0_result_lo[11]_INST_0_i_5 ),
        .I3(shamt[4]),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[27]_INST_0_i_5 ));
CARRY4 \result_lo[27]_INST_0_i_6 
       (.CI(\n_0_result_lo[23]_INST_0_i_6 ),
        .CO({\n_0_result_lo[27]_INST_0_i_6 ,\n_1_result_lo[27]_INST_0_i_6 ,\n_2_result_lo[27]_INST_0_i_6 ,\n_3_result_lo[27]_INST_0_i_6 }),
        .CYINIT(\<const0> ),
        .DI(src_a[27:24]),
        .O({\n_4_result_lo[27]_INST_0_i_6 ,\n_5_result_lo[27]_INST_0_i_6 ,\n_6_result_lo[27]_INST_0_i_6 ,\n_7_result_lo[27]_INST_0_i_6 }),
        .S({\n_0_result_lo[27]_INST_0_i_10 ,\n_0_result_lo[27]_INST_0_i_11 ,\n_0_result_lo[27]_INST_0_i_12 ,\n_0_result_lo[27]_INST_0_i_13 }));
CARRY4 \result_lo[27]_INST_0_i_7 
       (.CI(\n_0_result_lo[23]_INST_0_i_7 ),
        .CO({\n_0_result_lo[27]_INST_0_i_7 ,\n_1_result_lo[27]_INST_0_i_7 ,\n_2_result_lo[27]_INST_0_i_7 ,\n_3_result_lo[27]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI(p_1_in[27:24]),
        .O({\n_4_result_lo[27]_INST_0_i_7 ,\n_5_result_lo[27]_INST_0_i_7 ,\n_6_result_lo[27]_INST_0_i_7 ,\n_7_result_lo[27]_INST_0_i_7 }),
        .S({\n_0_result_lo[27]_INST_0_i_14 ,\n_0_result_lo[27]_INST_0_i_15 ,\n_0_result_lo[27]_INST_0_i_16 ,\n_0_result_lo[27]_INST_0_i_17 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[27]_INST_0_i_8 
       (.I0(\n_4_result_hi[3]_INST_0_i_7 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[27]),
        .I4(src_a[27]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[27]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'h30BB000030880000)) 
     \result_lo[27]_INST_0_i_9 
       (.I0(src_b[29]),
        .I1(shamt[1]),
        .I2(src_b[31]),
        .I3(shamt[2]),
        .I4(\n_0_result_lo[31]_INST_0_i_10 ),
        .I5(src_b[27]),
        .O(\n_0_result_lo[27]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[28]_INST_0 
       (.I0(\n_0_result_lo[28]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[28]_INST_0_i_2 ),
        .I4(\n_0_result_lo[28]_INST_0_i_3 ),
        .I5(\n_0_result_lo[28]_INST_0_i_4 ),
        .O(result_lo[28]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[28]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[28]),
        .I2(src_b[28]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[28]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h00F0000000CCAAAA)) 
     \result_lo[28]_INST_0_i_2 
       (.I0(\n_0_result_lo[28]_INST_0_i_5 ),
        .I1(\n_7_result_lo[31]_INST_0_i_7 ),
        .I2(\n_7_result_hi[1]_INST_0_i_5 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[28]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[28]_INST_0_i_3 
       (.I0(src_b[28]),
        .I1(src_a[28]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[28]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h8888888880888000)) 
     \result_lo[28]_INST_0_i_4 
       (.I0(\n_0_result_lo[31]_INST_0_i_11 ),
        .I1(\n_0_result_lo[28]_INST_0_i_6 ),
        .I2(\n_0_result_lo[29]_INST_0_i_8 ),
        .I3(shamt[0]),
        .I4(\n_0_result_lo[28]_INST_0_i_7 ),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[28]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hFFE400E4)) 
     \result_lo[28]_INST_0_i_5 
       (.I0(shamt[4]),
        .I1(\n_0_result_hi[12]_INST_0_i_3 ),
        .I2(\n_0_result_lo[12]_INST_0_i_5 ),
        .I3(alu_control[5]),
        .I4(\n_7_result_lo[31]_INST_0_i_7 ),
        .O(\n_0_result_lo[28]_INST_0_i_5 ));
LUT5 #(
    .INIT(32'h60FF600F)) 
     \result_lo[28]_INST_0_i_6 
       (.I0(src_b[28]),
        .I1(src_a[28]),
        .I2(alu_control[5]),
        .I3(alu_control[2]),
        .I4(\n_7_result_hi[3]_INST_0_i_5 ),
        .O(\n_0_result_lo[28]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'h0000020200000300)) 
     \result_lo[28]_INST_0_i_7 
       (.I0(src_b[30]),
        .I1(shamt[3]),
        .I2(shamt[4]),
        .I3(src_b[28]),
        .I4(shamt[2]),
        .I5(shamt[1]),
        .O(\n_0_result_lo[28]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[29]_INST_0 
       (.I0(\n_0_result_lo[29]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[29]_INST_0_i_3 ),
        .I4(\n_0_result_lo[29]_INST_0_i_4 ),
        .I5(\n_0_result_lo[29]_INST_0_i_5 ),
        .O(result_lo[29]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[29]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[29]),
        .I2(src_b[29]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[29]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[29]_INST_0_i_10 
       (.I0(\n_0_result_hi[5]_INST_0_i_4 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[9]_INST_0_i_4 ),
        .O(\n_0_result_lo[29]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h1)) 
     \result_lo[29]_INST_0_i_2 
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .O(\n_0_result_lo[29]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h00F0000000AAEECC)) 
     \result_lo[29]_INST_0_i_3 
       (.I0(\n_6_result_lo[31]_INST_0_i_7 ),
        .I1(\n_0_result_lo[29]_INST_0_i_6 ),
        .I2(\n_6_result_hi[1]_INST_0_i_5 ),
        .I3(alu_control[5]),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[29]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[29]_INST_0_i_4 
       (.I0(src_b[29]),
        .I1(src_a[29]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[29]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'hAAAAAAAAA8080808)) 
     \result_lo[29]_INST_0_i_5 
       (.I0(\n_0_result_lo[29]_INST_0_i_7 ),
        .I1(\n_0_result_lo[29]_INST_0_i_8 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[30]_INST_0_i_7 ),
        .I4(\n_0_result_lo[29]_INST_0_i_9 ),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[29]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
     \result_lo[29]_INST_0_i_6 
       (.I0(\n_0_result_lo[5]_INST_0_i_5 ),
        .I1(shamt[3]),
        .I2(\n_0_result_lo[29]_INST_0_i_10 ),
        .I3(\n_0_result_hi[13]_INST_0_i_3 ),
        .I4(shamt[4]),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[29]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[29]_INST_0_i_7 
       (.I0(\n_6_result_hi[3]_INST_0_i_5 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[29]),
        .I4(src_a[29]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[29]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h0000020200000300)) 
     \result_lo[29]_INST_0_i_8 
       (.I0(src_b[31]),
        .I1(shamt[3]),
        .I2(shamt[4]),
        .I3(src_b[29]),
        .I4(shamt[2]),
        .I5(shamt[1]),
        .O(\n_0_result_lo[29]_INST_0_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \result_lo[29]_INST_0_i_9 
       (.I0(shamt[3]),
        .I1(shamt[4]),
        .I2(src_b[30]),
        .O(\n_0_result_lo[29]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[2]_INST_0 
       (.I0(\n_0_result_lo[2]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[2]_INST_0_i_2 ),
        .I4(\n_0_result_lo[2]_INST_0_i_3 ),
        .I5(\n_0_result_lo[2]_INST_0_i_4 ),
        .O(result_lo[2]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[2]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[2]),
        .I2(src_b[2]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[2]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[2]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[2]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_5_result_lo[3]_INST_0_i_6 ),
        .I4(p_1_in[2]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[2]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[2]_INST_0_i_3 
       (.I0(src_b[2]),
        .I1(src_a[2]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[2]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[2]_INST_0_i_4 
       (.I0(\n_0_result_lo[2]_INST_0_i_6 ),
        .I1(\n_0_result_lo[3]_INST_0_i_8 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[2]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[2]_INST_0_i_4 ));
LUT3 #(
    .INIT(8'h10)) 
     \result_lo[2]_INST_0_i_5 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[18]_INST_0_i_8 ),
        .O(\n_0_result_lo[2]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[2]_INST_0_i_6 
       (.I0(\n_5_result_lo[3]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[2]),
        .I4(src_b[2]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[2]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[2]_INST_0_i_7 
       (.I0(\n_0_result_lo[8]_INST_0_i_8 ),
        .I1(\n_0_result_lo[4]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[6]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[2]_INST_0_i_8 ),
        .O(\n_0_result_lo[2]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[2]_INST_0_i_8 
       (.I0(src_b[2]),
        .I1(src_b[18]),
        .I2(shamt[3]),
        .I3(src_b[26]),
        .I4(shamt[4]),
        .I5(src_b[10]),
        .O(\n_0_result_lo[2]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
     \result_lo[30]_INST_0 
       (.I0(\n_0_result_lo[30]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[30]_INST_0_i_2 ),
        .I3(\n_0_result_lo[30]_INST_0_i_3 ),
        .I4(\n_0_result_lo[30]_INST_0_i_4 ),
        .I5(\n_0_result_lo[30]_INST_0_i_5 ),
        .O(result_lo[30]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[30]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[30]),
        .I2(src_b[30]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[30]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
     \result_lo[30]_INST_0_i_2 
       (.I0(\n_0_result_lo[29]_INST_0_i_2 ),
        .I1(\n_0_result_lo[31]_INST_0_i_6 ),
        .I2(\n_5_result_hi[1]_INST_0_i_5 ),
        .I3(\n_5_result_lo[31]_INST_0_i_7 ),
        .I4(\n_0_result_lo[31]_INST_0_i_8 ),
        .I5(\n_0_result_lo[30]_INST_0_i_6 ),
        .O(\n_0_result_lo[30]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[30]_INST_0_i_3 
       (.I0(src_b[30]),
        .I1(src_a[30]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[30]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hFEAAAEAAAAAAAAAA)) 
     \result_lo[30]_INST_0_i_4 
       (.I0(alu_control[5]),
        .I1(src_b[30]),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[30]_INST_0_i_7 ),
        .I4(src_b[31]),
        .I5(\n_0_result_lo[31]_INST_0_i_10 ),
        .O(\n_0_result_lo[30]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[30]_INST_0_i_5 
       (.I0(\n_5_result_hi[3]_INST_0_i_5 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[30]),
        .I4(src_b[30]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[30]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
     \result_lo[30]_INST_0_i_6 
       (.I0(\n_0_result_hi[0]_INST_0_i_4 ),
        .I1(\n_5_result_lo[31]_INST_0_i_7 ),
        .I2(alu_control[5]),
        .I3(\n_0_result_lo[14]_INST_0_i_5 ),
        .I4(\n_0_result_hi[14]_INST_0_i_4 ),
        .I5(shamt[4]),
        .O(\n_0_result_lo[30]_INST_0_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \result_lo[30]_INST_0_i_7 
       (.I0(shamt[2]),
        .I1(shamt[1]),
        .O(\n_0_result_lo[30]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
     \result_lo[31]_INST_0 
       (.I0(\n_0_result_lo[31]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[31]_INST_0_i_2 ),
        .I3(\n_0_result_lo[31]_INST_0_i_3 ),
        .I4(\n_0_result_lo[31]_INST_0_i_4 ),
        .I5(\n_0_result_lo[31]_INST_0_i_5 ),
        .O(result_lo[31]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[31]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[31]),
        .I2(src_b[31]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[31]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \result_lo[31]_INST_0_i_10 
       (.I0(shamt[4]),
        .I1(shamt[3]),
        .O(\n_0_result_lo[31]_INST_0_i_10 ));
LUT3 #(
    .INIT(8'h10)) 
     \result_lo[31]_INST_0_i_11 
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .O(\n_0_result_lo[31]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[31]_INST_0_i_12 
       (.I0(src_a[31]),
        .I1(src_b[31]),
        .O(\n_0_result_lo[31]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[31]_INST_0_i_13 
       (.I0(src_a[30]),
        .I1(src_b[30]),
        .O(\n_0_result_lo[31]_INST_0_i_13 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[31]_INST_0_i_14 
       (.I0(src_a[29]),
        .I1(src_b[29]),
        .O(\n_0_result_lo[31]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[31]_INST_0_i_15 
       (.I0(src_a[28]),
        .I1(src_b[28]),
        .O(\n_0_result_lo[31]_INST_0_i_15 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
     \result_lo[31]_INST_0_i_2 
       (.I0(\n_0_result_lo[29]_INST_0_i_2 ),
        .I1(\n_0_result_lo[31]_INST_0_i_6 ),
        .I2(\n_4_result_hi[1]_INST_0_i_5 ),
        .I3(\n_4_result_lo[31]_INST_0_i_7 ),
        .I4(\n_0_result_lo[31]_INST_0_i_8 ),
        .I5(\n_0_result_lo[31]_INST_0_i_9 ),
        .O(\n_0_result_lo[31]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[31]_INST_0_i_3 
       (.I0(src_b[31]),
        .I1(src_a[31]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[31]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
     \result_lo[31]_INST_0_i_4 
       (.I0(shamt[0]),
        .I1(shamt[1]),
        .I2(shamt[2]),
        .I3(src_b[31]),
        .I4(\n_0_result_lo[31]_INST_0_i_10 ),
        .I5(alu_control[5]),
        .O(\n_0_result_lo[31]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[31]_INST_0_i_5 
       (.I0(\n_4_result_hi[3]_INST_0_i_5 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[31]),
        .I4(src_a[31]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[31]_INST_0_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \result_lo[31]_INST_0_i_6 
       (.I0(alu_control[5]),
        .I1(alu_control[3]),
        .I2(alu_control[4]),
        .O(\n_0_result_lo[31]_INST_0_i_6 ));
CARRY4 \result_lo[31]_INST_0_i_7 
       (.CI(\n_0_result_lo[27]_INST_0_i_6 ),
        .CO({\n_0_result_lo[31]_INST_0_i_7 ,\n_1_result_lo[31]_INST_0_i_7 ,\n_2_result_lo[31]_INST_0_i_7 ,\n_3_result_lo[31]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI(src_a[31:28]),
        .O({\n_4_result_lo[31]_INST_0_i_7 ,\n_5_result_lo[31]_INST_0_i_7 ,\n_6_result_lo[31]_INST_0_i_7 ,\n_7_result_lo[31]_INST_0_i_7 }),
        .S({\n_0_result_lo[31]_INST_0_i_12 ,\n_0_result_lo[31]_INST_0_i_13 ,\n_0_result_lo[31]_INST_0_i_14 ,\n_0_result_lo[31]_INST_0_i_15 }));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \result_lo[31]_INST_0_i_8 
       (.I0(alu_control[5]),
        .I1(alu_control[3]),
        .I2(alu_control[4]),
        .O(\n_0_result_lo[31]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
     \result_lo[31]_INST_0_i_9 
       (.I0(\n_0_result_hi[0]_INST_0_i_4 ),
        .I1(\n_4_result_lo[31]_INST_0_i_7 ),
        .I2(alu_control[5]),
        .I3(\n_0_result_lo[15]_INST_0_i_6 ),
        .I4(\n_0_result_hi[15]_INST_0_i_3 ),
        .I5(shamt[4]),
        .O(\n_0_result_lo[31]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[3]_INST_0 
       (.I0(\n_0_result_lo[3]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[3]_INST_0_i_2 ),
        .I4(\n_0_result_lo[3]_INST_0_i_3 ),
        .I5(\n_0_result_lo[3]_INST_0_i_4 ),
        .O(result_lo[3]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[3]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[3]),
        .I2(src_b[3]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[3]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[3]_INST_0_i_10 
       (.I0(src_a[2]),
        .I1(src_b[2]),
        .O(\n_0_result_lo[3]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[3]_INST_0_i_11 
       (.I0(src_a[1]),
        .I1(src_b[1]),
        .O(\n_0_result_lo[3]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[3]_INST_0_i_12 
       (.I0(src_a[0]),
        .I1(src_b[0]),
        .O(\n_0_result_lo[3]_INST_0_i_12 ));
CARRY4 \result_lo[3]_INST_0_i_13 
       (.CI(\<const0> ),
        .CO({\n_0_result_lo[3]_INST_0_i_13 ,\n_1_result_lo[3]_INST_0_i_13 ,\n_2_result_lo[3]_INST_0_i_13 ,\n_3_result_lo[3]_INST_0_i_13 }),
        .CYINIT(1'b1),
        .DI(src_a[3:0]),
        .O({\n_4_result_lo[3]_INST_0_i_13 ,\n_5_result_lo[3]_INST_0_i_13 ,\n_6_result_lo[3]_INST_0_i_13 ,\n_7_result_lo[3]_INST_0_i_13 }),
        .S({\n_0_result_lo[3]_INST_0_i_15 ,\n_0_result_lo[3]_INST_0_i_16 ,\n_0_result_lo[3]_INST_0_i_17 ,\n_0_result_lo[3]_INST_0_i_18 }));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[3]_INST_0_i_14 
       (.I0(src_b[3]),
        .I1(src_b[19]),
        .I2(shamt[3]),
        .I3(src_b[27]),
        .I4(shamt[4]),
        .I5(src_b[11]),
        .O(\n_0_result_lo[3]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[3]_INST_0_i_15 
       (.I0(src_a[3]),
        .I1(src_b[3]),
        .O(\n_0_result_lo[3]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[3]_INST_0_i_16 
       (.I0(src_a[2]),
        .I1(src_b[2]),
        .O(\n_0_result_lo[3]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[3]_INST_0_i_17 
       (.I0(src_a[1]),
        .I1(src_b[1]),
        .O(\n_0_result_lo[3]_INST_0_i_17 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[3]_INST_0_i_18 
       (.I0(src_a[0]),
        .I1(src_b[0]),
        .O(\n_0_result_lo[3]_INST_0_i_18 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[3]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[3]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_4_result_lo[3]_INST_0_i_6 ),
        .I4(p_1_in[3]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[3]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[3]_INST_0_i_3 
       (.I0(src_b[3]),
        .I1(src_a[3]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[3]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[3]_INST_0_i_4 
       (.I0(\n_0_result_lo[3]_INST_0_i_7 ),
        .I1(\n_0_result_lo[4]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[3]_INST_0_i_8 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[3]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \result_lo[3]_INST_0_i_5 
       (.I0(shamt[3]),
        .I1(shamt[2]),
        .I2(\n_0_result_lo[19]_INST_0_i_14 ),
        .O(\n_0_result_lo[3]_INST_0_i_5 ));
CARRY4 \result_lo[3]_INST_0_i_6 
       (.CI(\<const0> ),
        .CO({\n_0_result_lo[3]_INST_0_i_6 ,\n_1_result_lo[3]_INST_0_i_6 ,\n_2_result_lo[3]_INST_0_i_6 ,\n_3_result_lo[3]_INST_0_i_6 }),
        .CYINIT(\<const0> ),
        .DI(src_a[3:0]),
        .O({\n_4_result_lo[3]_INST_0_i_6 ,\n_5_result_lo[3]_INST_0_i_6 ,\n_6_result_lo[3]_INST_0_i_6 ,\n_7_result_lo[3]_INST_0_i_6 }),
        .S({\n_0_result_lo[3]_INST_0_i_9 ,\n_0_result_lo[3]_INST_0_i_10 ,\n_0_result_lo[3]_INST_0_i_11 ,\n_0_result_lo[3]_INST_0_i_12 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[3]_INST_0_i_7 
       (.I0(\n_4_result_lo[3]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[3]),
        .I4(src_a[3]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[3]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[3]_INST_0_i_8 
       (.I0(\n_0_result_lo[9]_INST_0_i_8 ),
        .I1(\n_0_result_lo[5]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[7]_INST_0_i_15 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[3]_INST_0_i_14 ),
        .O(\n_0_result_lo[3]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[3]_INST_0_i_9 
       (.I0(src_a[3]),
        .I1(src_b[3]),
        .O(\n_0_result_lo[3]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[4]_INST_0 
       (.I0(\n_0_result_lo[4]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[4]_INST_0_i_2 ),
        .I4(\n_0_result_lo[4]_INST_0_i_3 ),
        .I5(\n_0_result_lo[4]_INST_0_i_4 ),
        .O(result_lo[4]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[4]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[4]),
        .I2(src_b[4]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[4]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[4]_INST_0_i_2 
       (.I0(\n_0_result_lo[7]_INST_0_i_5 ),
        .I1(\n_0_result_lo[4]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_7_result_lo[7]_INST_0_i_7 ),
        .I4(p_1_in[4]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[4]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[4]_INST_0_i_3 
       (.I0(src_b[4]),
        .I1(src_a[4]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[4]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[4]_INST_0_i_4 
       (.I0(\n_0_result_lo[4]_INST_0_i_6 ),
        .I1(\n_0_result_lo[5]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[4]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[4]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'h04FF0400)) 
     \result_lo[4]_INST_0_i_5 
       (.I0(shamt[1]),
        .I1(src_b[0]),
        .I2(shamt[0]),
        .I3(shamt[2]),
        .I4(\n_0_result_lo[12]_INST_0_i_8 ),
        .O(\n_0_result_lo[4]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[4]_INST_0_i_6 
       (.I0(\n_7_result_lo[7]_INST_0_i_14 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[4]),
        .I4(src_b[4]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[4]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[4]_INST_0_i_7 
       (.I0(\n_0_result_lo[10]_INST_0_i_8 ),
        .I1(\n_0_result_lo[6]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[8]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[4]_INST_0_i_8 ),
        .O(\n_0_result_lo[4]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[4]_INST_0_i_8 
       (.I0(src_b[4]),
        .I1(src_b[20]),
        .I2(shamt[3]),
        .I3(src_b[28]),
        .I4(shamt[4]),
        .I5(src_b[12]),
        .O(\n_0_result_lo[4]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[5]_INST_0 
       (.I0(\n_0_result_lo[5]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[5]_INST_0_i_2 ),
        .I4(\n_0_result_lo[5]_INST_0_i_3 ),
        .I5(\n_0_result_lo[5]_INST_0_i_4 ),
        .O(result_lo[5]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[5]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[5]),
        .I2(src_b[5]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[5]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[5]_INST_0_i_2 
       (.I0(\n_0_result_lo[7]_INST_0_i_5 ),
        .I1(\n_0_result_lo[5]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_6_result_lo[7]_INST_0_i_7 ),
        .I4(p_1_in[5]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[5]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[5]_INST_0_i_3 
       (.I0(src_b[5]),
        .I1(src_a[5]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[5]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[5]_INST_0_i_4 
       (.I0(\n_0_result_lo[5]_INST_0_i_6 ),
        .I1(\n_0_result_lo[6]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[5]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[5]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
     \result_lo[5]_INST_0_i_5 
       (.I0(src_b[0]),
        .I1(shamt[0]),
        .I2(src_b[1]),
        .I3(shamt[1]),
        .I4(shamt[2]),
        .I5(\n_0_result_hi[1]_INST_0_i_11 ),
        .O(\n_0_result_lo[5]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[5]_INST_0_i_6 
       (.I0(\n_6_result_lo[7]_INST_0_i_14 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[5]),
        .I4(src_a[5]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[5]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[5]_INST_0_i_7 
       (.I0(\n_0_result_lo[11]_INST_0_i_14 ),
        .I1(\n_0_result_lo[7]_INST_0_i_15 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[9]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[5]_INST_0_i_8 ),
        .O(\n_0_result_lo[5]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[5]_INST_0_i_8 
       (.I0(src_b[5]),
        .I1(src_b[21]),
        .I2(shamt[3]),
        .I3(src_b[29]),
        .I4(shamt[4]),
        .I5(src_b[13]),
        .O(\n_0_result_lo[5]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[6]_INST_0 
       (.I0(\n_0_result_lo[6]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[6]_INST_0_i_2 ),
        .I4(\n_0_result_lo[6]_INST_0_i_3 ),
        .I5(\n_0_result_lo[6]_INST_0_i_4 ),
        .O(result_lo[6]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[6]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[6]),
        .I2(src_b[6]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[6]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[6]_INST_0_i_2 
       (.I0(\n_0_result_lo[7]_INST_0_i_5 ),
        .I1(\n_0_result_lo[6]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_5_result_lo[7]_INST_0_i_7 ),
        .I4(p_1_in[6]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[6]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[6]_INST_0_i_3 
       (.I0(src_b[6]),
        .I1(src_a[6]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[6]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[6]_INST_0_i_4 
       (.I0(\n_0_result_lo[6]_INST_0_i_6 ),
        .I1(\n_0_result_lo[7]_INST_0_i_9 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[6]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[6]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[6]_INST_0_i_5 
       (.I0(\n_0_result_lo[18]_INST_0_i_8 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[2]_INST_0_i_4 ),
        .O(\n_0_result_lo[6]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[6]_INST_0_i_6 
       (.I0(\n_5_result_lo[7]_INST_0_i_14 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[6]),
        .I4(src_b[6]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[6]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[6]_INST_0_i_7 
       (.I0(\n_0_result_lo[12]_INST_0_i_9 ),
        .I1(\n_0_result_lo[8]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[10]_INST_0_i_8 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[6]_INST_0_i_8 ),
        .O(\n_0_result_lo[6]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[6]_INST_0_i_8 
       (.I0(src_b[6]),
        .I1(src_b[22]),
        .I2(shamt[3]),
        .I3(src_b[30]),
        .I4(shamt[4]),
        .I5(src_b[14]),
        .O(\n_0_result_lo[6]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[7]_INST_0 
       (.I0(\n_0_result_lo[7]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[7]_INST_0_i_2 ),
        .I4(\n_0_result_lo[7]_INST_0_i_3 ),
        .I5(\n_0_result_lo[7]_INST_0_i_4 ),
        .O(result_lo[7]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[7]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[7]),
        .I2(src_b[7]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[7]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[7]_INST_0_i_10 
       (.I0(src_a[7]),
        .I1(src_b[7]),
        .O(\n_0_result_lo[7]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[7]_INST_0_i_11 
       (.I0(src_a[6]),
        .I1(src_b[6]),
        .O(\n_0_result_lo[7]_INST_0_i_11 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[7]_INST_0_i_12 
       (.I0(src_a[5]),
        .I1(src_b[5]),
        .O(\n_0_result_lo[7]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \result_lo[7]_INST_0_i_13 
       (.I0(src_a[4]),
        .I1(src_b[4]),
        .O(\n_0_result_lo[7]_INST_0_i_13 ));
CARRY4 \result_lo[7]_INST_0_i_14 
       (.CI(\n_0_result_lo[3]_INST_0_i_13 ),
        .CO({\n_0_result_lo[7]_INST_0_i_14 ,\n_1_result_lo[7]_INST_0_i_14 ,\n_2_result_lo[7]_INST_0_i_14 ,\n_3_result_lo[7]_INST_0_i_14 }),
        .CYINIT(\<const0> ),
        .DI(src_a[7:4]),
        .O({\n_4_result_lo[7]_INST_0_i_14 ,\n_5_result_lo[7]_INST_0_i_14 ,\n_6_result_lo[7]_INST_0_i_14 ,\n_7_result_lo[7]_INST_0_i_14 }),
        .S({\n_0_result_lo[7]_INST_0_i_16 ,\n_0_result_lo[7]_INST_0_i_17 ,\n_0_result_lo[7]_INST_0_i_18 ,\n_0_result_lo[7]_INST_0_i_19 }));
LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
     \result_lo[7]_INST_0_i_15 
       (.I0(src_b[7]),
        .I1(src_b[23]),
        .I2(shamt[3]),
        .I3(src_b[31]),
        .I4(shamt[4]),
        .I5(src_b[15]),
        .O(\n_0_result_lo[7]_INST_0_i_15 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[7]_INST_0_i_16 
       (.I0(src_a[7]),
        .I1(src_b[7]),
        .O(\n_0_result_lo[7]_INST_0_i_16 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[7]_INST_0_i_17 
       (.I0(src_a[6]),
        .I1(src_b[6]),
        .O(\n_0_result_lo[7]_INST_0_i_17 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[7]_INST_0_i_18 
       (.I0(src_a[5]),
        .I1(src_b[5]),
        .O(\n_0_result_lo[7]_INST_0_i_18 ));
LUT2 #(
    .INIT(4'h9)) 
     \result_lo[7]_INST_0_i_19 
       (.I0(src_a[4]),
        .I1(src_b[4]),
        .O(\n_0_result_lo[7]_INST_0_i_19 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[7]_INST_0_i_2 
       (.I0(\n_0_result_lo[7]_INST_0_i_5 ),
        .I1(\n_0_result_lo[7]_INST_0_i_6 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_4_result_lo[7]_INST_0_i_7 ),
        .I4(p_1_in[7]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[7]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[7]_INST_0_i_3 
       (.I0(src_b[7]),
        .I1(src_a[7]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[7]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[7]_INST_0_i_4 
       (.I0(\n_0_result_lo[7]_INST_0_i_8 ),
        .I1(\n_0_result_lo[8]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[7]_INST_0_i_9 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[7]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \result_lo[7]_INST_0_i_5 
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(shamt[4]),
        .I3(shamt[3]),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[7]_INST_0_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \result_lo[7]_INST_0_i_6 
       (.I0(\n_0_result_lo[19]_INST_0_i_14 ),
        .I1(shamt[2]),
        .I2(\n_0_result_hi[3]_INST_0_i_6 ),
        .O(\n_0_result_lo[7]_INST_0_i_6 ));
CARRY4 \result_lo[7]_INST_0_i_7 
       (.CI(\n_0_result_lo[3]_INST_0_i_6 ),
        .CO({\n_0_result_lo[7]_INST_0_i_7 ,\n_1_result_lo[7]_INST_0_i_7 ,\n_2_result_lo[7]_INST_0_i_7 ,\n_3_result_lo[7]_INST_0_i_7 }),
        .CYINIT(\<const0> ),
        .DI(src_a[7:4]),
        .O({\n_4_result_lo[7]_INST_0_i_7 ,\n_5_result_lo[7]_INST_0_i_7 ,\n_6_result_lo[7]_INST_0_i_7 ,\n_7_result_lo[7]_INST_0_i_7 }),
        .S({\n_0_result_lo[7]_INST_0_i_10 ,\n_0_result_lo[7]_INST_0_i_11 ,\n_0_result_lo[7]_INST_0_i_12 ,\n_0_result_lo[7]_INST_0_i_13 }));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[7]_INST_0_i_8 
       (.I0(\n_4_result_lo[7]_INST_0_i_14 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[7]),
        .I4(src_a[7]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[7]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[7]_INST_0_i_9 
       (.I0(\n_0_result_lo[13]_INST_0_i_9 ),
        .I1(\n_0_result_lo[9]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[11]_INST_0_i_14 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[7]_INST_0_i_15 ),
        .O(\n_0_result_lo[7]_INST_0_i_9 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[8]_INST_0 
       (.I0(\n_0_result_lo[8]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[8]_INST_0_i_2 ),
        .I4(\n_0_result_lo[8]_INST_0_i_3 ),
        .I5(\n_0_result_lo[8]_INST_0_i_4 ),
        .O(result_lo[8]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[8]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[8]),
        .I2(src_b[8]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[8]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[8]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[8]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_7_result_lo[11]_INST_0_i_6 ),
        .I4(p_1_in[8]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[8]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[8]_INST_0_i_3 
       (.I0(src_b[8]),
        .I1(src_a[8]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[8]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[8]_INST_0_i_4 
       (.I0(\n_0_result_lo[8]_INST_0_i_6 ),
        .I1(\n_0_result_lo[9]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[8]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[8]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[8]_INST_0_i_5 
       (.I0(\n_0_result_lo[16]_INST_0_i_8 ),
        .I1(shamt[3]),
        .I2(\n_0_result_lo[12]_INST_0_i_8 ),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[4]_INST_0_i_4 ),
        .O(\n_0_result_lo[8]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[8]_INST_0_i_6 
       (.I0(\n_7_result_lo[11]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_a[8]),
        .I4(src_b[8]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[8]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[8]_INST_0_i_7 
       (.I0(\n_0_result_lo[14]_INST_0_i_8 ),
        .I1(\n_0_result_lo[10]_INST_0_i_8 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[12]_INST_0_i_9 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[8]_INST_0_i_8 ),
        .O(\n_0_result_lo[8]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[8]_INST_0_i_8 
       (.I0(src_b[16]),
        .I1(shamt[3]),
        .I2(src_b[24]),
        .I3(shamt[4]),
        .I4(src_b[8]),
        .O(\n_0_result_lo[8]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
     \result_lo[9]_INST_0 
       (.I0(\n_0_result_lo[9]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[29]_INST_0_i_2 ),
        .I3(\n_0_result_lo[9]_INST_0_i_2 ),
        .I4(\n_0_result_lo[9]_INST_0_i_3 ),
        .I5(\n_0_result_lo[9]_INST_0_i_4 ),
        .O(result_lo[9]));
LUT4 #(
    .INIT(16'h02A8)) 
     \result_lo[9]_INST_0_i_1 
       (.I0(\n_0_result_hi[30]_INST_0_i_3 ),
        .I1(src_a[9]),
        .I2(src_b[9]),
        .I3(alu_control[1]),
        .O(\n_0_result_lo[9]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     \result_lo[9]_INST_0_i_2 
       (.I0(\n_0_result_lo[15]_INST_0_i_5 ),
        .I1(\n_0_result_lo[9]_INST_0_i_5 ),
        .I2(\n_0_result_lo[15]_INST_0_i_7 ),
        .I3(\n_6_result_lo[11]_INST_0_i_6 ),
        .I4(p_1_in[9]),
        .I5(\n_0_result_lo[31]_INST_0_i_6 ),
        .O(\n_0_result_lo[9]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \result_lo[9]_INST_0_i_3 
       (.I0(src_b[9]),
        .I1(src_a[9]),
        .I2(alu_control[1]),
        .I3(\n_0_result_hi[15]_INST_0_i_2 ),
        .I4(alu_control[3]),
        .I5(alu_control[4]),
        .O(\n_0_result_lo[9]_INST_0_i_3 ));
LUT5 #(
    .INIT(32'hAAAA8A80)) 
     \result_lo[9]_INST_0_i_4 
       (.I0(\n_0_result_lo[9]_INST_0_i_6 ),
        .I1(\n_0_result_lo[10]_INST_0_i_7 ),
        .I2(shamt[0]),
        .I3(\n_0_result_lo[9]_INST_0_i_7 ),
        .I4(alu_control[5]),
        .O(\n_0_result_lo[9]_INST_0_i_4 ));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \result_lo[9]_INST_0_i_5 
       (.I0(\n_0_result_lo[17]_INST_0_i_8 ),
        .I1(shamt[3]),
        .I2(\n_0_result_hi[1]_INST_0_i_11 ),
        .I3(shamt[2]),
        .I4(\n_0_result_hi[5]_INST_0_i_4 ),
        .O(\n_0_result_lo[9]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h23E3E32300000000)) 
     \result_lo[9]_INST_0_i_6 
       (.I0(\n_6_result_lo[11]_INST_0_i_13 ),
        .I1(alu_control[2]),
        .I2(alu_control[5]),
        .I3(src_b[9]),
        .I4(src_a[9]),
        .I5(\n_0_result_lo[31]_INST_0_i_11 ),
        .O(\n_0_result_lo[9]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \result_lo[9]_INST_0_i_7 
       (.I0(\n_0_result_lo[15]_INST_0_i_19 ),
        .I1(\n_0_result_lo[11]_INST_0_i_14 ),
        .I2(shamt[1]),
        .I3(\n_0_result_lo[13]_INST_0_i_9 ),
        .I4(shamt[2]),
        .I5(\n_0_result_lo[9]_INST_0_i_8 ),
        .O(\n_0_result_lo[9]_INST_0_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'h30BB3088)) 
     \result_lo[9]_INST_0_i_8 
       (.I0(src_b[17]),
        .I1(shamt[3]),
        .I2(src_b[25]),
        .I3(shamt[4]),
        .I4(src_b[9]),
        .O(\n_0_result_lo[9]_INST_0_i_8 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     zero_INST_0
       (.I0(n_0_zero_INST_0_i_1),
        .I1(n_0_zero_INST_0_i_2),
        .I2(n_0_zero_INST_0_i_3),
        .I3(n_0_zero_INST_0_i_4),
        .I4(n_0_zero_INST_0_i_5),
        .I5(n_0_zero_INST_0_i_6),
        .O(zero));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     zero_INST_0_i_1
       (.I0(n_0_zero_INST_0_i_7),
        .I1(n_0_zero_INST_0_i_8),
        .I2(result_hi[1]),
        .I3(result_hi[0]),
        .I4(n_0_zero_INST_0_i_9),
        .I5(n_0_zero_INST_0_i_10),
        .O(n_0_zero_INST_0_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     zero_INST_0_i_10
       (.I0(n_0_zero_INST_0_i_17),
        .I1(n_0_zero_INST_0_i_18),
        .I2(n_0_zero_INST_0_i_19),
        .I3(result_hi[24]),
        .I4(result_hi[25]),
        .I5(n_0_zero_INST_0_i_20),
        .O(n_0_zero_INST_0_i_10));
LUT6 #(
    .INIT(64'h0000000000004445)) 
     zero_INST_0_i_11
       (.I0(\n_0_result_lo[1]_INST_0_i_1 ),
        .I1(alu_control[0]),
        .I2(\n_0_result_lo[1]_INST_0_i_2 ),
        .I3(\n_0_result_lo[1]_INST_0_i_3 ),
        .I4(result_lo[10]),
        .I5(result_lo[8]),
        .O(n_0_zero_INST_0_i_11));
LUT5 #(
    .INIT(32'h00000001)) 
     zero_INST_0_i_12
       (.I0(result_lo[6]),
        .I1(result_lo[7]),
        .I2(result_lo[3]),
        .I3(result_lo[4]),
        .I4(result_lo[11]),
        .O(n_0_zero_INST_0_i_12));
LUT4 #(
    .INIT(16'h0001)) 
     zero_INST_0_i_13
       (.I0(result_lo[15]),
        .I1(result_lo[14]),
        .I2(result_lo[13]),
        .I3(result_lo[12]),
        .O(n_0_zero_INST_0_i_13));
LUT3 #(
    .INIT(8'h01)) 
     zero_INST_0_i_14
       (.I0(result_lo[9]),
        .I1(result_lo[5]),
        .I2(result_lo[2]),
        .O(n_0_zero_INST_0_i_14));
LUT6 #(
    .INIT(64'hFF00FF00FFFFFFF8)) 
     zero_INST_0_i_15
       (.I0(\n_0_result_hi[30]_INST_0_i_2 ),
        .I1(data3[13]),
        .I2(\n_0_result_hi[13]_INST_0_i_1 ),
        .I3(\n_0_result_hi[22]_INST_0_i_5 ),
        .I4(n_0_zero_INST_0_i_21),
        .I5(alu_control[0]),
        .O(n_0_zero_INST_0_i_15));
LUT6 #(
    .INIT(64'hF0F0F0F0FFFFFFFE)) 
     zero_INST_0_i_16
       (.I0(n_0_zero_INST_0_i_22),
        .I1(\n_0_result_hi[11]_INST_0_i_1 ),
        .I2(\n_0_result_hi[22]_INST_0_i_5 ),
        .I3(\n_0_result_hi[10]_INST_0_i_4 ),
        .I4(n_0_zero_INST_0_i_23),
        .I5(alu_control[0]),
        .O(n_0_zero_INST_0_i_16));
LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
     zero_INST_0_i_17
       (.I0(result_hi[20]),
        .I1(result_hi[21]),
        .I2(result_hi[22]),
        .I3(alu_control[0]),
        .I4(n_0_zero_INST_0_i_24),
        .I5(\n_0_result_hi[22]_INST_0_i_5 ),
        .O(n_0_zero_INST_0_i_17));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_18
       (.I0(result_hi[19]),
        .I1(result_hi[17]),
        .I2(result_hi[18]),
        .I3(result_hi[16]),
        .O(n_0_zero_INST_0_i_18));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_19
       (.I0(result_hi[28]),
        .I1(result_hi[29]),
        .I2(result_hi[31]),
        .I3(result_hi[30]),
        .O(n_0_zero_INST_0_i_19));
LUT5 #(
    .INIT(32'h00008000)) 
     zero_INST_0_i_2
       (.I0(n_0_zero_INST_0_i_11),
        .I1(n_0_zero_INST_0_i_12),
        .I2(n_0_zero_INST_0_i_13),
        .I3(n_0_zero_INST_0_i_14),
        .I4(result_lo[0]),
        .O(n_0_zero_INST_0_i_2));
LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFEEE)) 
     zero_INST_0_i_20
       (.I0(result_hi[27]),
        .I1(\n_0_result_hi[22]_INST_0_i_5 ),
        .I2(\n_0_result_hi[30]_INST_0_i_2 ),
        .I3(data3[26]),
        .I4(\n_0_result_hi[26]_INST_0_i_1 ),
        .I5(alu_control[0]),
        .O(n_0_zero_INST_0_i_20));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00A2)) 
     zero_INST_0_i_21
       (.I0(\n_0_result_hi[14]_INST_0_i_5 ),
        .I1(shamt[4]),
        .I2(\n_0_result_hi[12]_INST_0_i_3 ),
        .I3(\n_0_result_hi[12]_INST_0_i_2 ),
        .I4(n_0_zero_INST_0_i_25),
        .I5(n_0_zero_INST_0_i_26),
        .O(n_0_zero_INST_0_i_21));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     zero_INST_0_i_22
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[11]),
        .O(n_0_zero_INST_0_i_22));
LUT6 #(
    .INIT(64'hBBAABABAAAAAAAAA)) 
     zero_INST_0_i_23
       (.I0(n_0_zero_INST_0_i_27),
        .I1(n_0_zero_INST_0_i_28),
        .I2(\n_0_result_hi[26]_INST_0_i_2 ),
        .I3(\n_0_result_hi[10]_INST_0_i_5 ),
        .I4(shamt[4]),
        .I5(\n_0_result_hi[14]_INST_0_i_5 ),
        .O(n_0_zero_INST_0_i_23));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     zero_INST_0_i_24
       (.I0(n_0_zero_INST_0_i_29),
        .I1(\n_0_result_hi[23]_INST_0_i_4 ),
        .I2(\n_0_result_hi[10]_INST_0_i_2 ),
        .I3(data4[23]),
        .I4(data3[23]),
        .I5(\n_0_result_hi[30]_INST_0_i_2 ),
        .O(n_0_zero_INST_0_i_24));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     zero_INST_0_i_25
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[12]),
        .O(n_0_zero_INST_0_i_25));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     zero_INST_0_i_26
       (.I0(alu_control[2]),
        .I1(alu_control[1]),
        .I2(alu_control[5]),
        .I3(alu_control[3]),
        .I4(alu_control[4]),
        .I5(data3[12]),
        .O(n_0_zero_INST_0_i_26));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     zero_INST_0_i_27
       (.I0(alu_control[3]),
        .I1(alu_control[4]),
        .I2(alu_control[1]),
        .I3(alu_control[5]),
        .I4(alu_control[2]),
        .I5(data4[10]),
        .O(n_0_zero_INST_0_i_27));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hEEEF)) 
     zero_INST_0_i_28
       (.I0(alu_control[4]),
        .I1(alu_control[5]),
        .I2(shamt[3]),
        .I3(shamt[4]),
        .O(n_0_zero_INST_0_i_28));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     zero_INST_0_i_29
       (.I0(alu_control[4]),
        .I1(alu_control[3]),
        .I2(alu_control[5]),
        .I3(shamt[4]),
        .I4(\n_0_result_lo[29]_INST_0_i_2 ),
        .I5(shamt[3]),
        .O(n_0_zero_INST_0_i_29));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_3
       (.I0(result_lo[24]),
        .I1(result_lo[25]),
        .I2(result_lo[26]),
        .I3(result_lo[27]),
        .O(n_0_zero_INST_0_i_3));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_4
       (.I0(result_lo[28]),
        .I1(result_lo[29]),
        .I2(result_lo[30]),
        .I3(result_lo[31]),
        .O(n_0_zero_INST_0_i_4));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_5
       (.I0(result_lo[16]),
        .I1(result_lo[17]),
        .I2(result_lo[18]),
        .I3(result_lo[19]),
        .O(n_0_zero_INST_0_i_5));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_6
       (.I0(result_lo[20]),
        .I1(result_lo[21]),
        .I2(result_lo[22]),
        .I3(result_lo[23]),
        .O(n_0_zero_INST_0_i_6));
LUT4 #(
    .INIT(16'hFFFE)) 
     zero_INST_0_i_7
       (.I0(result_hi[2]),
        .I1(result_hi[3]),
        .I2(result_hi[4]),
        .I3(result_hi[5]),
        .O(n_0_zero_INST_0_i_7));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     zero_INST_0_i_8
       (.I0(result_hi[7]),
        .I1(result_hi[8]),
        .I2(result_hi[6]),
        .I3(result_hi[9]),
        .I4(n_0_zero_INST_0_i_15),
        .I5(n_0_zero_INST_0_i_16),
        .O(n_0_zero_INST_0_i_8));
LUT2 #(
    .INIT(4'hE)) 
     zero_INST_0_i_9
       (.I0(result_hi[15]),
        .I1(result_hi[14]),
        .O(n_0_zero_INST_0_i_9));
endmodule

(* NotValidForBitStream *)
module MIPS_microprocessor
   (clock,
    inst_memory_load_enable,
    PC_reset,
    inst_memory_write_addr,
    inst_memory_write_data);
  input clock;
  input inst_memory_load_enable;
  input PC_reset;
  input [31:0]inst_memory_write_addr;
  input [31:0]inst_memory_write_data;

(* RTL_KEEP = "true" *)   wire [31:0]PC_current;
(* RTL_KEEP = "true" *)   wire [31:0]PC_next;
(* RTL_KEEP = "true" *)   wire [0:0]PC_plus4;
  wire PC_reset;
  wire PC_reset_IBUF;
  wire [31:0]alu_result_hi;
  wire [31:0]alu_result_lo;
  wire [4:0]alu_shamt;
  wire [31:0]alu_src_a;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [5:0]control_alu_control;
  wire control_alu_zero;
  wire control_data_memory_write_enable;
  wire control_hi_lo_write_enable;
  wire [5:0]control_opcode;
  wire control_reg_write_enable;
  wire [31:0]data_memory_write_data;
  wire [31:1]data_path_PC_branch;
  wire [31:1]data_path_PC_plus4;
  wire [1:0]data_path_PC_sel;
  wire [31:0]data_path_alu_src_b;
  wire data_path_alu_src_b_sel;
  wire [31:0]data_path_data_memory_read_data;
  wire [31:0]data_path_hi_read_data;
  wire [31:0]data_path_lo_read_data;
  wire [4:0]data_path_reg_write_addr3;
  wire [31:0]data_path_reg_write_data;
  wire [1:0]data_path_reg_write_data_sel;
  wire [31:0]data_path_sign_extend_data;
  wire data_path_write_addr3_sel;
  wire inst_memory_load_enable;
  wire inst_memory_load_enable_IBUF;
  wire [31:0]inst_memory_write_addr;
  wire [6:2]inst_memory_write_addr_IBUF;
  wire [31:0]inst_memory_write_data;
  wire [31:0]inst_memory_write_data_IBUF;
  wire n_0_mips_data_path_i_10;
  wire n_0_mips_data_path_i_11;
  wire n_0_mips_data_path_i_12;
  wire n_0_mips_data_path_i_13;
  wire n_0_mips_data_path_i_14;
  wire n_0_mips_data_path_i_15;
  wire n_0_mips_data_path_i_16;
  wire n_0_mips_data_path_i_17;
  wire n_0_mips_data_path_i_18;
  wire n_0_mips_data_path_i_19;
  wire n_0_mips_data_path_i_2;
  wire n_0_mips_data_path_i_20;
  wire n_0_mips_data_path_i_21;
  wire n_0_mips_data_path_i_22;
  wire n_0_mips_data_path_i_23;
  wire n_0_mips_data_path_i_24;
  wire n_0_mips_data_path_i_25;
  wire n_0_mips_data_path_i_26;
  wire n_0_mips_data_path_i_27;
  wire n_0_mips_data_path_i_28;
  wire n_0_mips_data_path_i_29;
  wire n_0_mips_data_path_i_3;
  wire n_0_mips_data_path_i_30;
  wire n_0_mips_data_path_i_31;
  wire n_0_mips_data_path_i_32;
  wire n_0_mips_data_path_i_33;
  wire n_0_mips_data_path_i_34;
  wire n_0_mips_data_path_i_35;
  wire n_0_mips_data_path_i_36;
  wire n_0_mips_data_path_i_37;
  wire n_0_mips_data_path_i_38;
  wire n_0_mips_data_path_i_39;
  wire n_0_mips_data_path_i_4;
  wire n_0_mips_data_path_i_5;
  wire n_0_mips_data_path_i_6;
  wire n_0_mips_data_path_i_7;
  wire n_0_mips_data_path_i_8;
  wire n_0_mips_data_path_i_9;
  wire n_16_mips_instruction_memory;
  wire n_17_mips_instruction_memory;
  wire n_18_mips_instruction_memory;
  wire n_19_mips_instruction_memory;
  wire n_1_mips_data_path_i_2;
  wire n_1_mips_data_path_i_3;
  wire n_1_mips_data_path_i_4;
  wire n_1_mips_data_path_i_5;
  wire n_1_mips_data_path_i_6;
  wire n_1_mips_data_path_i_7;
  wire n_1_mips_data_path_i_8;
  wire n_20_mips_instruction_memory;
  wire n_26_mips_instruction_memory;
  wire n_27_mips_instruction_memory;
  wire n_28_mips_instruction_memory;
  wire n_29_mips_instruction_memory;
  wire n_2_mips_data_path_i_1;
  wire n_2_mips_data_path_i_2;
  wire n_2_mips_data_path_i_3;
  wire n_2_mips_data_path_i_4;
  wire n_2_mips_data_path_i_5;
  wire n_2_mips_data_path_i_6;
  wire n_2_mips_data_path_i_7;
  wire n_2_mips_data_path_i_8;
  wire n_30_mips_instruction_memory;
  wire n_31_mips_instruction_memory;
  wire n_3_mips_data_path_i_1;
  wire n_3_mips_data_path_i_2;
  wire n_3_mips_data_path_i_3;
  wire n_3_mips_data_path_i_4;
  wire n_3_mips_data_path_i_5;
  wire n_3_mips_data_path_i_6;
  wire n_3_mips_data_path_i_7;
  wire n_3_mips_data_path_i_8;
  wire [4:0]reg_read_addr1;
  wire [4:0]reg_read_addr2;
  wire NLW_mips_ALU_overflow_UNCONNECTED;
  wire [3:2]NLW_mips_data_path_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_mips_data_path_i_1_O_UNCONNECTED;

IBUF PC_reset_IBUF_inst
       (.I(PC_reset),
        .O(PC_reset_IBUF));
BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
IBUF inst_memory_load_enable_IBUF_inst
       (.I(inst_memory_load_enable),
        .O(inst_memory_load_enable_IBUF));
IBUF \inst_memory_write_addr_IBUF[2]_inst 
       (.I(inst_memory_write_addr[2]),
        .O(inst_memory_write_addr_IBUF[2]));
IBUF \inst_memory_write_addr_IBUF[3]_inst 
       (.I(inst_memory_write_addr[3]),
        .O(inst_memory_write_addr_IBUF[3]));
IBUF \inst_memory_write_addr_IBUF[4]_inst 
       (.I(inst_memory_write_addr[4]),
        .O(inst_memory_write_addr_IBUF[4]));
IBUF \inst_memory_write_addr_IBUF[5]_inst 
       (.I(inst_memory_write_addr[5]),
        .O(inst_memory_write_addr_IBUF[5]));
IBUF \inst_memory_write_addr_IBUF[6]_inst 
       (.I(inst_memory_write_addr[6]),
        .O(inst_memory_write_addr_IBUF[6]));
IBUF \inst_memory_write_data_IBUF[0]_inst 
       (.I(inst_memory_write_data[0]),
        .O(inst_memory_write_data_IBUF[0]));
IBUF \inst_memory_write_data_IBUF[10]_inst 
       (.I(inst_memory_write_data[10]),
        .O(inst_memory_write_data_IBUF[10]));
IBUF \inst_memory_write_data_IBUF[11]_inst 
       (.I(inst_memory_write_data[11]),
        .O(inst_memory_write_data_IBUF[11]));
IBUF \inst_memory_write_data_IBUF[12]_inst 
       (.I(inst_memory_write_data[12]),
        .O(inst_memory_write_data_IBUF[12]));
IBUF \inst_memory_write_data_IBUF[13]_inst 
       (.I(inst_memory_write_data[13]),
        .O(inst_memory_write_data_IBUF[13]));
IBUF \inst_memory_write_data_IBUF[14]_inst 
       (.I(inst_memory_write_data[14]),
        .O(inst_memory_write_data_IBUF[14]));
IBUF \inst_memory_write_data_IBUF[15]_inst 
       (.I(inst_memory_write_data[15]),
        .O(inst_memory_write_data_IBUF[15]));
IBUF \inst_memory_write_data_IBUF[16]_inst 
       (.I(inst_memory_write_data[16]),
        .O(inst_memory_write_data_IBUF[16]));
IBUF \inst_memory_write_data_IBUF[17]_inst 
       (.I(inst_memory_write_data[17]),
        .O(inst_memory_write_data_IBUF[17]));
IBUF \inst_memory_write_data_IBUF[18]_inst 
       (.I(inst_memory_write_data[18]),
        .O(inst_memory_write_data_IBUF[18]));
IBUF \inst_memory_write_data_IBUF[19]_inst 
       (.I(inst_memory_write_data[19]),
        .O(inst_memory_write_data_IBUF[19]));
IBUF \inst_memory_write_data_IBUF[1]_inst 
       (.I(inst_memory_write_data[1]),
        .O(inst_memory_write_data_IBUF[1]));
IBUF \inst_memory_write_data_IBUF[20]_inst 
       (.I(inst_memory_write_data[20]),
        .O(inst_memory_write_data_IBUF[20]));
IBUF \inst_memory_write_data_IBUF[21]_inst 
       (.I(inst_memory_write_data[21]),
        .O(inst_memory_write_data_IBUF[21]));
IBUF \inst_memory_write_data_IBUF[22]_inst 
       (.I(inst_memory_write_data[22]),
        .O(inst_memory_write_data_IBUF[22]));
IBUF \inst_memory_write_data_IBUF[23]_inst 
       (.I(inst_memory_write_data[23]),
        .O(inst_memory_write_data_IBUF[23]));
IBUF \inst_memory_write_data_IBUF[24]_inst 
       (.I(inst_memory_write_data[24]),
        .O(inst_memory_write_data_IBUF[24]));
IBUF \inst_memory_write_data_IBUF[25]_inst 
       (.I(inst_memory_write_data[25]),
        .O(inst_memory_write_data_IBUF[25]));
IBUF \inst_memory_write_data_IBUF[26]_inst 
       (.I(inst_memory_write_data[26]),
        .O(inst_memory_write_data_IBUF[26]));
IBUF \inst_memory_write_data_IBUF[27]_inst 
       (.I(inst_memory_write_data[27]),
        .O(inst_memory_write_data_IBUF[27]));
IBUF \inst_memory_write_data_IBUF[28]_inst 
       (.I(inst_memory_write_data[28]),
        .O(inst_memory_write_data_IBUF[28]));
IBUF \inst_memory_write_data_IBUF[29]_inst 
       (.I(inst_memory_write_data[29]),
        .O(inst_memory_write_data_IBUF[29]));
IBUF \inst_memory_write_data_IBUF[2]_inst 
       (.I(inst_memory_write_data[2]),
        .O(inst_memory_write_data_IBUF[2]));
IBUF \inst_memory_write_data_IBUF[30]_inst 
       (.I(inst_memory_write_data[30]),
        .O(inst_memory_write_data_IBUF[30]));
IBUF \inst_memory_write_data_IBUF[31]_inst 
       (.I(inst_memory_write_data[31]),
        .O(inst_memory_write_data_IBUF[31]));
IBUF \inst_memory_write_data_IBUF[3]_inst 
       (.I(inst_memory_write_data[3]),
        .O(inst_memory_write_data_IBUF[3]));
IBUF \inst_memory_write_data_IBUF[4]_inst 
       (.I(inst_memory_write_data[4]),
        .O(inst_memory_write_data_IBUF[4]));
IBUF \inst_memory_write_data_IBUF[5]_inst 
       (.I(inst_memory_write_data[5]),
        .O(inst_memory_write_data_IBUF[5]));
IBUF \inst_memory_write_data_IBUF[6]_inst 
       (.I(inst_memory_write_data[6]),
        .O(inst_memory_write_data_IBUF[6]));
IBUF \inst_memory_write_data_IBUF[7]_inst 
       (.I(inst_memory_write_data[7]),
        .O(inst_memory_write_data_IBUF[7]));
IBUF \inst_memory_write_data_IBUF[8]_inst 
       (.I(inst_memory_write_data[8]),
        .O(inst_memory_write_data_IBUF[8]));
IBUF \inst_memory_write_data_IBUF[9]_inst 
       (.I(inst_memory_write_data[9]),
        .O(inst_memory_write_data_IBUF[9]));
(* CONTROL_WIDTH = "6" *) 
   (* SRC_WIDTH = "32" *) 
   ALU mips_ALU
       (.alu_control(control_alu_control),
        .overflow(NLW_mips_ALU_overflow_UNCONNECTED),
        .result_hi(alu_result_hi),
        .result_lo(alu_result_lo),
        .shamt(alu_shamt),
        .src_a(alu_src_a),
        .src_b(data_path_alu_src_b),
        .zero(control_alu_zero));
control_unit mips_control_unit
       (.PC_sel(data_path_PC_sel),
        .alu_control(control_alu_control),
        .alu_src_b_sel(data_path_alu_src_b_sel),
        .alu_zero(control_alu_zero),
        .data_memory_write_enable(control_data_memory_write_enable),
        .funct({n_26_mips_instruction_memory,n_27_mips_instruction_memory,n_28_mips_instruction_memory,n_29_mips_instruction_memory,n_30_mips_instruction_memory,n_31_mips_instruction_memory}),
        .hi_lo_write_enable(control_hi_lo_write_enable),
        .opcode(control_opcode),
        .reg_write_data_sel(data_path_reg_write_data_sel),
        .reg_write_enable(control_reg_write_enable),
        .write_addr3_sel(data_path_write_addr3_sel));
data_memory mips_data_memory
       (.addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,alu_result_lo[6:0]}),
        .clock(clock_IBUF_BUFG),
        .read_data(data_path_data_memory_read_data),
        .write_data(data_memory_write_data),
        .write_enable(control_data_memory_write_enable));
data_path mips_data_path
       (.PC_branch({data_path_PC_branch,PC_plus4}),
        .PC_jump({data_path_PC_plus4[31:28],reg_read_addr1,reg_read_addr2,n_16_mips_instruction_memory,n_17_mips_instruction_memory,n_18_mips_instruction_memory,n_19_mips_instruction_memory,n_20_mips_instruction_memory,alu_shamt,n_26_mips_instruction_memory,n_27_mips_instruction_memory,n_28_mips_instruction_memory,n_29_mips_instruction_memory,n_30_mips_instruction_memory,n_31_mips_instruction_memory,1'b0,1'b0}),
        .PC_next(PC_next),
        .PC_plus4({data_path_PC_plus4,PC_plus4}),
        .PC_sel(data_path_PC_sel),
        .alu_result(alu_result_lo),
        .alu_src_b(data_path_alu_src_b),
        .alu_src_b_sel(data_path_alu_src_b_sel),
        .data_memory_read_data(data_path_data_memory_read_data),
        .hi(data_path_hi_read_data),
        .instruction({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,reg_read_addr2,n_16_mips_instruction_memory,n_17_mips_instruction_memory,n_18_mips_instruction_memory,n_19_mips_instruction_memory,n_20_mips_instruction_memory,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .lo(data_path_lo_read_data),
        .reg_read_data2(data_memory_write_data),
        .reg_write_addr3(data_path_reg_write_addr3),
        .reg_write_data(data_path_reg_write_data),
        .reg_write_data_sel(data_path_reg_write_data_sel),
        .sign_extend_data(data_path_sign_extend_data),
        .write_addr3_sel(data_path_write_addr3_sel));
CARRY4 mips_data_path_i_1
       (.CI(n_0_mips_data_path_i_2),
        .CO({NLW_mips_data_path_i_1_CO_UNCONNECTED[3:2],n_2_mips_data_path_i_1,n_3_mips_data_path_i_1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_path_PC_plus4[30:29]}),
        .O({NLW_mips_data_path_i_1_O_UNCONNECTED[3],data_path_PC_branch[31:29]}),
        .S({1'b0,n_0_mips_data_path_i_9,n_0_mips_data_path_i_10,n_0_mips_data_path_i_11}));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_10
       (.I0(data_path_PC_plus4[30]),
        .I1(data_path_sign_extend_data[28]),
        .O(n_0_mips_data_path_i_10));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_11
       (.I0(data_path_PC_plus4[29]),
        .I1(data_path_sign_extend_data[27]),
        .O(n_0_mips_data_path_i_11));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_12
       (.I0(data_path_PC_plus4[28]),
        .I1(data_path_sign_extend_data[26]),
        .O(n_0_mips_data_path_i_12));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_13
       (.I0(data_path_PC_plus4[27]),
        .I1(data_path_sign_extend_data[25]),
        .O(n_0_mips_data_path_i_13));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_14
       (.I0(data_path_PC_plus4[26]),
        .I1(data_path_sign_extend_data[24]),
        .O(n_0_mips_data_path_i_14));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_15
       (.I0(data_path_PC_plus4[25]),
        .I1(data_path_sign_extend_data[23]),
        .O(n_0_mips_data_path_i_15));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_16
       (.I0(data_path_PC_plus4[24]),
        .I1(data_path_sign_extend_data[22]),
        .O(n_0_mips_data_path_i_16));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_17
       (.I0(data_path_PC_plus4[23]),
        .I1(data_path_sign_extend_data[21]),
        .O(n_0_mips_data_path_i_17));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_18
       (.I0(data_path_PC_plus4[22]),
        .I1(data_path_sign_extend_data[20]),
        .O(n_0_mips_data_path_i_18));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_19
       (.I0(data_path_PC_plus4[21]),
        .I1(data_path_sign_extend_data[19]),
        .O(n_0_mips_data_path_i_19));
CARRY4 mips_data_path_i_2
       (.CI(n_0_mips_data_path_i_3),
        .CO({n_0_mips_data_path_i_2,n_1_mips_data_path_i_2,n_2_mips_data_path_i_2,n_3_mips_data_path_i_2}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[28:25]),
        .O(data_path_PC_branch[28:25]),
        .S({n_0_mips_data_path_i_12,n_0_mips_data_path_i_13,n_0_mips_data_path_i_14,n_0_mips_data_path_i_15}));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_20
       (.I0(data_path_PC_plus4[20]),
        .I1(data_path_sign_extend_data[18]),
        .O(n_0_mips_data_path_i_20));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_21
       (.I0(data_path_PC_plus4[19]),
        .I1(data_path_sign_extend_data[17]),
        .O(n_0_mips_data_path_i_21));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_22
       (.I0(data_path_PC_plus4[18]),
        .I1(data_path_sign_extend_data[16]),
        .O(n_0_mips_data_path_i_22));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_23
       (.I0(data_path_PC_plus4[17]),
        .I1(data_path_sign_extend_data[15]),
        .O(n_0_mips_data_path_i_23));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_24
       (.I0(data_path_PC_plus4[16]),
        .I1(data_path_sign_extend_data[14]),
        .O(n_0_mips_data_path_i_24));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_25
       (.I0(data_path_PC_plus4[15]),
        .I1(data_path_sign_extend_data[13]),
        .O(n_0_mips_data_path_i_25));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_26
       (.I0(data_path_PC_plus4[14]),
        .I1(data_path_sign_extend_data[12]),
        .O(n_0_mips_data_path_i_26));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_27
       (.I0(data_path_PC_plus4[13]),
        .I1(data_path_sign_extend_data[11]),
        .O(n_0_mips_data_path_i_27));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_28
       (.I0(data_path_PC_plus4[12]),
        .I1(data_path_sign_extend_data[10]),
        .O(n_0_mips_data_path_i_28));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_29
       (.I0(data_path_PC_plus4[11]),
        .I1(data_path_sign_extend_data[9]),
        .O(n_0_mips_data_path_i_29));
CARRY4 mips_data_path_i_3
       (.CI(n_0_mips_data_path_i_4),
        .CO({n_0_mips_data_path_i_3,n_1_mips_data_path_i_3,n_2_mips_data_path_i_3,n_3_mips_data_path_i_3}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[24:21]),
        .O(data_path_PC_branch[24:21]),
        .S({n_0_mips_data_path_i_16,n_0_mips_data_path_i_17,n_0_mips_data_path_i_18,n_0_mips_data_path_i_19}));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_30
       (.I0(data_path_PC_plus4[10]),
        .I1(data_path_sign_extend_data[8]),
        .O(n_0_mips_data_path_i_30));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_31
       (.I0(data_path_PC_plus4[9]),
        .I1(data_path_sign_extend_data[7]),
        .O(n_0_mips_data_path_i_31));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_32
       (.I0(data_path_PC_plus4[8]),
        .I1(data_path_sign_extend_data[6]),
        .O(n_0_mips_data_path_i_32));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_33
       (.I0(data_path_PC_plus4[7]),
        .I1(data_path_sign_extend_data[5]),
        .O(n_0_mips_data_path_i_33));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_34
       (.I0(data_path_PC_plus4[6]),
        .I1(data_path_sign_extend_data[4]),
        .O(n_0_mips_data_path_i_34));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_35
       (.I0(data_path_PC_plus4[5]),
        .I1(data_path_sign_extend_data[3]),
        .O(n_0_mips_data_path_i_35));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_36
       (.I0(data_path_PC_plus4[4]),
        .I1(data_path_sign_extend_data[2]),
        .O(n_0_mips_data_path_i_36));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_37
       (.I0(data_path_PC_plus4[3]),
        .I1(data_path_sign_extend_data[1]),
        .O(n_0_mips_data_path_i_37));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_38
       (.I0(data_path_PC_plus4[2]),
        .I1(data_path_sign_extend_data[0]),
        .O(n_0_mips_data_path_i_38));
LUT1 #(
    .INIT(2'h2)) 
     mips_data_path_i_39
       (.I0(data_path_PC_plus4[1]),
        .O(n_0_mips_data_path_i_39));
CARRY4 mips_data_path_i_4
       (.CI(n_0_mips_data_path_i_5),
        .CO({n_0_mips_data_path_i_4,n_1_mips_data_path_i_4,n_2_mips_data_path_i_4,n_3_mips_data_path_i_4}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[20:17]),
        .O(data_path_PC_branch[20:17]),
        .S({n_0_mips_data_path_i_20,n_0_mips_data_path_i_21,n_0_mips_data_path_i_22,n_0_mips_data_path_i_23}));
CARRY4 mips_data_path_i_5
       (.CI(n_0_mips_data_path_i_6),
        .CO({n_0_mips_data_path_i_5,n_1_mips_data_path_i_5,n_2_mips_data_path_i_5,n_3_mips_data_path_i_5}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[16:13]),
        .O(data_path_PC_branch[16:13]),
        .S({n_0_mips_data_path_i_24,n_0_mips_data_path_i_25,n_0_mips_data_path_i_26,n_0_mips_data_path_i_27}));
CARRY4 mips_data_path_i_6
       (.CI(n_0_mips_data_path_i_7),
        .CO({n_0_mips_data_path_i_6,n_1_mips_data_path_i_6,n_2_mips_data_path_i_6,n_3_mips_data_path_i_6}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[12:9]),
        .O(data_path_PC_branch[12:9]),
        .S({n_0_mips_data_path_i_28,n_0_mips_data_path_i_29,n_0_mips_data_path_i_30,n_0_mips_data_path_i_31}));
CARRY4 mips_data_path_i_7
       (.CI(n_0_mips_data_path_i_8),
        .CO({n_0_mips_data_path_i_7,n_1_mips_data_path_i_7,n_2_mips_data_path_i_7,n_3_mips_data_path_i_7}),
        .CYINIT(1'b0),
        .DI(data_path_PC_plus4[8:5]),
        .O(data_path_PC_branch[8:5]),
        .S({n_0_mips_data_path_i_32,n_0_mips_data_path_i_33,n_0_mips_data_path_i_34,n_0_mips_data_path_i_35}));
CARRY4 mips_data_path_i_8
       (.CI(1'b0),
        .CO({n_0_mips_data_path_i_8,n_1_mips_data_path_i_8,n_2_mips_data_path_i_8,n_3_mips_data_path_i_8}),
        .CYINIT(1'b0),
        .DI({data_path_PC_plus4[4:2],1'b0}),
        .O(data_path_PC_branch[4:1]),
        .S({n_0_mips_data_path_i_36,n_0_mips_data_path_i_37,n_0_mips_data_path_i_38,n_0_mips_data_path_i_39}));
LUT2 #(
    .INIT(4'h6)) 
     mips_data_path_i_9
       (.I0(data_path_PC_plus4[31]),
        .I1(data_path_sign_extend_data[29]),
        .O(n_0_mips_data_path_i_9));
hi_lo_reg mips_hi_lo_reg
       (.clock(clock_IBUF_BUFG),
        .hi_input_data(alu_result_hi),
        .hi_output_data(data_path_hi_read_data),
        .lo_input_data(alu_result_lo),
        .lo_output_data(data_path_lo_read_data),
        .write_enable(control_hi_lo_write_enable));
inst_memory mips_instruction_memory
       (.clock(clock_IBUF_BUFG),
        .instruction({control_opcode,reg_read_addr1,reg_read_addr2,n_16_mips_instruction_memory,n_17_mips_instruction_memory,n_18_mips_instruction_memory,n_19_mips_instruction_memory,n_20_mips_instruction_memory,alu_shamt,n_26_mips_instruction_memory,n_27_mips_instruction_memory,n_28_mips_instruction_memory,n_29_mips_instruction_memory,n_30_mips_instruction_memory,n_31_mips_instruction_memory}),
        .load_enable(inst_memory_load_enable_IBUF),
        .read_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC_current[6:2],1'b0,1'b0}),
        .write_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inst_memory_write_addr_IBUF,1'b0,1'b0}),
        .write_data(inst_memory_write_data_IBUF));
PC_unit mips_pc_unit
       (.PC_current(PC_current),
        .PC_next(PC_next),
        .PC_plus4({data_path_PC_plus4,PC_plus4}),
        .clock(clock_IBUF_BUFG),
        .reset(PC_reset_IBUF));
reg_file mips_register_file
       (.clock(clock_IBUF_BUFG),
        .read_addr1(reg_read_addr1),
        .read_addr2(reg_read_addr2),
        .read_data1(alu_src_a),
        .read_data2(data_memory_write_data),
        .write_addr3(data_path_reg_write_addr3),
        .write_data(data_path_reg_write_data),
        .write_enable(control_reg_write_enable));
(* INPUT_WIDTH = "16" *) 
   (* OUTPUT_WIDTH = "32" *) 
   (* x = "16" *) 
   sign_extend mips_sign_extend
       (.data_in({n_16_mips_instruction_memory,n_17_mips_instruction_memory,n_18_mips_instruction_memory,n_19_mips_instruction_memory,n_20_mips_instruction_memory,alu_shamt,n_26_mips_instruction_memory,n_27_mips_instruction_memory,n_28_mips_instruction_memory,n_29_mips_instruction_memory,n_30_mips_instruction_memory,n_31_mips_instruction_memory}),
        .data_out(data_path_sign_extend_data));
endmodule

module PC_unit
   (clock,
    reset,
    PC_next,
    PC_plus4,
    PC_current);
  input clock;
  input reset;
  input [31:0]PC_next;
  output [31:0]PC_plus4;
  output [31:0]PC_current;

  wire [31:0]PC_current;
  wire [31:0]PC_next;
  wire [31:0]PC_plus4;
  wire clock;
  wire reset;

(* SIZE = "32" *) 
   add4 PC_Plus4_alu
       (.PC(PC_current),
        .PC_plus4(PC_plus4));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[0]),
        .Q(PC_current[0]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[10]),
        .Q(PC_current[10]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[11]),
        .Q(PC_current[11]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[12]),
        .Q(PC_current[12]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[13] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[13]),
        .Q(PC_current[13]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[14] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[14]),
        .Q(PC_current[14]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[15] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[15]),
        .Q(PC_current[15]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[16] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[16]),
        .Q(PC_current[16]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[17] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[17]),
        .Q(PC_current[17]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[18] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[18]),
        .Q(PC_current[18]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[19] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[19]),
        .Q(PC_current[19]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[1]),
        .Q(PC_current[1]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[20] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[20]),
        .Q(PC_current[20]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[21] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[21]),
        .Q(PC_current[21]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[22] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[22]),
        .Q(PC_current[22]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[23] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[23]),
        .Q(PC_current[23]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[24] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[24]),
        .Q(PC_current[24]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[25] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[25]),
        .Q(PC_current[25]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[26] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[26]),
        .Q(PC_current[26]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[27] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[27]),
        .Q(PC_current[27]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[28] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[28]),
        .Q(PC_current[28]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[29] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[29]),
        .Q(PC_current[29]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[2]),
        .Q(PC_current[2]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[30] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[30]),
        .Q(PC_current[30]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[31] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[31]),
        .Q(PC_current[31]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[3]),
        .Q(PC_current[3]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[4]),
        .Q(PC_current[4]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[5]),
        .Q(PC_current[5]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[6]),
        .Q(PC_current[6]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[7]),
        .Q(PC_current[7]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[8]),
        .Q(PC_current[8]),
        .R(reset));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \PC_current_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(PC_next[9]),
        .Q(PC_current[9]),
        .R(reset));
endmodule

(* SIZE = "32" *) 
module add4
   (PC,
    PC_plus4);
  input [31:0]PC;
  output [31:0]PC_plus4;

  wire [31:0]PC;
  wire [31:1]\^PC_plus4 ;
  wire \n_0_PC_plus4[13]_INST_0 ;
  wire \n_0_PC_plus4[13]_INST_0_i_1 ;
  wire \n_0_PC_plus4[13]_INST_0_i_2 ;
  wire \n_0_PC_plus4[13]_INST_0_i_3 ;
  wire \n_0_PC_plus4[13]_INST_0_i_4 ;
  wire \n_0_PC_plus4[17]_INST_0 ;
  wire \n_0_PC_plus4[17]_INST_0_i_1 ;
  wire \n_0_PC_plus4[17]_INST_0_i_2 ;
  wire \n_0_PC_plus4[17]_INST_0_i_3 ;
  wire \n_0_PC_plus4[17]_INST_0_i_4 ;
  wire \n_0_PC_plus4[1]_INST_0 ;
  wire \n_0_PC_plus4[1]_INST_0_i_1 ;
  wire \n_0_PC_plus4[1]_INST_0_i_2 ;
  wire \n_0_PC_plus4[1]_INST_0_i_3 ;
  wire \n_0_PC_plus4[1]_INST_0_i_4 ;
  wire \n_0_PC_plus4[21]_INST_0 ;
  wire \n_0_PC_plus4[21]_INST_0_i_1 ;
  wire \n_0_PC_plus4[21]_INST_0_i_2 ;
  wire \n_0_PC_plus4[21]_INST_0_i_3 ;
  wire \n_0_PC_plus4[21]_INST_0_i_4 ;
  wire \n_0_PC_plus4[25]_INST_0 ;
  wire \n_0_PC_plus4[25]_INST_0_i_1 ;
  wire \n_0_PC_plus4[25]_INST_0_i_2 ;
  wire \n_0_PC_plus4[25]_INST_0_i_3 ;
  wire \n_0_PC_plus4[25]_INST_0_i_4 ;
  wire \n_0_PC_plus4[29]_INST_0_i_1 ;
  wire \n_0_PC_plus4[29]_INST_0_i_2 ;
  wire \n_0_PC_plus4[29]_INST_0_i_3 ;
  wire \n_0_PC_plus4[5]_INST_0 ;
  wire \n_0_PC_plus4[5]_INST_0_i_1 ;
  wire \n_0_PC_plus4[5]_INST_0_i_2 ;
  wire \n_0_PC_plus4[5]_INST_0_i_3 ;
  wire \n_0_PC_plus4[5]_INST_0_i_4 ;
  wire \n_0_PC_plus4[9]_INST_0 ;
  wire \n_0_PC_plus4[9]_INST_0_i_1 ;
  wire \n_0_PC_plus4[9]_INST_0_i_2 ;
  wire \n_0_PC_plus4[9]_INST_0_i_3 ;
  wire \n_0_PC_plus4[9]_INST_0_i_4 ;
  wire \n_1_PC_plus4[13]_INST_0 ;
  wire \n_1_PC_plus4[17]_INST_0 ;
  wire \n_1_PC_plus4[1]_INST_0 ;
  wire \n_1_PC_plus4[21]_INST_0 ;
  wire \n_1_PC_plus4[25]_INST_0 ;
  wire \n_1_PC_plus4[5]_INST_0 ;
  wire \n_1_PC_plus4[9]_INST_0 ;
  wire \n_2_PC_plus4[13]_INST_0 ;
  wire \n_2_PC_plus4[17]_INST_0 ;
  wire \n_2_PC_plus4[1]_INST_0 ;
  wire \n_2_PC_plus4[21]_INST_0 ;
  wire \n_2_PC_plus4[25]_INST_0 ;
  wire \n_2_PC_plus4[29]_INST_0 ;
  wire \n_2_PC_plus4[5]_INST_0 ;
  wire \n_2_PC_plus4[9]_INST_0 ;
  wire \n_3_PC_plus4[13]_INST_0 ;
  wire \n_3_PC_plus4[17]_INST_0 ;
  wire \n_3_PC_plus4[1]_INST_0 ;
  wire \n_3_PC_plus4[21]_INST_0 ;
  wire \n_3_PC_plus4[25]_INST_0 ;
  wire \n_3_PC_plus4[29]_INST_0 ;
  wire \n_3_PC_plus4[5]_INST_0 ;
  wire \n_3_PC_plus4[9]_INST_0 ;
  wire [3:2]\NLW_PC_plus4[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_PC_plus4[29]_INST_0_O_UNCONNECTED ;

  assign PC_plus4[31:1] = \^PC_plus4 [31:1];
  assign PC_plus4[0] = PC[0];
CARRY4 \PC_plus4[13]_INST_0 
       (.CI(\n_0_PC_plus4[9]_INST_0 ),
        .CO({\n_0_PC_plus4[13]_INST_0 ,\n_1_PC_plus4[13]_INST_0 ,\n_2_PC_plus4[13]_INST_0 ,\n_3_PC_plus4[13]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [16:13]),
        .S({\n_0_PC_plus4[13]_INST_0_i_1 ,\n_0_PC_plus4[13]_INST_0_i_2 ,\n_0_PC_plus4[13]_INST_0_i_3 ,\n_0_PC_plus4[13]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[13]_INST_0_i_1 
       (.I0(PC[16]),
        .O(\n_0_PC_plus4[13]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[13]_INST_0_i_2 
       (.I0(PC[15]),
        .O(\n_0_PC_plus4[13]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[13]_INST_0_i_3 
       (.I0(PC[14]),
        .O(\n_0_PC_plus4[13]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[13]_INST_0_i_4 
       (.I0(PC[13]),
        .O(\n_0_PC_plus4[13]_INST_0_i_4 ));
CARRY4 \PC_plus4[17]_INST_0 
       (.CI(\n_0_PC_plus4[13]_INST_0 ),
        .CO({\n_0_PC_plus4[17]_INST_0 ,\n_1_PC_plus4[17]_INST_0 ,\n_2_PC_plus4[17]_INST_0 ,\n_3_PC_plus4[17]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [20:17]),
        .S({\n_0_PC_plus4[17]_INST_0_i_1 ,\n_0_PC_plus4[17]_INST_0_i_2 ,\n_0_PC_plus4[17]_INST_0_i_3 ,\n_0_PC_plus4[17]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[17]_INST_0_i_1 
       (.I0(PC[20]),
        .O(\n_0_PC_plus4[17]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[17]_INST_0_i_2 
       (.I0(PC[19]),
        .O(\n_0_PC_plus4[17]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[17]_INST_0_i_3 
       (.I0(PC[18]),
        .O(\n_0_PC_plus4[17]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[17]_INST_0_i_4 
       (.I0(PC[17]),
        .O(\n_0_PC_plus4[17]_INST_0_i_4 ));
CARRY4 \PC_plus4[1]_INST_0 
       (.CI(1'b0),
        .CO({\n_0_PC_plus4[1]_INST_0 ,\n_1_PC_plus4[1]_INST_0 ,\n_2_PC_plus4[1]_INST_0 ,\n_3_PC_plus4[1]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC[2],1'b0}),
        .O(\^PC_plus4 [4:1]),
        .S({\n_0_PC_plus4[1]_INST_0_i_1 ,\n_0_PC_plus4[1]_INST_0_i_2 ,\n_0_PC_plus4[1]_INST_0_i_3 ,\n_0_PC_plus4[1]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[1]_INST_0_i_1 
       (.I0(PC[4]),
        .O(\n_0_PC_plus4[1]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[1]_INST_0_i_2 
       (.I0(PC[3]),
        .O(\n_0_PC_plus4[1]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \PC_plus4[1]_INST_0_i_3 
       (.I0(PC[2]),
        .O(\n_0_PC_plus4[1]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[1]_INST_0_i_4 
       (.I0(PC[1]),
        .O(\n_0_PC_plus4[1]_INST_0_i_4 ));
CARRY4 \PC_plus4[21]_INST_0 
       (.CI(\n_0_PC_plus4[17]_INST_0 ),
        .CO({\n_0_PC_plus4[21]_INST_0 ,\n_1_PC_plus4[21]_INST_0 ,\n_2_PC_plus4[21]_INST_0 ,\n_3_PC_plus4[21]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [24:21]),
        .S({\n_0_PC_plus4[21]_INST_0_i_1 ,\n_0_PC_plus4[21]_INST_0_i_2 ,\n_0_PC_plus4[21]_INST_0_i_3 ,\n_0_PC_plus4[21]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[21]_INST_0_i_1 
       (.I0(PC[24]),
        .O(\n_0_PC_plus4[21]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[21]_INST_0_i_2 
       (.I0(PC[23]),
        .O(\n_0_PC_plus4[21]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[21]_INST_0_i_3 
       (.I0(PC[22]),
        .O(\n_0_PC_plus4[21]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[21]_INST_0_i_4 
       (.I0(PC[21]),
        .O(\n_0_PC_plus4[21]_INST_0_i_4 ));
CARRY4 \PC_plus4[25]_INST_0 
       (.CI(\n_0_PC_plus4[21]_INST_0 ),
        .CO({\n_0_PC_plus4[25]_INST_0 ,\n_1_PC_plus4[25]_INST_0 ,\n_2_PC_plus4[25]_INST_0 ,\n_3_PC_plus4[25]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [28:25]),
        .S({\n_0_PC_plus4[25]_INST_0_i_1 ,\n_0_PC_plus4[25]_INST_0_i_2 ,\n_0_PC_plus4[25]_INST_0_i_3 ,\n_0_PC_plus4[25]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[25]_INST_0_i_1 
       (.I0(PC[28]),
        .O(\n_0_PC_plus4[25]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[25]_INST_0_i_2 
       (.I0(PC[27]),
        .O(\n_0_PC_plus4[25]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[25]_INST_0_i_3 
       (.I0(PC[26]),
        .O(\n_0_PC_plus4[25]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[25]_INST_0_i_4 
       (.I0(PC[25]),
        .O(\n_0_PC_plus4[25]_INST_0_i_4 ));
CARRY4 \PC_plus4[29]_INST_0 
       (.CI(\n_0_PC_plus4[25]_INST_0 ),
        .CO({\NLW_PC_plus4[29]_INST_0_CO_UNCONNECTED [3:2],\n_2_PC_plus4[29]_INST_0 ,\n_3_PC_plus4[29]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PC_plus4[29]_INST_0_O_UNCONNECTED [3],\^PC_plus4 [31:29]}),
        .S({1'b0,\n_0_PC_plus4[29]_INST_0_i_1 ,\n_0_PC_plus4[29]_INST_0_i_2 ,\n_0_PC_plus4[29]_INST_0_i_3 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[29]_INST_0_i_1 
       (.I0(PC[31]),
        .O(\n_0_PC_plus4[29]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[29]_INST_0_i_2 
       (.I0(PC[30]),
        .O(\n_0_PC_plus4[29]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[29]_INST_0_i_3 
       (.I0(PC[29]),
        .O(\n_0_PC_plus4[29]_INST_0_i_3 ));
CARRY4 \PC_plus4[5]_INST_0 
       (.CI(\n_0_PC_plus4[1]_INST_0 ),
        .CO({\n_0_PC_plus4[5]_INST_0 ,\n_1_PC_plus4[5]_INST_0 ,\n_2_PC_plus4[5]_INST_0 ,\n_3_PC_plus4[5]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [8:5]),
        .S({\n_0_PC_plus4[5]_INST_0_i_1 ,\n_0_PC_plus4[5]_INST_0_i_2 ,\n_0_PC_plus4[5]_INST_0_i_3 ,\n_0_PC_plus4[5]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[5]_INST_0_i_1 
       (.I0(PC[8]),
        .O(\n_0_PC_plus4[5]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[5]_INST_0_i_2 
       (.I0(PC[7]),
        .O(\n_0_PC_plus4[5]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[5]_INST_0_i_3 
       (.I0(PC[6]),
        .O(\n_0_PC_plus4[5]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[5]_INST_0_i_4 
       (.I0(PC[5]),
        .O(\n_0_PC_plus4[5]_INST_0_i_4 ));
CARRY4 \PC_plus4[9]_INST_0 
       (.CI(\n_0_PC_plus4[5]_INST_0 ),
        .CO({\n_0_PC_plus4[9]_INST_0 ,\n_1_PC_plus4[9]_INST_0 ,\n_2_PC_plus4[9]_INST_0 ,\n_3_PC_plus4[9]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\^PC_plus4 [12:9]),
        .S({\n_0_PC_plus4[9]_INST_0_i_1 ,\n_0_PC_plus4[9]_INST_0_i_2 ,\n_0_PC_plus4[9]_INST_0_i_3 ,\n_0_PC_plus4[9]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[9]_INST_0_i_1 
       (.I0(PC[12]),
        .O(\n_0_PC_plus4[9]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[9]_INST_0_i_2 
       (.I0(PC[11]),
        .O(\n_0_PC_plus4[9]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[9]_INST_0_i_3 
       (.I0(PC[10]),
        .O(\n_0_PC_plus4[9]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \PC_plus4[9]_INST_0_i_4 
       (.I0(PC[9]),
        .O(\n_0_PC_plus4[9]_INST_0_i_4 ));
endmodule

module control_unit
   (opcode,
    funct,
    alu_zero,
    write_addr3_sel,
    reg_write_enable,
    reg_write_data_sel,
    alu_src_b_sel,
    data_memory_write_enable,
    hi_lo_write_enable,
    PC_sel,
    alu_control);
  input [5:0]opcode;
  input [5:0]funct;
  input alu_zero;
  output write_addr3_sel;
  output reg_write_enable;
  output [1:0]reg_write_data_sel;
  output alu_src_b_sel;
  output data_memory_write_enable;
  output hi_lo_write_enable;
  output [1:0]PC_sel;
  output [5:0]alu_control;

  wire \<const0> ;
  wire [1:0]PC_sel;
  wire [5:0]alu_control;
  wire alu_src_b_sel;
  wire alu_zero;
  wire data_memory_write_enable;
  wire [5:0]funct;
  wire hi_lo_write_enable;
  wire \n_0_PC_sel[0]_INST_0_i_1 ;
  wire \n_0_alu_control[0]_INST_0_i_1 ;
  wire \n_0_alu_control[1]_INST_0_i_1 ;
  wire \n_0_alu_control[2]_INST_0_i_1 ;
  wire \n_0_alu_control[2]_INST_0_i_2 ;
  wire \n_0_alu_control[3]_INST_0_i_1 ;
  wire \n_0_alu_control[4]_INST_0_i_1 ;
  wire \n_0_alu_control[4]_INST_0_i_2 ;
  wire \n_0_alu_control[4]_INST_0_i_3 ;
  wire \n_0_alu_control[5]_INST_0_i_1 ;
  wire \n_0_alu_control[5]_INST_0_i_2 ;
  wire n_0_hi_lo_write_enable_INST_0_i_1;
  wire n_0_hi_lo_write_enable_INST_0_i_2;
  wire n_0_reg_write_enable_INST_0_i_1;
  wire n_0_reg_write_enable_INST_0_i_2;
  wire n_0_reg_write_enable_INST_0_i_3;
  wire [5:0]opcode;
  wire [0:0]\^reg_write_data_sel ;
  wire reg_write_enable;
  wire write_addr3_sel;

  assign reg_write_data_sel[1] = \<const0> ;
  assign reg_write_data_sel[0] = \^reg_write_data_sel [0];
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     \PC_sel[0]_INST_0 
       (.I0(opcode[5]),
        .I1(opcode[2]),
        .I2(alu_zero),
        .I3(opcode[3]),
        .I4(opcode[4]),
        .I5(\n_0_PC_sel[0]_INST_0_i_1 ),
        .O(PC_sel[0]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \PC_sel[0]_INST_0_i_1 
       (.I0(opcode[1]),
        .I1(opcode[0]),
        .O(\n_0_PC_sel[0]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \PC_sel[1]_INST_0 
       (.I0(opcode[3]),
        .I1(opcode[1]),
        .I2(opcode[4]),
        .I3(opcode[2]),
        .I4(opcode[5]),
        .I5(opcode[0]),
        .O(PC_sel[1]));
LUT5 #(
    .INIT(32'hAAAAAAAB)) 
     \alu_control[0]_INST_0 
       (.I0(\n_0_alu_control[4]_INST_0_i_3 ),
        .I1(\n_0_alu_control[0]_INST_0_i_1 ),
        .I2(opcode[3]),
        .I3(opcode[1]),
        .I4(opcode[2]),
        .O(alu_control[0]));
LUT6 #(
    .INIT(64'h0000000004550205)) 
     \alu_control[0]_INST_0_i_1 
       (.I0(funct[4]),
        .I1(funct[1]),
        .I2(funct[2]),
        .I3(funct[3]),
        .I4(funct[5]),
        .I5(funct[0]),
        .O(\n_0_alu_control[0]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFBFBFEFEFBFBFEFF)) 
     \alu_control[1]_INST_0 
       (.I0(opcode[2]),
        .I1(opcode[1]),
        .I2(\n_0_alu_control[3]_INST_0_i_1 ),
        .I3(\n_0_alu_control[1]_INST_0_i_1 ),
        .I4(opcode[5]),
        .I5(opcode[3]),
        .O(alu_control[1]));
LUT6 #(
    .INIT(64'h00000000010000B1)) 
     \alu_control[1]_INST_0_i_1 
       (.I0(funct[2]),
        .I1(funct[0]),
        .I2(funct[5]),
        .I3(funct[3]),
        .I4(funct[4]),
        .I5(funct[1]),
        .O(\n_0_alu_control[1]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAFB)) 
     \alu_control[2]_INST_0 
       (.I0(\n_0_alu_control[4]_INST_0_i_3 ),
        .I1(\n_0_alu_control[2]_INST_0_i_1 ),
        .I2(\n_0_alu_control[2]_INST_0_i_2 ),
        .I3(opcode[3]),
        .I4(opcode[1]),
        .I5(opcode[2]),
        .O(alu_control[2]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h108F)) 
     \alu_control[2]_INST_0_i_1 
       (.I0(funct[1]),
        .I1(funct[5]),
        .I2(funct[3]),
        .I3(funct[4]),
        .O(\n_0_alu_control[2]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \alu_control[2]_INST_0_i_2 
       (.I0(funct[0]),
        .I1(funct[2]),
        .O(\n_0_alu_control[2]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFCFCFFFF2)) 
     \alu_control[3]_INST_0 
       (.I0(\n_0_alu_control[4]_INST_0_i_1 ),
        .I1(opcode[2]),
        .I2(opcode[1]),
        .I3(opcode[3]),
        .I4(opcode[5]),
        .I5(\n_0_alu_control[3]_INST_0_i_1 ),
        .O(alu_control[3]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hBE)) 
     \alu_control[3]_INST_0_i_1 
       (.I0(opcode[4]),
        .I1(opcode[0]),
        .I2(opcode[1]),
        .O(\n_0_alu_control[3]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
     \alu_control[4]_INST_0 
       (.I0(\n_0_alu_control[4]_INST_0_i_1 ),
        .I1(opcode[2]),
        .I2(opcode[1]),
        .I3(opcode[3]),
        .I4(\n_0_alu_control[4]_INST_0_i_2 ),
        .I5(\n_0_alu_control[4]_INST_0_i_3 ),
        .O(alu_control[4]));
LUT5 #(
    .INIT(32'hEEFEFFFE)) 
     \alu_control[4]_INST_0_i_1 
       (.I0(funct[4]),
        .I1(funct[3]),
        .I2(funct[0]),
        .I3(funct[2]),
        .I4(funct[5]),
        .O(\n_0_alu_control[4]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'hFFFFEFFF)) 
     \alu_control[4]_INST_0_i_2 
       (.I0(funct[2]),
        .I1(funct[0]),
        .I2(funct[5]),
        .I3(funct[1]),
        .I4(funct[4]),
        .O(\n_0_alu_control[4]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hEFFFEFFFFFFEFFFC)) 
     \alu_control[4]_INST_0_i_3 
       (.I0(opcode[2]),
        .I1(opcode[4]),
        .I2(opcode[0]),
        .I3(opcode[1]),
        .I4(opcode[3]),
        .I5(opcode[5]),
        .O(\n_0_alu_control[4]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hFFEFFFEFFFEFFFFF)) 
     \alu_control[5]_INST_0 
       (.I0(opcode[0]),
        .I1(opcode[5]),
        .I2(\n_0_alu_control[5]_INST_0_i_1 ),
        .I3(opcode[1]),
        .I4(\n_0_alu_control[5]_INST_0_i_2 ),
        .I5(opcode[3]),
        .O(alu_control[5]));
LUT2 #(
    .INIT(4'h1)) 
     \alu_control[5]_INST_0_i_1 
       (.I0(opcode[4]),
        .I1(opcode[2]),
        .O(\n_0_alu_control[5]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h0001000000000101)) 
     \alu_control[5]_INST_0_i_2 
       (.I0(funct[5]),
        .I1(funct[2]),
        .I2(funct[0]),
        .I3(funct[1]),
        .I4(funct[4]),
        .I5(funct[3]),
        .O(\n_0_alu_control[5]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
     alu_src_b_sel_INST_0
       (.I0(opcode[1]),
        .I1(opcode[2]),
        .I2(opcode[3]),
        .I3(opcode[4]),
        .I4(opcode[5]),
        .I5(opcode[0]),
        .O(alu_src_b_sel));
LUT6 #(
    .INIT(64'h0000008000000000)) 
     data_memory_write_enable_INST_0
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(opcode[5]),
        .I3(opcode[4]),
        .I4(opcode[2]),
        .I5(opcode[3]),
        .O(data_memory_write_enable));
LUT5 #(
    .INIT(32'h00000001)) 
     hi_lo_write_enable_INST_0
       (.I0(opcode[3]),
        .I1(funct[2]),
        .I2(funct[0]),
        .I3(n_0_hi_lo_write_enable_INST_0_i_1),
        .I4(n_0_hi_lo_write_enable_INST_0_i_2),
        .O(hi_lo_write_enable));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hEFFF)) 
     hi_lo_write_enable_INST_0_i_1
       (.I0(funct[1]),
        .I1(funct[5]),
        .I2(funct[4]),
        .I3(funct[3]),
        .O(n_0_hi_lo_write_enable_INST_0_i_1));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     hi_lo_write_enable_INST_0_i_2
       (.I0(opcode[1]),
        .I1(opcode[4]),
        .I2(opcode[2]),
        .I3(opcode[5]),
        .I4(opcode[0]),
        .O(n_0_hi_lo_write_enable_INST_0_i_2));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT5 #(
    .INIT(32'h10000000)) 
     \reg_write_data_sel[0]_INST_0 
       (.I0(opcode[2]),
        .I1(opcode[4]),
        .I2(opcode[5]),
        .I3(opcode[1]),
        .I4(opcode[0]),
        .O(\^reg_write_data_sel ));
LUT6 #(
    .INIT(64'h000000003333CCCE)) 
     reg_write_enable_INST_0
       (.I0(n_0_reg_write_enable_INST_0_i_1),
        .I1(opcode[5]),
        .I2(funct[4]),
        .I3(n_0_reg_write_enable_INST_0_i_2),
        .I4(opcode[3]),
        .I5(n_0_reg_write_enable_INST_0_i_3),
        .O(reg_write_enable));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT5 #(
    .INIT(32'hBAAABBBB)) 
     reg_write_enable_INST_0_i_1
       (.I0(funct[2]),
        .I1(funct[0]),
        .I2(funct[1]),
        .I3(funct[5]),
        .I4(funct[3]),
        .O(n_0_reg_write_enable_INST_0_i_1));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     reg_write_enable_INST_0_i_2
       (.I0(funct[2]),
        .I1(funct[3]),
        .I2(funct[5]),
        .O(n_0_reg_write_enable_INST_0_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE7EE)) 
     reg_write_enable_INST_0_i_3
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .I2(opcode[3]),
        .I3(opcode[5]),
        .I4(opcode[2]),
        .I5(opcode[4]),
        .O(n_0_reg_write_enable_INST_0_i_3));
LUT6 #(
    .INIT(64'h0000000102000000)) 
     write_addr3_sel_INST_0
       (.I0(opcode[5]),
        .I1(opcode[4]),
        .I2(opcode[2]),
        .I3(opcode[0]),
        .I4(opcode[1]),
        .I5(opcode[3]),
        .O(write_addr3_sel));
endmodule

module data_memory
   (clock,
    write_enable,
    addr,
    write_data,
    read_data);
  input clock;
  input write_enable;
  input [31:0]addr;
  input [31:0]write_data;
  output [31:0]read_data;

  wire [31:0]addr;
  wire clock;
  wire n_0_memory0_reg_r1_0_31_0_5;
  wire n_0_memory0_reg_r1_0_31_0_5_i_10;
  wire n_0_memory0_reg_r1_0_31_0_5_i_11;
  wire n_0_memory0_reg_r1_0_31_0_5_i_12;
  wire n_0_memory0_reg_r1_0_31_0_5_i_13;
  wire n_0_memory0_reg_r1_0_31_0_5_i_14;
  wire n_0_memory0_reg_r1_0_31_0_5_i_15;
  wire n_0_memory0_reg_r1_0_31_0_5_i_16;
  wire n_0_memory0_reg_r1_0_31_0_5_i_7;
  wire n_0_memory0_reg_r1_0_31_0_5_i_8;
  wire n_0_memory0_reg_r1_0_31_0_5_i_9;
  wire n_0_memory0_reg_r1_0_31_6_7;
  wire n_0_memory1_reg_r1_0_31_0_5;
  wire n_0_memory1_reg_r1_0_31_0_5_i_1;
  wire n_0_memory1_reg_r1_0_31_0_5_i_10;
  wire n_0_memory1_reg_r1_0_31_0_5_i_11;
  wire n_0_memory1_reg_r1_0_31_0_5_i_2;
  wire n_0_memory1_reg_r1_0_31_0_5_i_3;
  wire n_0_memory1_reg_r1_0_31_0_5_i_4;
  wire n_0_memory1_reg_r1_0_31_0_5_i_5;
  wire n_0_memory1_reg_r1_0_31_0_5_i_6;
  wire n_0_memory1_reg_r1_0_31_0_5_i_7;
  wire n_0_memory1_reg_r1_0_31_0_5_i_8;
  wire n_0_memory1_reg_r1_0_31_0_5_i_9;
  wire n_0_memory1_reg_r1_0_31_6_7;
  wire n_0_memory1_reg_r1_0_31_6_7_i_1;
  wire n_0_memory1_reg_r1_0_31_6_7_i_2;
  wire n_0_memory1_reg_r2_0_31_0_5;
  wire n_0_memory1_reg_r2_0_31_6_7;
  wire n_0_memory2_reg_r1_0_31_0_5;
  wire n_0_memory2_reg_r1_0_31_0_5_i_1;
  wire n_0_memory2_reg_r1_0_31_0_5_i_10;
  wire n_0_memory2_reg_r1_0_31_0_5_i_11;
  wire n_0_memory2_reg_r1_0_31_0_5_i_2;
  wire n_0_memory2_reg_r1_0_31_0_5_i_3;
  wire n_0_memory2_reg_r1_0_31_0_5_i_4;
  wire n_0_memory2_reg_r1_0_31_0_5_i_5;
  wire n_0_memory2_reg_r1_0_31_0_5_i_6;
  wire n_0_memory2_reg_r1_0_31_0_5_i_7;
  wire n_0_memory2_reg_r1_0_31_0_5_i_8;
  wire n_0_memory2_reg_r1_0_31_0_5_i_9;
  wire n_0_memory2_reg_r1_0_31_6_7;
  wire n_0_memory2_reg_r1_0_31_6_7_i_1;
  wire n_0_memory2_reg_r1_0_31_6_7_i_2;
  wire n_0_memory2_reg_r2_0_31_0_5;
  wire n_0_memory2_reg_r2_0_31_6_7;
  wire n_0_memory3_reg_0_31_0_0_i_1;
  wire n_0_memory3_reg_0_31_1_1_i_1;
  wire n_0_memory3_reg_0_31_2_2_i_1;
  wire n_0_memory3_reg_0_31_3_3_i_1;
  wire n_0_memory3_reg_0_31_4_4_i_1;
  wire n_0_memory3_reg_0_31_5_5_i_1;
  wire n_0_memory3_reg_0_31_6_6_i_1;
  wire n_0_memory3_reg_0_31_7_7_i_1;
  wire n_1_memory0_reg_r1_0_31_0_5;
  wire n_1_memory0_reg_r1_0_31_6_7;
  wire n_1_memory1_reg_r1_0_31_0_5;
  wire n_1_memory1_reg_r1_0_31_6_7;
  wire n_1_memory1_reg_r2_0_31_0_5;
  wire n_1_memory1_reg_r2_0_31_6_7;
  wire n_1_memory2_reg_r1_0_31_0_5;
  wire n_1_memory2_reg_r1_0_31_6_7;
  wire n_1_memory2_reg_r2_0_31_0_5;
  wire n_1_memory2_reg_r2_0_31_6_7;
  wire n_2_memory0_reg_r1_0_31_0_5;
  wire n_2_memory1_reg_r1_0_31_0_5;
  wire n_2_memory1_reg_r2_0_31_0_5;
  wire n_2_memory2_reg_r1_0_31_0_5;
  wire n_2_memory2_reg_r2_0_31_0_5;
  wire n_3_memory0_reg_r1_0_31_0_5;
  wire n_3_memory1_reg_r1_0_31_0_5;
  wire n_3_memory1_reg_r2_0_31_0_5;
  wire n_3_memory2_reg_r1_0_31_0_5;
  wire n_3_memory2_reg_r2_0_31_0_5;
  wire n_4_memory0_reg_r1_0_31_0_5;
  wire n_4_memory1_reg_r1_0_31_0_5;
  wire n_4_memory1_reg_r2_0_31_0_5;
  wire n_4_memory2_reg_r1_0_31_0_5;
  wire n_4_memory2_reg_r2_0_31_0_5;
  wire n_5_memory0_reg_r1_0_31_0_5;
  wire n_5_memory1_reg_r1_0_31_0_5;
  wire n_5_memory1_reg_r2_0_31_0_5;
  wire n_5_memory2_reg_r1_0_31_0_5;
  wire n_5_memory2_reg_r2_0_31_0_5;
  wire [7:0]p_3_in;
  wire [31:0]read_data;
  wire [7:0]read_data0;
  wire [7:0]read_data01_out;
  wire [31:0]write_data;
  wire write_enable;
  wire [1:0]NLW_memory0_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r1_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r1_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r1_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r2_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r2_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_r2_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r1_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r1_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r1_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r2_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r2_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_r2_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r1_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r1_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r1_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r2_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r2_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_r2_0_31_6_7_DOD_UNCONNECTED;

(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_r1_0_31_0_5
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory0_reg_r1_0_31_0_5_i_12,n_0_memory0_reg_r1_0_31_0_5_i_13,n_0_memory0_reg_r1_0_31_0_5_i_14,n_0_memory0_reg_r1_0_31_0_5_i_15,n_0_memory0_reg_r1_0_31_0_5_i_16}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC(p_3_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory0_reg_r1_0_31_0_5,n_1_memory0_reg_r1_0_31_0_5}),
        .DOB({n_2_memory0_reg_r1_0_31_0_5,n_3_memory0_reg_r1_0_31_0_5}),
        .DOC({n_4_memory0_reg_r1_0_31_0_5,n_5_memory0_reg_r1_0_31_0_5}),
        .DOD(NLW_memory0_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_1
       (.I0(write_data[9]),
        .I1(write_data[25]),
        .I2(write_data[17]),
        .I3(addr[1]),
        .I4(write_data[1]),
        .I5(addr[0]),
        .O(p_3_in[1]));
LUT2 #(
    .INIT(4'h6)) 
     memory0_reg_r1_0_31_0_5_i_10
       (.I0(addr[2]),
        .I1(addr[3]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_10));
LUT1 #(
    .INIT(2'h1)) 
     memory0_reg_r1_0_31_0_5_i_11
       (.I0(addr[2]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_11));
LUT4 #(
    .INIT(16'hABA8)) 
     memory0_reg_r1_0_31_0_5_i_12
       (.I0(n_0_memory0_reg_r1_0_31_0_5_i_7),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[6]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_12));
LUT6 #(
    .INIT(64'h7F7F7FFF80808000)) 
     memory0_reg_r1_0_31_0_5_i_13
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[4]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[5]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_13));
LUT5 #(
    .INIT(32'h777F8880)) 
     memory0_reg_r1_0_31_0_5_i_14
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[4]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_14));
LUT4 #(
    .INIT(16'h57A8)) 
     memory0_reg_r1_0_31_0_5_i_15
       (.I0(addr[2]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[3]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_15));
LUT3 #(
    .INIT(8'h1E)) 
     memory0_reg_r1_0_31_0_5_i_16
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_16));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_2
       (.I0(write_data[8]),
        .I1(write_data[24]),
        .I2(write_data[16]),
        .I3(addr[1]),
        .I4(write_data[0]),
        .I5(addr[0]),
        .O(p_3_in[0]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_3
       (.I0(write_data[11]),
        .I1(write_data[27]),
        .I2(write_data[19]),
        .I3(addr[1]),
        .I4(write_data[3]),
        .I5(addr[0]),
        .O(p_3_in[3]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_4
       (.I0(write_data[10]),
        .I1(write_data[26]),
        .I2(write_data[18]),
        .I3(addr[1]),
        .I4(write_data[2]),
        .I5(addr[0]),
        .O(p_3_in[2]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_5
       (.I0(write_data[13]),
        .I1(write_data[29]),
        .I2(write_data[21]),
        .I3(addr[1]),
        .I4(write_data[5]),
        .I5(addr[0]),
        .O(p_3_in[5]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_0_5_i_6
       (.I0(write_data[12]),
        .I1(write_data[28]),
        .I2(write_data[20]),
        .I3(addr[1]),
        .I4(write_data[4]),
        .I5(addr[0]),
        .O(p_3_in[4]));
LUT5 #(
    .INIT(32'h7FFF8000)) 
     memory0_reg_r1_0_31_0_5_i_7
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[3]),
        .I3(addr[5]),
        .I4(addr[6]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_7));
LUT4 #(
    .INIT(16'h7F80)) 
     memory0_reg_r1_0_31_0_5_i_8
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[4]),
        .I3(addr[5]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_8));
LUT3 #(
    .INIT(8'h78)) 
     memory0_reg_r1_0_31_0_5_i_9
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(addr[4]),
        .O(n_0_memory0_reg_r1_0_31_0_5_i_9));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_r1_0_31_6_7
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory0_reg_r1_0_31_0_5_i_12,n_0_memory0_reg_r1_0_31_0_5_i_13,n_0_memory0_reg_r1_0_31_0_5_i_14,n_0_memory0_reg_r1_0_31_0_5_i_15,n_0_memory0_reg_r1_0_31_0_5_i_16}),
        .DIA(p_3_in[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory0_reg_r1_0_31_6_7,n_1_memory0_reg_r1_0_31_6_7}),
        .DOB(NLW_memory0_reg_r1_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory0_reg_r1_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory0_reg_r1_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_6_7_i_1
       (.I0(write_data[15]),
        .I1(write_data[31]),
        .I2(write_data[23]),
        .I3(addr[1]),
        .I4(write_data[7]),
        .I5(addr[0]),
        .O(p_3_in[7]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory0_reg_r1_0_31_6_7_i_2
       (.I0(write_data[14]),
        .I1(write_data[30]),
        .I2(write_data[22]),
        .I3(addr[1]),
        .I4(write_data[6]),
        .I5(addr[0]),
        .O(p_3_in[6]));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_r2_0_31_0_5
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory0_reg_r1_0_31_0_5_i_12,n_0_memory0_reg_r1_0_31_0_5_i_13,n_0_memory0_reg_r1_0_31_0_5_i_14,n_0_memory0_reg_r1_0_31_0_5_i_15,n_0_memory0_reg_r1_0_31_0_5_i_16}),
        .DIA(p_3_in[1:0]),
        .DIB(p_3_in[3:2]),
        .DIC(p_3_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data01_out[1:0]),
        .DOB(read_data01_out[3:2]),
        .DOC(read_data01_out[5:4]),
        .DOD(NLW_memory0_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_r2_0_31_6_7
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory0_reg_r1_0_31_0_5_i_12,n_0_memory0_reg_r1_0_31_0_5_i_13,n_0_memory0_reg_r1_0_31_0_5_i_14,n_0_memory0_reg_r1_0_31_0_5_i_15,n_0_memory0_reg_r1_0_31_0_5_i_16}),
        .DIA(p_3_in[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data01_out[7:6]),
        .DOB(NLW_memory0_reg_r2_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory0_reg_r2_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory0_reg_r2_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_r1_0_31_0_5
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory1_reg_r1_0_31_0_5_i_7,n_0_memory1_reg_r1_0_31_0_5_i_8,n_0_memory1_reg_r1_0_31_0_5_i_9,n_0_memory1_reg_r1_0_31_0_5_i_10,n_0_memory1_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory1_reg_r1_0_31_0_5_i_1,n_0_memory1_reg_r1_0_31_0_5_i_2}),
        .DIB({n_0_memory1_reg_r1_0_31_0_5_i_3,n_0_memory1_reg_r1_0_31_0_5_i_4}),
        .DIC({n_0_memory1_reg_r1_0_31_0_5_i_5,n_0_memory1_reg_r1_0_31_0_5_i_6}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory1_reg_r1_0_31_0_5,n_1_memory1_reg_r1_0_31_0_5}),
        .DOB({n_2_memory1_reg_r1_0_31_0_5,n_3_memory1_reg_r1_0_31_0_5}),
        .DOC({n_4_memory1_reg_r1_0_31_0_5,n_5_memory1_reg_r1_0_31_0_5}),
        .DOD(NLW_memory1_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_1
       (.I0(write_data[17]),
        .I1(write_data[1]),
        .I2(write_data[25]),
        .I3(addr[1]),
        .I4(write_data[9]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_1));
LUT3 #(
    .INIT(8'h78)) 
     memory1_reg_r1_0_31_0_5_i_10
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[3]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_10));
LUT2 #(
    .INIT(4'h6)) 
     memory1_reg_r1_0_31_0_5_i_11
       (.I0(addr[1]),
        .I1(addr[2]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_11));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_2
       (.I0(write_data[16]),
        .I1(write_data[0]),
        .I2(write_data[24]),
        .I3(addr[1]),
        .I4(write_data[8]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_2));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_3
       (.I0(write_data[19]),
        .I1(write_data[3]),
        .I2(write_data[27]),
        .I3(addr[1]),
        .I4(write_data[11]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_3));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_4
       (.I0(write_data[18]),
        .I1(write_data[2]),
        .I2(write_data[26]),
        .I3(addr[1]),
        .I4(write_data[10]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_4));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_5
       (.I0(write_data[21]),
        .I1(write_data[5]),
        .I2(write_data[29]),
        .I3(addr[1]),
        .I4(write_data[13]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_5));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_0_5_i_6
       (.I0(write_data[20]),
        .I1(write_data[4]),
        .I2(write_data[28]),
        .I3(addr[1]),
        .I4(write_data[12]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_6));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     memory1_reg_r1_0_31_0_5_i_7
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[3]),
        .I3(addr[5]),
        .I4(addr[1]),
        .I5(addr[6]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_7));
LUT5 #(
    .INIT(32'h7FFF8000)) 
     memory1_reg_r1_0_31_0_5_i_8
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[4]),
        .I3(addr[1]),
        .I4(addr[5]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_8));
LUT4 #(
    .INIT(16'h7F80)) 
     memory1_reg_r1_0_31_0_5_i_9
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[4]),
        .O(n_0_memory1_reg_r1_0_31_0_5_i_9));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_r1_0_31_6_7
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory1_reg_r1_0_31_0_5_i_7,n_0_memory1_reg_r1_0_31_0_5_i_8,n_0_memory1_reg_r1_0_31_0_5_i_9,n_0_memory1_reg_r1_0_31_0_5_i_10,n_0_memory1_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory1_reg_r1_0_31_6_7_i_1,n_0_memory1_reg_r1_0_31_6_7_i_2}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory1_reg_r1_0_31_6_7,n_1_memory1_reg_r1_0_31_6_7}),
        .DOB(NLW_memory1_reg_r1_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory1_reg_r1_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory1_reg_r1_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_6_7_i_1
       (.I0(write_data[23]),
        .I1(write_data[7]),
        .I2(write_data[31]),
        .I3(addr[1]),
        .I4(write_data[15]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_6_7_i_1));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory1_reg_r1_0_31_6_7_i_2
       (.I0(write_data[22]),
        .I1(write_data[6]),
        .I2(write_data[30]),
        .I3(addr[1]),
        .I4(write_data[14]),
        .I5(addr[0]),
        .O(n_0_memory1_reg_r1_0_31_6_7_i_2));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_r2_0_31_0_5
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory1_reg_r1_0_31_0_5_i_7,n_0_memory1_reg_r1_0_31_0_5_i_8,n_0_memory1_reg_r1_0_31_0_5_i_9,n_0_memory1_reg_r1_0_31_0_5_i_10,n_0_memory1_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory1_reg_r1_0_31_0_5_i_1,n_0_memory1_reg_r1_0_31_0_5_i_2}),
        .DIB({n_0_memory1_reg_r1_0_31_0_5_i_3,n_0_memory1_reg_r1_0_31_0_5_i_4}),
        .DIC({n_0_memory1_reg_r1_0_31_0_5_i_5,n_0_memory1_reg_r1_0_31_0_5_i_6}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory1_reg_r2_0_31_0_5,n_1_memory1_reg_r2_0_31_0_5}),
        .DOB({n_2_memory1_reg_r2_0_31_0_5,n_3_memory1_reg_r2_0_31_0_5}),
        .DOC({n_4_memory1_reg_r2_0_31_0_5,n_5_memory1_reg_r2_0_31_0_5}),
        .DOD(NLW_memory1_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_r2_0_31_6_7
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory1_reg_r1_0_31_0_5_i_7,n_0_memory1_reg_r1_0_31_0_5_i_8,n_0_memory1_reg_r1_0_31_0_5_i_9,n_0_memory1_reg_r1_0_31_0_5_i_10,n_0_memory1_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory1_reg_r1_0_31_6_7_i_1,n_0_memory1_reg_r1_0_31_6_7_i_2}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory1_reg_r2_0_31_6_7,n_1_memory1_reg_r2_0_31_6_7}),
        .DOB(NLW_memory1_reg_r2_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory1_reg_r2_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory1_reg_r2_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_r1_0_31_0_5
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory2_reg_r1_0_31_0_5_i_7,n_0_memory2_reg_r1_0_31_0_5_i_8,n_0_memory2_reg_r1_0_31_0_5_i_9,n_0_memory2_reg_r1_0_31_0_5_i_10,n_0_memory2_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory2_reg_r1_0_31_0_5_i_1,n_0_memory2_reg_r1_0_31_0_5_i_2}),
        .DIB({n_0_memory2_reg_r1_0_31_0_5_i_3,n_0_memory2_reg_r1_0_31_0_5_i_4}),
        .DIC({n_0_memory2_reg_r1_0_31_0_5_i_5,n_0_memory2_reg_r1_0_31_0_5_i_6}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory2_reg_r1_0_31_0_5,n_1_memory2_reg_r1_0_31_0_5}),
        .DOB({n_2_memory2_reg_r1_0_31_0_5,n_3_memory2_reg_r1_0_31_0_5}),
        .DOC({n_4_memory2_reg_r1_0_31_0_5,n_5_memory2_reg_r1_0_31_0_5}),
        .DOD(NLW_memory2_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_1
       (.I0(write_data[25]),
        .I1(write_data[9]),
        .I2(write_data[1]),
        .I3(addr[1]),
        .I4(write_data[17]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_1));
LUT4 #(
    .INIT(16'h7F80)) 
     memory2_reg_r1_0_31_0_5_i_10
       (.I0(addr[2]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[3]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_10));
LUT3 #(
    .INIT(8'h78)) 
     memory2_reg_r1_0_31_0_5_i_11
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_11));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_2
       (.I0(write_data[24]),
        .I1(write_data[8]),
        .I2(write_data[0]),
        .I3(addr[1]),
        .I4(write_data[16]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_2));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_3
       (.I0(write_data[27]),
        .I1(write_data[11]),
        .I2(write_data[3]),
        .I3(addr[1]),
        .I4(write_data[19]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_3));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_4
       (.I0(write_data[26]),
        .I1(write_data[10]),
        .I2(write_data[2]),
        .I3(addr[1]),
        .I4(write_data[18]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_4));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_5
       (.I0(write_data[29]),
        .I1(write_data[13]),
        .I2(write_data[5]),
        .I3(addr[1]),
        .I4(write_data[21]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_5));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_0_5_i_6
       (.I0(write_data[28]),
        .I1(write_data[12]),
        .I2(write_data[4]),
        .I3(addr[1]),
        .I4(write_data[20]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_6));
LUT4 #(
    .INIT(16'hBF80)) 
     memory2_reg_r1_0_31_0_5_i_7
       (.I0(n_0_memory0_reg_r1_0_31_0_5_i_7),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[6]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_7));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     memory2_reg_r1_0_31_0_5_i_8
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[4]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[5]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_8));
LUT5 #(
    .INIT(32'h7FFF8000)) 
     memory2_reg_r1_0_31_0_5_i_9
       (.I0(addr[2]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[4]),
        .O(n_0_memory2_reg_r1_0_31_0_5_i_9));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_r1_0_31_6_7
       (.ADDRA({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRB({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRC({n_0_memory0_reg_r1_0_31_0_5_i_7,n_0_memory0_reg_r1_0_31_0_5_i_8,n_0_memory0_reg_r1_0_31_0_5_i_9,n_0_memory0_reg_r1_0_31_0_5_i_10,n_0_memory0_reg_r1_0_31_0_5_i_11}),
        .ADDRD({n_0_memory2_reg_r1_0_31_0_5_i_7,n_0_memory2_reg_r1_0_31_0_5_i_8,n_0_memory2_reg_r1_0_31_0_5_i_9,n_0_memory2_reg_r1_0_31_0_5_i_10,n_0_memory2_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory2_reg_r1_0_31_6_7_i_1,n_0_memory2_reg_r1_0_31_6_7_i_2}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory2_reg_r1_0_31_6_7,n_1_memory2_reg_r1_0_31_6_7}),
        .DOB(NLW_memory2_reg_r1_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory2_reg_r1_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory2_reg_r1_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_6_7_i_1
       (.I0(write_data[31]),
        .I1(write_data[15]),
        .I2(write_data[7]),
        .I3(addr[1]),
        .I4(write_data[23]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_6_7_i_1));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory2_reg_r1_0_31_6_7_i_2
       (.I0(write_data[30]),
        .I1(write_data[14]),
        .I2(write_data[6]),
        .I3(addr[1]),
        .I4(write_data[22]),
        .I5(addr[0]),
        .O(n_0_memory2_reg_r1_0_31_6_7_i_2));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_r2_0_31_0_5
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory2_reg_r1_0_31_0_5_i_7,n_0_memory2_reg_r1_0_31_0_5_i_8,n_0_memory2_reg_r1_0_31_0_5_i_9,n_0_memory2_reg_r1_0_31_0_5_i_10,n_0_memory2_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory2_reg_r1_0_31_0_5_i_1,n_0_memory2_reg_r1_0_31_0_5_i_2}),
        .DIB({n_0_memory2_reg_r1_0_31_0_5_i_3,n_0_memory2_reg_r1_0_31_0_5_i_4}),
        .DIC({n_0_memory2_reg_r1_0_31_0_5_i_5,n_0_memory2_reg_r1_0_31_0_5_i_6}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory2_reg_r2_0_31_0_5,n_1_memory2_reg_r2_0_31_0_5}),
        .DOB({n_2_memory2_reg_r2_0_31_0_5,n_3_memory2_reg_r2_0_31_0_5}),
        .DOC({n_4_memory2_reg_r2_0_31_0_5,n_5_memory2_reg_r2_0_31_0_5}),
        .DOD(NLW_memory2_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_r2_0_31_6_7
       (.ADDRA(addr[6:2]),
        .ADDRB(addr[6:2]),
        .ADDRC(addr[6:2]),
        .ADDRD({n_0_memory2_reg_r1_0_31_0_5_i_7,n_0_memory2_reg_r1_0_31_0_5_i_8,n_0_memory2_reg_r1_0_31_0_5_i_9,n_0_memory2_reg_r1_0_31_0_5_i_10,n_0_memory2_reg_r1_0_31_0_5_i_11}),
        .DIA({n_0_memory2_reg_r1_0_31_6_7_i_1,n_0_memory2_reg_r1_0_31_6_7_i_2}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({n_0_memory2_reg_r2_0_31_6_7,n_1_memory2_reg_r2_0_31_6_7}),
        .DOB(NLW_memory2_reg_r2_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory2_reg_r2_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory2_reg_r2_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_0_0
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_0_0_i_1),
        .O(read_data0[0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_0_0_i_1
       (.I0(write_data[0]),
        .I1(write_data[16]),
        .I2(write_data[8]),
        .I3(addr[1]),
        .I4(write_data[24]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_0_0_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_1_1
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_1_1_i_1),
        .O(read_data0[1]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_1_1_i_1
       (.I0(write_data[1]),
        .I1(write_data[17]),
        .I2(write_data[9]),
        .I3(addr[1]),
        .I4(write_data[25]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_1_1_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_2_2
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_2_2_i_1),
        .O(read_data0[2]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_2_2_i_1
       (.I0(write_data[2]),
        .I1(write_data[18]),
        .I2(write_data[10]),
        .I3(addr[1]),
        .I4(write_data[26]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_2_2_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_3_3
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_3_3_i_1),
        .O(read_data0[3]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_3_3_i_1
       (.I0(write_data[3]),
        .I1(write_data[19]),
        .I2(write_data[11]),
        .I3(addr[1]),
        .I4(write_data[27]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_3_3_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_4_4
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_4_4_i_1),
        .O(read_data0[4]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_4_4_i_1
       (.I0(write_data[4]),
        .I1(write_data[20]),
        .I2(write_data[12]),
        .I3(addr[1]),
        .I4(write_data[28]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_4_4_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_5_5
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_5_5_i_1),
        .O(read_data0[5]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_5_5_i_1
       (.I0(write_data[5]),
        .I1(write_data[21]),
        .I2(write_data[13]),
        .I3(addr[1]),
        .I4(write_data[29]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_5_5_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_6_6
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_6_6_i_1),
        .O(read_data0[6]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_6_6_i_1
       (.I0(write_data[6]),
        .I1(write_data[22]),
        .I2(write_data[14]),
        .I3(addr[1]),
        .I4(write_data[30]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_6_6_i_1));
(* XILINX_REPORT_XFORM = "RAM32X1S" *) 
   RAM32X1S #(
    .INIT(32'h00000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_7_7
       (.A0(addr[2]),
        .A1(addr[3]),
        .A2(addr[4]),
        .A3(addr[5]),
        .A4(addr[6]),
        .D(n_0_memory3_reg_0_31_7_7_i_1),
        .O(read_data0[7]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     memory3_reg_0_31_7_7_i_1
       (.I0(write_data[7]),
        .I1(write_data[23]),
        .I2(write_data[15]),
        .I3(addr[1]),
        .I4(write_data[31]),
        .I5(addr[0]),
        .O(n_0_memory3_reg_0_31_7_7_i_1));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[0]_INST_0 
       (.I0(read_data0[0]),
        .I1(n_1_memory1_reg_r2_0_31_0_5),
        .I2(n_1_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[0]),
        .I5(addr[0]),
        .O(read_data[0]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[10]_INST_0 
       (.I0(n_3_memory0_reg_r1_0_31_0_5),
        .I1(n_3_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[2]),
        .I3(addr[1]),
        .I4(n_3_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[10]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[11]_INST_0 
       (.I0(n_2_memory0_reg_r1_0_31_0_5),
        .I1(n_2_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[3]),
        .I3(addr[1]),
        .I4(n_2_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[11]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[12]_INST_0 
       (.I0(n_5_memory0_reg_r1_0_31_0_5),
        .I1(n_5_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[4]),
        .I3(addr[1]),
        .I4(n_5_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[12]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[13]_INST_0 
       (.I0(n_4_memory0_reg_r1_0_31_0_5),
        .I1(n_4_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[5]),
        .I3(addr[1]),
        .I4(n_4_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[13]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[14]_INST_0 
       (.I0(n_1_memory0_reg_r1_0_31_6_7),
        .I1(n_1_memory2_reg_r2_0_31_6_7),
        .I2(read_data0[6]),
        .I3(addr[1]),
        .I4(n_1_memory1_reg_r2_0_31_6_7),
        .I5(addr[0]),
        .O(read_data[14]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[15]_INST_0 
       (.I0(n_0_memory0_reg_r1_0_31_6_7),
        .I1(n_0_memory2_reg_r2_0_31_6_7),
        .I2(read_data0[7]),
        .I3(addr[1]),
        .I4(n_0_memory1_reg_r2_0_31_6_7),
        .I5(addr[0]),
        .O(read_data[15]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[16]_INST_0 
       (.I0(n_1_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[0]),
        .I2(n_1_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_1_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[16]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[17]_INST_0 
       (.I0(n_0_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[1]),
        .I2(n_0_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_0_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[17]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[18]_INST_0 
       (.I0(n_3_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[2]),
        .I2(n_3_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_3_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[18]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[19]_INST_0 
       (.I0(n_2_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[3]),
        .I2(n_2_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_2_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[19]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[1]_INST_0 
       (.I0(read_data0[1]),
        .I1(n_0_memory1_reg_r2_0_31_0_5),
        .I2(n_0_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[1]),
        .I5(addr[0]),
        .O(read_data[1]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[20]_INST_0 
       (.I0(n_5_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[4]),
        .I2(n_5_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_5_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[20]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[21]_INST_0 
       (.I0(n_4_memory1_reg_r1_0_31_0_5),
        .I1(read_data0[5]),
        .I2(n_4_memory0_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(n_4_memory2_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[21]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[22]_INST_0 
       (.I0(n_1_memory1_reg_r1_0_31_6_7),
        .I1(read_data0[6]),
        .I2(n_1_memory0_reg_r1_0_31_6_7),
        .I3(addr[1]),
        .I4(n_1_memory2_reg_r2_0_31_6_7),
        .I5(addr[0]),
        .O(read_data[22]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[23]_INST_0 
       (.I0(n_0_memory1_reg_r1_0_31_6_7),
        .I1(read_data0[7]),
        .I2(n_0_memory0_reg_r1_0_31_6_7),
        .I3(addr[1]),
        .I4(n_0_memory2_reg_r2_0_31_6_7),
        .I5(addr[0]),
        .O(read_data[23]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[24]_INST_0 
       (.I0(n_1_memory2_reg_r1_0_31_0_5),
        .I1(n_1_memory0_reg_r1_0_31_0_5),
        .I2(n_1_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[0]),
        .I5(addr[0]),
        .O(read_data[24]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[25]_INST_0 
       (.I0(n_0_memory2_reg_r1_0_31_0_5),
        .I1(n_0_memory0_reg_r1_0_31_0_5),
        .I2(n_0_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[1]),
        .I5(addr[0]),
        .O(read_data[25]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[26]_INST_0 
       (.I0(n_3_memory2_reg_r1_0_31_0_5),
        .I1(n_3_memory0_reg_r1_0_31_0_5),
        .I2(n_3_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[2]),
        .I5(addr[0]),
        .O(read_data[26]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[27]_INST_0 
       (.I0(n_2_memory2_reg_r1_0_31_0_5),
        .I1(n_2_memory0_reg_r1_0_31_0_5),
        .I2(n_2_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[3]),
        .I5(addr[0]),
        .O(read_data[27]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[28]_INST_0 
       (.I0(n_5_memory2_reg_r1_0_31_0_5),
        .I1(n_5_memory0_reg_r1_0_31_0_5),
        .I2(n_5_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[4]),
        .I5(addr[0]),
        .O(read_data[28]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[29]_INST_0 
       (.I0(n_4_memory2_reg_r1_0_31_0_5),
        .I1(n_4_memory0_reg_r1_0_31_0_5),
        .I2(n_4_memory1_reg_r1_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data0[5]),
        .I5(addr[0]),
        .O(read_data[29]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[2]_INST_0 
       (.I0(read_data0[2]),
        .I1(n_3_memory1_reg_r2_0_31_0_5),
        .I2(n_3_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[2]),
        .I5(addr[0]),
        .O(read_data[2]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[30]_INST_0 
       (.I0(n_1_memory2_reg_r1_0_31_6_7),
        .I1(n_1_memory0_reg_r1_0_31_6_7),
        .I2(n_1_memory1_reg_r1_0_31_6_7),
        .I3(addr[1]),
        .I4(read_data0[6]),
        .I5(addr[0]),
        .O(read_data[30]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[31]_INST_0 
       (.I0(n_0_memory2_reg_r1_0_31_6_7),
        .I1(n_0_memory0_reg_r1_0_31_6_7),
        .I2(n_0_memory1_reg_r1_0_31_6_7),
        .I3(addr[1]),
        .I4(read_data0[7]),
        .I5(addr[0]),
        .O(read_data[31]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[3]_INST_0 
       (.I0(read_data0[3]),
        .I1(n_2_memory1_reg_r2_0_31_0_5),
        .I2(n_2_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[3]),
        .I5(addr[0]),
        .O(read_data[3]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[4]_INST_0 
       (.I0(read_data0[4]),
        .I1(n_5_memory1_reg_r2_0_31_0_5),
        .I2(n_5_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[4]),
        .I5(addr[0]),
        .O(read_data[4]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[5]_INST_0 
       (.I0(read_data0[5]),
        .I1(n_4_memory1_reg_r2_0_31_0_5),
        .I2(n_4_memory2_reg_r2_0_31_0_5),
        .I3(addr[1]),
        .I4(read_data01_out[5]),
        .I5(addr[0]),
        .O(read_data[5]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[6]_INST_0 
       (.I0(read_data0[6]),
        .I1(n_1_memory1_reg_r2_0_31_6_7),
        .I2(n_1_memory2_reg_r2_0_31_6_7),
        .I3(addr[1]),
        .I4(read_data01_out[6]),
        .I5(addr[0]),
        .O(read_data[6]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[7]_INST_0 
       (.I0(read_data0[7]),
        .I1(n_0_memory1_reg_r2_0_31_6_7),
        .I2(n_0_memory2_reg_r2_0_31_6_7),
        .I3(addr[1]),
        .I4(read_data01_out[7]),
        .I5(addr[0]),
        .O(read_data[7]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[8]_INST_0 
       (.I0(n_1_memory0_reg_r1_0_31_0_5),
        .I1(n_1_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[0]),
        .I3(addr[1]),
        .I4(n_1_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[8]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \read_data[9]_INST_0 
       (.I0(n_0_memory0_reg_r1_0_31_0_5),
        .I1(n_0_memory2_reg_r2_0_31_0_5),
        .I2(read_data0[1]),
        .I3(addr[1]),
        .I4(n_0_memory1_reg_r2_0_31_0_5),
        .I5(addr[0]),
        .O(read_data[9]));
endmodule

module data_path
   (instruction,
    write_addr3_sel,
    reg_write_data_sel,
    alu_src_b_sel,
    PC_sel,
    alu_result,
    data_memory_read_data,
    reg_read_data2,
    sign_extend_data,
    PC_plus4,
    PC_branch,
    PC_jump,
    hi,
    lo,
    reg_write_addr3,
    reg_write_data,
    alu_src_b,
    PC_next);
  input [31:0]instruction;
  input write_addr3_sel;
  input [1:0]reg_write_data_sel;
  input alu_src_b_sel;
  input [1:0]PC_sel;
  input [31:0]alu_result;
  input [31:0]data_memory_read_data;
  input [31:0]reg_read_data2;
  input [31:0]sign_extend_data;
  input [31:0]PC_plus4;
  input [31:0]PC_branch;
  input [31:0]PC_jump;
  input [31:0]hi;
  input [31:0]lo;
  output [4:0]reg_write_addr3;
  output [31:0]reg_write_data;
  output [31:0]alu_src_b;
  output [31:0]PC_next;

  wire [31:0]PC_branch;
  wire [31:0]PC_jump;
  wire [31:0]PC_next;
  wire [31:0]PC_plus4;
  wire [1:0]PC_sel;
  wire [31:0]alu_result;
  wire [31:0]alu_src_b;
  wire alu_src_b_sel;
  wire [31:0]data_memory_read_data;
  wire [31:0]hi;
  wire [31:0]instruction;
  wire [31:0]lo;
  wire [31:0]reg_read_data2;
  wire [4:0]reg_write_addr3;
  wire [31:0]reg_write_data;
  wire [1:0]reg_write_data_sel;
  wire [31:0]sign_extend_data;
  wire write_addr3_sel;

(* DATA_WIDTH = "32" *) 
   mux4_1 PC_mux
       (.data_in1(PC_plus4),
        .data_in2(PC_branch),
        .data_in3(PC_jump),
        .data_in4(PC_jump),
        .data_out(PC_next),
        .sel(PC_sel));
(* DATA_WIDTH = "32" *) 
   mux2_1__parameterized0 alu_src_b_mux
       (.data_in1(reg_read_data2),
        .data_in2(sign_extend_data),
        .data_out(alu_src_b),
        .sel(alu_src_b_sel));
(* DATA_WIDTH = "32" *) 
   mux4_1__1 reg_write_data_mux
       (.data_in1(alu_result),
        .data_in2(data_memory_read_data),
        .data_in3(hi),
        .data_in4(lo),
        .data_out(reg_write_data),
        .sel(reg_write_data_sel));
(* DATA_WIDTH = "5" *) 
   mux2_1 write_addr3_mux
       (.data_in1(instruction[15:11]),
        .data_in2(instruction[20:16]),
        .data_out(reg_write_addr3),
        .sel(write_addr3_sel));
endmodule

module hi_lo_reg
   (clock,
    write_enable,
    hi_input_data,
    lo_input_data,
    hi_output_data,
    lo_output_data);
  input clock;
  input write_enable;
  input [31:0]hi_input_data;
  input [31:0]lo_input_data;
  output [31:0]hi_output_data;
  output [31:0]lo_output_data;

  wire clock;
  wire [31:0]hi_input_data;
  wire [31:0]hi_output_data;
  wire [31:0]lo_input_data;
  wire [31:0]lo_output_data;
  wire write_enable;

FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][0] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[0]),
        .Q(lo_output_data[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][10] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[10]),
        .Q(lo_output_data[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][11] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[11]),
        .Q(lo_output_data[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][12] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[12]),
        .Q(lo_output_data[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][13] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[13]),
        .Q(lo_output_data[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][14] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[14]),
        .Q(lo_output_data[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][15] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[15]),
        .Q(lo_output_data[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][16] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[16]),
        .Q(lo_output_data[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][17] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[17]),
        .Q(lo_output_data[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][18] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[18]),
        .Q(lo_output_data[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][19] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[19]),
        .Q(lo_output_data[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][1] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[1]),
        .Q(lo_output_data[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][20] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[20]),
        .Q(lo_output_data[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][21] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[21]),
        .Q(lo_output_data[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][22] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[22]),
        .Q(lo_output_data[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][23] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[23]),
        .Q(lo_output_data[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][24] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[24]),
        .Q(lo_output_data[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][25] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[25]),
        .Q(lo_output_data[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][26] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[26]),
        .Q(lo_output_data[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][27] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[27]),
        .Q(lo_output_data[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][28] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[28]),
        .Q(lo_output_data[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][29] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[29]),
        .Q(lo_output_data[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][2] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[2]),
        .Q(lo_output_data[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][30] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[30]),
        .Q(lo_output_data[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][31] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[31]),
        .Q(lo_output_data[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][3] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[3]),
        .Q(lo_output_data[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][4] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[4]),
        .Q(lo_output_data[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][5] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[5]),
        .Q(lo_output_data[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][6] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[6]),
        .Q(lo_output_data[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][7] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[7]),
        .Q(lo_output_data[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][8] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[8]),
        .Q(lo_output_data[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[0][9] 
       (.C(clock),
        .CE(write_enable),
        .D(lo_input_data[9]),
        .Q(lo_output_data[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][0] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[0]),
        .Q(hi_output_data[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][10] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[10]),
        .Q(hi_output_data[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][11] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[11]),
        .Q(hi_output_data[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][12] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[12]),
        .Q(hi_output_data[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][13] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[13]),
        .Q(hi_output_data[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][14] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[14]),
        .Q(hi_output_data[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][15] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[15]),
        .Q(hi_output_data[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][16] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[16]),
        .Q(hi_output_data[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][17] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[17]),
        .Q(hi_output_data[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][18] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[18]),
        .Q(hi_output_data[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][19] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[19]),
        .Q(hi_output_data[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][1] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[1]),
        .Q(hi_output_data[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][20] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[20]),
        .Q(hi_output_data[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][21] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[21]),
        .Q(hi_output_data[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][22] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[22]),
        .Q(hi_output_data[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][23] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[23]),
        .Q(hi_output_data[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][24] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[24]),
        .Q(hi_output_data[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][25] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[25]),
        .Q(hi_output_data[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][26] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[26]),
        .Q(hi_output_data[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][27] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[27]),
        .Q(hi_output_data[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][28] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[28]),
        .Q(hi_output_data[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][29] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[29]),
        .Q(hi_output_data[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][2] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[2]),
        .Q(hi_output_data[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][30] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[30]),
        .Q(hi_output_data[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][31] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[31]),
        .Q(hi_output_data[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][3] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[3]),
        .Q(hi_output_data[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][4] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[4]),
        .Q(hi_output_data[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][5] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[5]),
        .Q(hi_output_data[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][6] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[6]),
        .Q(hi_output_data[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][7] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[7]),
        .Q(hi_output_data[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][8] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[8]),
        .Q(hi_output_data[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \memory_reg[1][9] 
       (.C(clock),
        .CE(write_enable),
        .D(hi_input_data[9]),
        .Q(hi_output_data[9]),
        .R(1'b0));
endmodule

module inst_memory
   (clock,
    load_enable,
    write_addr,
    write_data,
    read_addr,
    instruction);
  input clock;
  input load_enable;
  input [31:0]write_addr;
  input [31:0]write_data;
  input [31:0]read_addr;
  output [31:0]instruction;

  wire clock;
  wire [31:0]instruction;
  wire load_enable;
  wire [31:0]read_addr;
  wire [31:0]write_addr;
  wire [31:0]write_data;
  wire [1:0]NLW_memory0_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory0_reg_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory1_reg_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory2_reg_0_31_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_memory3_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory3_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory3_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory3_reg_0_31_6_7_DOD_UNCONNECTED;

(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_0_31_0_5
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(instruction[1:0]),
        .DOB(instruction[3:2]),
        .DOC(instruction[5:4]),
        .DOD(NLW_memory0_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory0_reg_0_31_6_7
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(instruction[7:6]),
        .DOB(NLW_memory0_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory0_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory0_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_0_31_0_5
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[9:8]),
        .DIB(write_data[11:10]),
        .DIC(write_data[13:12]),
        .DID({1'b0,1'b0}),
        .DOA(instruction[9:8]),
        .DOB(instruction[11:10]),
        .DOC(instruction[13:12]),
        .DOD(NLW_memory1_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory1_reg_0_31_6_7
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[15:14]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(instruction[15:14]),
        .DOB(NLW_memory1_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory1_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory1_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_0_31_0_5
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[17:16]),
        .DIB(write_data[19:18]),
        .DIC(write_data[21:20]),
        .DID({1'b0,1'b0}),
        .DOA(instruction[17:16]),
        .DOB(instruction[19:18]),
        .DOC(instruction[21:20]),
        .DOD(NLW_memory2_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory2_reg_0_31_6_7
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[23:22]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(instruction[23:22]),
        .DOB(NLW_memory2_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory2_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory2_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_0_5
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(instruction[25:24]),
        .DOB(instruction[27:26]),
        .DOC(instruction[29:28]),
        .DOD(NLW_memory3_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory3_reg_0_31_6_7
       (.ADDRA(read_addr[6:2]),
        .ADDRB(read_addr[6:2]),
        .ADDRC(read_addr[6:2]),
        .ADDRD(write_addr[6:2]),
        .DIA(write_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(instruction[31:30]),
        .DOB(NLW_memory3_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory3_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory3_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(load_enable));
endmodule

(* DATA_WIDTH = "5" *) 
module mux2_1
   (sel,
    data_in1,
    data_in2,
    data_out);
  input sel;
  input [4:0]data_in1;
  input [4:0]data_in2;
  output [4:0]data_out;

  wire [4:0]data_in1;
  wire [4:0]data_in2;
  wire [4:0]data_out;
  wire sel;

LUT3 #(
    .INIT(8'hB8)) 
     \data_out[0]_INST_0 
       (.I0(data_in2[0]),
        .I1(sel),
        .I2(data_in1[0]),
        .O(data_out[0]));
LUT3 #(
    .INIT(8'hB8)) 
     \data_out[1]_INST_0 
       (.I0(data_in2[1]),
        .I1(sel),
        .I2(data_in1[1]),
        .O(data_out[1]));
LUT3 #(
    .INIT(8'hB8)) 
     \data_out[2]_INST_0 
       (.I0(data_in2[2]),
        .I1(sel),
        .I2(data_in1[2]),
        .O(data_out[2]));
LUT3 #(
    .INIT(8'hB8)) 
     \data_out[3]_INST_0 
       (.I0(data_in2[3]),
        .I1(sel),
        .I2(data_in1[3]),
        .O(data_out[3]));
LUT3 #(
    .INIT(8'hB8)) 
     \data_out[4]_INST_0 
       (.I0(data_in2[4]),
        .I1(sel),
        .I2(data_in1[4]),
        .O(data_out[4]));
endmodule

(* ORIG_REF_NAME = "mux2_1" *) (* DATA_WIDTH = "32" *) 
module mux2_1__parameterized0
   (sel,
    data_in1,
    data_in2,
    data_out);
  input sel;
  input [31:0]data_in1;
  input [31:0]data_in2;
  output [31:0]data_out;

  wire [31:0]data_in1;
  wire [31:0]data_in2;
  wire [31:0]data_out;
  wire sel;

LUT3 #(
    .INIT(8'hAC)) 
     \data_out[0]_INST_0 
       (.I0(data_in2[0]),
        .I1(data_in1[0]),
        .I2(sel),
        .O(data_out[0]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[10]_INST_0 
       (.I0(data_in2[10]),
        .I1(data_in1[10]),
        .I2(sel),
        .O(data_out[10]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[11]_INST_0 
       (.I0(data_in2[11]),
        .I1(data_in1[11]),
        .I2(sel),
        .O(data_out[11]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[12]_INST_0 
       (.I0(data_in2[12]),
        .I1(data_in1[12]),
        .I2(sel),
        .O(data_out[12]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[13]_INST_0 
       (.I0(data_in2[13]),
        .I1(data_in1[13]),
        .I2(sel),
        .O(data_out[13]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[14]_INST_0 
       (.I0(data_in2[14]),
        .I1(data_in1[14]),
        .I2(sel),
        .O(data_out[14]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[15]_INST_0 
       (.I0(data_in2[15]),
        .I1(data_in1[15]),
        .I2(sel),
        .O(data_out[15]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[16]_INST_0 
       (.I0(data_in2[16]),
        .I1(data_in1[16]),
        .I2(sel),
        .O(data_out[16]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[17]_INST_0 
       (.I0(data_in2[17]),
        .I1(data_in1[17]),
        .I2(sel),
        .O(data_out[17]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[18]_INST_0 
       (.I0(data_in2[18]),
        .I1(data_in1[18]),
        .I2(sel),
        .O(data_out[18]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[19]_INST_0 
       (.I0(data_in2[19]),
        .I1(data_in1[19]),
        .I2(sel),
        .O(data_out[19]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[1]_INST_0 
       (.I0(data_in2[1]),
        .I1(data_in1[1]),
        .I2(sel),
        .O(data_out[1]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[20]_INST_0 
       (.I0(data_in2[20]),
        .I1(data_in1[20]),
        .I2(sel),
        .O(data_out[20]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[21]_INST_0 
       (.I0(data_in2[21]),
        .I1(data_in1[21]),
        .I2(sel),
        .O(data_out[21]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[22]_INST_0 
       (.I0(data_in2[22]),
        .I1(data_in1[22]),
        .I2(sel),
        .O(data_out[22]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[23]_INST_0 
       (.I0(data_in2[23]),
        .I1(data_in1[23]),
        .I2(sel),
        .O(data_out[23]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[24]_INST_0 
       (.I0(data_in2[24]),
        .I1(data_in1[24]),
        .I2(sel),
        .O(data_out[24]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[25]_INST_0 
       (.I0(data_in2[25]),
        .I1(data_in1[25]),
        .I2(sel),
        .O(data_out[25]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[26]_INST_0 
       (.I0(data_in2[26]),
        .I1(data_in1[26]),
        .I2(sel),
        .O(data_out[26]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[27]_INST_0 
       (.I0(data_in2[27]),
        .I1(data_in1[27]),
        .I2(sel),
        .O(data_out[27]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[28]_INST_0 
       (.I0(data_in2[28]),
        .I1(data_in1[28]),
        .I2(sel),
        .O(data_out[28]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[29]_INST_0 
       (.I0(data_in2[29]),
        .I1(data_in1[29]),
        .I2(sel),
        .O(data_out[29]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[2]_INST_0 
       (.I0(data_in2[2]),
        .I1(data_in1[2]),
        .I2(sel),
        .O(data_out[2]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[30]_INST_0 
       (.I0(data_in2[30]),
        .I1(data_in1[30]),
        .I2(sel),
        .O(data_out[30]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[31]_INST_0 
       (.I0(data_in2[31]),
        .I1(data_in1[31]),
        .I2(sel),
        .O(data_out[31]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[3]_INST_0 
       (.I0(data_in2[3]),
        .I1(data_in1[3]),
        .I2(sel),
        .O(data_out[3]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[4]_INST_0 
       (.I0(data_in2[4]),
        .I1(data_in1[4]),
        .I2(sel),
        .O(data_out[4]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[5]_INST_0 
       (.I0(data_in2[5]),
        .I1(data_in1[5]),
        .I2(sel),
        .O(data_out[5]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[6]_INST_0 
       (.I0(data_in2[6]),
        .I1(data_in1[6]),
        .I2(sel),
        .O(data_out[6]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[7]_INST_0 
       (.I0(data_in2[7]),
        .I1(data_in1[7]),
        .I2(sel),
        .O(data_out[7]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[8]_INST_0 
       (.I0(data_in2[8]),
        .I1(data_in1[8]),
        .I2(sel),
        .O(data_out[8]));
LUT3 #(
    .INIT(8'hAC)) 
     \data_out[9]_INST_0 
       (.I0(data_in2[9]),
        .I1(data_in1[9]),
        .I2(sel),
        .O(data_out[9]));
endmodule

(* DATA_WIDTH = "32" *) 
module mux4_1
   (sel,
    data_in1,
    data_in2,
    data_in3,
    data_in4,
    data_out);
  input [1:0]sel;
  input [31:0]data_in1;
  input [31:0]data_in2;
  input [31:0]data_in3;
  input [31:0]data_in4;
  output [31:0]data_out;

  wire [31:0]data_in1;
  wire [31:0]data_in2;
  wire [31:0]data_in3;
  wire [31:0]data_in4;
  wire [31:0]data_out;
  wire [1:0]sel;

LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[0]_INST_0 
       (.I0(data_in4[0]),
        .I1(data_in2[0]),
        .I2(data_in3[0]),
        .I3(sel[1]),
        .I4(data_in1[0]),
        .I5(sel[0]),
        .O(data_out[0]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[10]_INST_0 
       (.I0(data_in4[10]),
        .I1(data_in2[10]),
        .I2(data_in3[10]),
        .I3(sel[1]),
        .I4(data_in1[10]),
        .I5(sel[0]),
        .O(data_out[10]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[11]_INST_0 
       (.I0(data_in4[11]),
        .I1(data_in2[11]),
        .I2(data_in3[11]),
        .I3(sel[1]),
        .I4(data_in1[11]),
        .I5(sel[0]),
        .O(data_out[11]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[12]_INST_0 
       (.I0(data_in4[12]),
        .I1(data_in2[12]),
        .I2(data_in3[12]),
        .I3(sel[1]),
        .I4(data_in1[12]),
        .I5(sel[0]),
        .O(data_out[12]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[13]_INST_0 
       (.I0(data_in4[13]),
        .I1(data_in2[13]),
        .I2(data_in3[13]),
        .I3(sel[1]),
        .I4(data_in1[13]),
        .I5(sel[0]),
        .O(data_out[13]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[14]_INST_0 
       (.I0(data_in4[14]),
        .I1(data_in2[14]),
        .I2(data_in3[14]),
        .I3(sel[1]),
        .I4(data_in1[14]),
        .I5(sel[0]),
        .O(data_out[14]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[15]_INST_0 
       (.I0(data_in4[15]),
        .I1(data_in2[15]),
        .I2(data_in3[15]),
        .I3(sel[1]),
        .I4(data_in1[15]),
        .I5(sel[0]),
        .O(data_out[15]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[16]_INST_0 
       (.I0(data_in4[16]),
        .I1(data_in2[16]),
        .I2(data_in3[16]),
        .I3(sel[1]),
        .I4(data_in1[16]),
        .I5(sel[0]),
        .O(data_out[16]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[17]_INST_0 
       (.I0(data_in4[17]),
        .I1(data_in2[17]),
        .I2(data_in3[17]),
        .I3(sel[1]),
        .I4(data_in1[17]),
        .I5(sel[0]),
        .O(data_out[17]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[18]_INST_0 
       (.I0(data_in4[18]),
        .I1(data_in2[18]),
        .I2(data_in3[18]),
        .I3(sel[1]),
        .I4(data_in1[18]),
        .I5(sel[0]),
        .O(data_out[18]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[19]_INST_0 
       (.I0(data_in4[19]),
        .I1(data_in2[19]),
        .I2(data_in3[19]),
        .I3(sel[1]),
        .I4(data_in1[19]),
        .I5(sel[0]),
        .O(data_out[19]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[1]_INST_0 
       (.I0(data_in4[1]),
        .I1(data_in2[1]),
        .I2(data_in3[1]),
        .I3(sel[1]),
        .I4(data_in1[1]),
        .I5(sel[0]),
        .O(data_out[1]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[20]_INST_0 
       (.I0(data_in4[20]),
        .I1(data_in2[20]),
        .I2(data_in3[20]),
        .I3(sel[1]),
        .I4(data_in1[20]),
        .I5(sel[0]),
        .O(data_out[20]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[21]_INST_0 
       (.I0(data_in4[21]),
        .I1(data_in2[21]),
        .I2(data_in3[21]),
        .I3(sel[1]),
        .I4(data_in1[21]),
        .I5(sel[0]),
        .O(data_out[21]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[22]_INST_0 
       (.I0(data_in4[22]),
        .I1(data_in2[22]),
        .I2(data_in3[22]),
        .I3(sel[1]),
        .I4(data_in1[22]),
        .I5(sel[0]),
        .O(data_out[22]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[23]_INST_0 
       (.I0(data_in4[23]),
        .I1(data_in2[23]),
        .I2(data_in3[23]),
        .I3(sel[1]),
        .I4(data_in1[23]),
        .I5(sel[0]),
        .O(data_out[23]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[24]_INST_0 
       (.I0(data_in4[24]),
        .I1(data_in2[24]),
        .I2(data_in3[24]),
        .I3(sel[1]),
        .I4(data_in1[24]),
        .I5(sel[0]),
        .O(data_out[24]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[25]_INST_0 
       (.I0(data_in4[25]),
        .I1(data_in2[25]),
        .I2(data_in3[25]),
        .I3(sel[1]),
        .I4(data_in1[25]),
        .I5(sel[0]),
        .O(data_out[25]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[26]_INST_0 
       (.I0(data_in4[26]),
        .I1(data_in2[26]),
        .I2(data_in3[26]),
        .I3(sel[1]),
        .I4(data_in1[26]),
        .I5(sel[0]),
        .O(data_out[26]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[27]_INST_0 
       (.I0(data_in4[27]),
        .I1(data_in2[27]),
        .I2(data_in3[27]),
        .I3(sel[1]),
        .I4(data_in1[27]),
        .I5(sel[0]),
        .O(data_out[27]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[28]_INST_0 
       (.I0(data_in4[28]),
        .I1(data_in2[28]),
        .I2(data_in3[28]),
        .I3(sel[1]),
        .I4(data_in1[28]),
        .I5(sel[0]),
        .O(data_out[28]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[29]_INST_0 
       (.I0(data_in4[29]),
        .I1(data_in2[29]),
        .I2(data_in3[29]),
        .I3(sel[1]),
        .I4(data_in1[29]),
        .I5(sel[0]),
        .O(data_out[29]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[2]_INST_0 
       (.I0(data_in4[2]),
        .I1(data_in2[2]),
        .I2(data_in3[2]),
        .I3(sel[1]),
        .I4(data_in1[2]),
        .I5(sel[0]),
        .O(data_out[2]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[30]_INST_0 
       (.I0(data_in4[30]),
        .I1(data_in2[30]),
        .I2(data_in3[30]),
        .I3(sel[1]),
        .I4(data_in1[30]),
        .I5(sel[0]),
        .O(data_out[30]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[31]_INST_0 
       (.I0(data_in4[31]),
        .I1(data_in2[31]),
        .I2(data_in3[31]),
        .I3(sel[1]),
        .I4(data_in1[31]),
        .I5(sel[0]),
        .O(data_out[31]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[3]_INST_0 
       (.I0(data_in4[3]),
        .I1(data_in2[3]),
        .I2(data_in3[3]),
        .I3(sel[1]),
        .I4(data_in1[3]),
        .I5(sel[0]),
        .O(data_out[3]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[4]_INST_0 
       (.I0(data_in4[4]),
        .I1(data_in2[4]),
        .I2(data_in3[4]),
        .I3(sel[1]),
        .I4(data_in1[4]),
        .I5(sel[0]),
        .O(data_out[4]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[5]_INST_0 
       (.I0(data_in4[5]),
        .I1(data_in2[5]),
        .I2(data_in3[5]),
        .I3(sel[1]),
        .I4(data_in1[5]),
        .I5(sel[0]),
        .O(data_out[5]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[6]_INST_0 
       (.I0(data_in4[6]),
        .I1(data_in2[6]),
        .I2(data_in3[6]),
        .I3(sel[1]),
        .I4(data_in1[6]),
        .I5(sel[0]),
        .O(data_out[6]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[7]_INST_0 
       (.I0(data_in4[7]),
        .I1(data_in2[7]),
        .I2(data_in3[7]),
        .I3(sel[1]),
        .I4(data_in1[7]),
        .I5(sel[0]),
        .O(data_out[7]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[8]_INST_0 
       (.I0(data_in4[8]),
        .I1(data_in2[8]),
        .I2(data_in3[8]),
        .I3(sel[1]),
        .I4(data_in1[8]),
        .I5(sel[0]),
        .O(data_out[8]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[9]_INST_0 
       (.I0(data_in4[9]),
        .I1(data_in2[9]),
        .I2(data_in3[9]),
        .I3(sel[1]),
        .I4(data_in1[9]),
        .I5(sel[0]),
        .O(data_out[9]));
endmodule

(* ORIG_REF_NAME = "mux4_1" *) (* DATA_WIDTH = "32" *) 
module mux4_1__1
   (sel,
    data_in1,
    data_in2,
    data_in3,
    data_in4,
    data_out);
  input [1:0]sel;
  input [31:0]data_in1;
  input [31:0]data_in2;
  input [31:0]data_in3;
  input [31:0]data_in4;
  output [31:0]data_out;

  wire [31:0]data_in1;
  wire [31:0]data_in2;
  wire [31:0]data_in3;
  wire [31:0]data_in4;
  wire [31:0]data_out;
  wire [1:0]sel;

LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[0]_INST_0 
       (.I0(data_in4[0]),
        .I1(data_in2[0]),
        .I2(data_in3[0]),
        .I3(sel[1]),
        .I4(data_in1[0]),
        .I5(sel[0]),
        .O(data_out[0]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[10]_INST_0 
       (.I0(data_in4[10]),
        .I1(data_in2[10]),
        .I2(data_in3[10]),
        .I3(sel[1]),
        .I4(data_in1[10]),
        .I5(sel[0]),
        .O(data_out[10]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[11]_INST_0 
       (.I0(data_in4[11]),
        .I1(data_in2[11]),
        .I2(data_in3[11]),
        .I3(sel[1]),
        .I4(data_in1[11]),
        .I5(sel[0]),
        .O(data_out[11]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[12]_INST_0 
       (.I0(data_in4[12]),
        .I1(data_in2[12]),
        .I2(data_in3[12]),
        .I3(sel[1]),
        .I4(data_in1[12]),
        .I5(sel[0]),
        .O(data_out[12]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[13]_INST_0 
       (.I0(data_in4[13]),
        .I1(data_in2[13]),
        .I2(data_in3[13]),
        .I3(sel[1]),
        .I4(data_in1[13]),
        .I5(sel[0]),
        .O(data_out[13]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[14]_INST_0 
       (.I0(data_in4[14]),
        .I1(data_in2[14]),
        .I2(data_in3[14]),
        .I3(sel[1]),
        .I4(data_in1[14]),
        .I5(sel[0]),
        .O(data_out[14]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[15]_INST_0 
       (.I0(data_in4[15]),
        .I1(data_in2[15]),
        .I2(data_in3[15]),
        .I3(sel[1]),
        .I4(data_in1[15]),
        .I5(sel[0]),
        .O(data_out[15]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[16]_INST_0 
       (.I0(data_in4[16]),
        .I1(data_in2[16]),
        .I2(data_in3[16]),
        .I3(sel[1]),
        .I4(data_in1[16]),
        .I5(sel[0]),
        .O(data_out[16]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[17]_INST_0 
       (.I0(data_in4[17]),
        .I1(data_in2[17]),
        .I2(data_in3[17]),
        .I3(sel[1]),
        .I4(data_in1[17]),
        .I5(sel[0]),
        .O(data_out[17]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[18]_INST_0 
       (.I0(data_in4[18]),
        .I1(data_in2[18]),
        .I2(data_in3[18]),
        .I3(sel[1]),
        .I4(data_in1[18]),
        .I5(sel[0]),
        .O(data_out[18]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[19]_INST_0 
       (.I0(data_in4[19]),
        .I1(data_in2[19]),
        .I2(data_in3[19]),
        .I3(sel[1]),
        .I4(data_in1[19]),
        .I5(sel[0]),
        .O(data_out[19]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[1]_INST_0 
       (.I0(data_in4[1]),
        .I1(data_in2[1]),
        .I2(data_in3[1]),
        .I3(sel[1]),
        .I4(data_in1[1]),
        .I5(sel[0]),
        .O(data_out[1]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[20]_INST_0 
       (.I0(data_in4[20]),
        .I1(data_in2[20]),
        .I2(data_in3[20]),
        .I3(sel[1]),
        .I4(data_in1[20]),
        .I5(sel[0]),
        .O(data_out[20]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[21]_INST_0 
       (.I0(data_in4[21]),
        .I1(data_in2[21]),
        .I2(data_in3[21]),
        .I3(sel[1]),
        .I4(data_in1[21]),
        .I5(sel[0]),
        .O(data_out[21]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[22]_INST_0 
       (.I0(data_in4[22]),
        .I1(data_in2[22]),
        .I2(data_in3[22]),
        .I3(sel[1]),
        .I4(data_in1[22]),
        .I5(sel[0]),
        .O(data_out[22]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[23]_INST_0 
       (.I0(data_in4[23]),
        .I1(data_in2[23]),
        .I2(data_in3[23]),
        .I3(sel[1]),
        .I4(data_in1[23]),
        .I5(sel[0]),
        .O(data_out[23]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[24]_INST_0 
       (.I0(data_in4[24]),
        .I1(data_in2[24]),
        .I2(data_in3[24]),
        .I3(sel[1]),
        .I4(data_in1[24]),
        .I5(sel[0]),
        .O(data_out[24]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[25]_INST_0 
       (.I0(data_in4[25]),
        .I1(data_in2[25]),
        .I2(data_in3[25]),
        .I3(sel[1]),
        .I4(data_in1[25]),
        .I5(sel[0]),
        .O(data_out[25]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[26]_INST_0 
       (.I0(data_in4[26]),
        .I1(data_in2[26]),
        .I2(data_in3[26]),
        .I3(sel[1]),
        .I4(data_in1[26]),
        .I5(sel[0]),
        .O(data_out[26]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[27]_INST_0 
       (.I0(data_in4[27]),
        .I1(data_in2[27]),
        .I2(data_in3[27]),
        .I3(sel[1]),
        .I4(data_in1[27]),
        .I5(sel[0]),
        .O(data_out[27]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[28]_INST_0 
       (.I0(data_in4[28]),
        .I1(data_in2[28]),
        .I2(data_in3[28]),
        .I3(sel[1]),
        .I4(data_in1[28]),
        .I5(sel[0]),
        .O(data_out[28]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[29]_INST_0 
       (.I0(data_in4[29]),
        .I1(data_in2[29]),
        .I2(data_in3[29]),
        .I3(sel[1]),
        .I4(data_in1[29]),
        .I5(sel[0]),
        .O(data_out[29]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[2]_INST_0 
       (.I0(data_in4[2]),
        .I1(data_in2[2]),
        .I2(data_in3[2]),
        .I3(sel[1]),
        .I4(data_in1[2]),
        .I5(sel[0]),
        .O(data_out[2]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[30]_INST_0 
       (.I0(data_in4[30]),
        .I1(data_in2[30]),
        .I2(data_in3[30]),
        .I3(sel[1]),
        .I4(data_in1[30]),
        .I5(sel[0]),
        .O(data_out[30]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[31]_INST_0 
       (.I0(data_in4[31]),
        .I1(data_in2[31]),
        .I2(data_in3[31]),
        .I3(sel[1]),
        .I4(data_in1[31]),
        .I5(sel[0]),
        .O(data_out[31]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[3]_INST_0 
       (.I0(data_in4[3]),
        .I1(data_in2[3]),
        .I2(data_in3[3]),
        .I3(sel[1]),
        .I4(data_in1[3]),
        .I5(sel[0]),
        .O(data_out[3]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[4]_INST_0 
       (.I0(data_in4[4]),
        .I1(data_in2[4]),
        .I2(data_in3[4]),
        .I3(sel[1]),
        .I4(data_in1[4]),
        .I5(sel[0]),
        .O(data_out[4]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[5]_INST_0 
       (.I0(data_in4[5]),
        .I1(data_in2[5]),
        .I2(data_in3[5]),
        .I3(sel[1]),
        .I4(data_in1[5]),
        .I5(sel[0]),
        .O(data_out[5]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[6]_INST_0 
       (.I0(data_in4[6]),
        .I1(data_in2[6]),
        .I2(data_in3[6]),
        .I3(sel[1]),
        .I4(data_in1[6]),
        .I5(sel[0]),
        .O(data_out[6]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[7]_INST_0 
       (.I0(data_in4[7]),
        .I1(data_in2[7]),
        .I2(data_in3[7]),
        .I3(sel[1]),
        .I4(data_in1[7]),
        .I5(sel[0]),
        .O(data_out[7]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[8]_INST_0 
       (.I0(data_in4[8]),
        .I1(data_in2[8]),
        .I2(data_in3[8]),
        .I3(sel[1]),
        .I4(data_in1[8]),
        .I5(sel[0]),
        .O(data_out[8]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \data_out[9]_INST_0 
       (.I0(data_in4[9]),
        .I1(data_in2[9]),
        .I2(data_in3[9]),
        .I3(sel[1]),
        .I4(data_in1[9]),
        .I5(sel[0]),
        .O(data_out[9]));
endmodule

module reg_file
   (clock,
    read_addr1,
    read_addr2,
    write_addr3,
    write_data,
    write_enable,
    read_data1,
    read_data2);
  input clock;
  input [4:0]read_addr1;
  input [4:0]read_addr2;
  input [4:0]write_addr3;
  input [31:0]write_data;
  input write_enable;
  output [31:0]read_data1;
  output [31:0]read_data2;

  wire clock;
  wire [4:0]read_addr1;
  wire [4:0]read_addr2;
  wire [31:0]read_data1;
  wire [31:0]read_data2;
  wire [31:0]read_data21;
  wire [31:0]read_data210_out;
  wire [4:0]write_addr3;
  wire [31:0]write_data;
  wire write_enable;
  wire [1:0]NLW_memory_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_r2_0_31_6_11_DOD_UNCONNECTED;

(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_0_5
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[1:0]),
        .DOB(read_data21[3:2]),
        .DOC(read_data21[5:4]),
        .DOD(NLW_memory_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_12_17
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[13:12]),
        .DOB(read_data21[15:14]),
        .DOC(read_data21[17:16]),
        .DOD(NLW_memory_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_18_23
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[19:18]),
        .DOB(read_data21[21:20]),
        .DOC(read_data21[23:22]),
        .DOD(NLW_memory_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_24_29
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[25:24]),
        .DOB(read_data21[27:26]),
        .DOC(read_data21[29:28]),
        .DOD(NLW_memory_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_30_31
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[31:30]),
        .DOB(NLW_memory_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r1_0_31_6_11
       (.ADDRA(read_addr1),
        .ADDRB(read_addr1),
        .ADDRC(read_addr1),
        .ADDRD(write_addr3),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data21[7:6]),
        .DOB(read_data21[9:8]),
        .DOC(read_data21[11:10]),
        .DOD(NLW_memory_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_0_5
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[1:0]),
        .DOB(read_data210_out[3:2]),
        .DOC(read_data210_out[5:4]),
        .DOD(NLW_memory_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_12_17
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[13:12]),
        .DOB(read_data210_out[15:14]),
        .DOC(read_data210_out[17:16]),
        .DOD(NLW_memory_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_18_23
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[19:18]),
        .DOB(read_data210_out[21:20]),
        .DOC(read_data210_out[23:22]),
        .DOD(NLW_memory_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_24_29
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[25:24]),
        .DOB(read_data210_out[27:26]),
        .DOC(read_data210_out[29:28]),
        .DOD(NLW_memory_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_30_31
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[31:30]),
        .DOB(NLW_memory_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
(* XILINX_REPORT_XFORM = "RAM32M" *) 
   RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
     memory_reg_r2_0_31_6_11
       (.ADDRA(read_addr2),
        .ADDRB(read_addr2),
        .ADDRC(read_addr2),
        .ADDRD(write_addr3),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data210_out[7:6]),
        .DOB(read_data210_out[9:8]),
        .DOC(read_data210_out[11:10]),
        .DOD(NLW_memory_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(write_enable));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[0]_INST_0 
       (.I0(read_data21[0]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[0]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[10]_INST_0 
       (.I0(read_data21[10]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[10]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[11]_INST_0 
       (.I0(read_data21[11]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[11]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[12]_INST_0 
       (.I0(read_data21[12]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[12]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[13]_INST_0 
       (.I0(read_data21[13]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[13]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[14]_INST_0 
       (.I0(read_data21[14]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[14]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[15]_INST_0 
       (.I0(read_data21[15]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[15]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[16]_INST_0 
       (.I0(read_data21[16]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[16]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[17]_INST_0 
       (.I0(read_data21[17]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[17]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[18]_INST_0 
       (.I0(read_data21[18]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[18]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[19]_INST_0 
       (.I0(read_data21[19]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[19]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[1]_INST_0 
       (.I0(read_data21[1]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[1]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[20]_INST_0 
       (.I0(read_data21[20]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[20]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[21]_INST_0 
       (.I0(read_data21[21]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[21]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[22]_INST_0 
       (.I0(read_data21[22]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[22]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[23]_INST_0 
       (.I0(read_data21[23]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[23]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[24]_INST_0 
       (.I0(read_data21[24]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[24]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[25]_INST_0 
       (.I0(read_data21[25]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[25]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[26]_INST_0 
       (.I0(read_data21[26]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[26]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[27]_INST_0 
       (.I0(read_data21[27]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[27]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[28]_INST_0 
       (.I0(read_data21[28]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[28]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[29]_INST_0 
       (.I0(read_data21[29]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[29]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[2]_INST_0 
       (.I0(read_data21[2]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[2]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[30]_INST_0 
       (.I0(read_data21[30]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[30]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[31]_INST_0 
       (.I0(read_data21[31]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[31]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[3]_INST_0 
       (.I0(read_data21[3]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[3]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[4]_INST_0 
       (.I0(read_data21[4]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[4]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[5]_INST_0 
       (.I0(read_data21[5]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[5]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[6]_INST_0 
       (.I0(read_data21[6]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[6]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[7]_INST_0 
       (.I0(read_data21[7]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[7]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[8]_INST_0 
       (.I0(read_data21[8]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[8]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data1[9]_INST_0 
       (.I0(read_data21[9]),
        .I1(read_addr1[2]),
        .I2(read_addr1[1]),
        .I3(read_addr1[0]),
        .I4(read_addr1[4]),
        .I5(read_addr1[3]),
        .O(read_data1[9]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[0]_INST_0 
       (.I0(read_data210_out[0]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[0]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[10]_INST_0 
       (.I0(read_data210_out[10]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[10]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[11]_INST_0 
       (.I0(read_data210_out[11]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[11]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[12]_INST_0 
       (.I0(read_data210_out[12]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[12]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[13]_INST_0 
       (.I0(read_data210_out[13]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[13]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[14]_INST_0 
       (.I0(read_data210_out[14]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[14]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[15]_INST_0 
       (.I0(read_data210_out[15]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[15]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[16]_INST_0 
       (.I0(read_data210_out[16]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[16]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[17]_INST_0 
       (.I0(read_data210_out[17]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[17]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[18]_INST_0 
       (.I0(read_data210_out[18]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[18]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[19]_INST_0 
       (.I0(read_data210_out[19]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[19]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[1]_INST_0 
       (.I0(read_data210_out[1]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[1]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[20]_INST_0 
       (.I0(read_data210_out[20]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[20]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[21]_INST_0 
       (.I0(read_data210_out[21]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[21]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[22]_INST_0 
       (.I0(read_data210_out[22]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[22]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[23]_INST_0 
       (.I0(read_data210_out[23]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[23]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[24]_INST_0 
       (.I0(read_data210_out[24]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[24]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[25]_INST_0 
       (.I0(read_data210_out[25]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[25]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[26]_INST_0 
       (.I0(read_data210_out[26]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[26]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[27]_INST_0 
       (.I0(read_data210_out[27]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[27]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[28]_INST_0 
       (.I0(read_data210_out[28]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[28]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[29]_INST_0 
       (.I0(read_data210_out[29]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[29]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[2]_INST_0 
       (.I0(read_data210_out[2]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[2]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[30]_INST_0 
       (.I0(read_data210_out[30]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[30]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[31]_INST_0 
       (.I0(read_data210_out[31]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[31]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[3]_INST_0 
       (.I0(read_data210_out[3]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[3]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[4]_INST_0 
       (.I0(read_data210_out[4]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[4]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[5]_INST_0 
       (.I0(read_data210_out[5]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[5]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[6]_INST_0 
       (.I0(read_data210_out[6]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[6]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[7]_INST_0 
       (.I0(read_data210_out[7]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[7]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[8]_INST_0 
       (.I0(read_data210_out[8]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[8]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \read_data2[9]_INST_0 
       (.I0(read_data210_out[9]),
        .I1(read_addr2[2]),
        .I2(read_addr2[1]),
        .I3(read_addr2[0]),
        .I4(read_addr2[4]),
        .I5(read_addr2[3]),
        .O(read_data2[9]));
endmodule

(* INPUT_WIDTH = "16" *) (* OUTPUT_WIDTH = "32" *) (* x = "16" *) 
module sign_extend
   (data_in,
    data_out);
  input [15:0]data_in;
  output [31:0]data_out;

  wire [15:0]data_in;

  assign data_out[31] = data_in[15];
  assign data_out[30] = data_in[15];
  assign data_out[29] = data_in[15];
  assign data_out[28] = data_in[15];
  assign data_out[27] = data_in[15];
  assign data_out[26] = data_in[15];
  assign data_out[25] = data_in[15];
  assign data_out[24] = data_in[15];
  assign data_out[23] = data_in[15];
  assign data_out[22] = data_in[15];
  assign data_out[21] = data_in[15];
  assign data_out[20] = data_in[15];
  assign data_out[19] = data_in[15];
  assign data_out[18] = data_in[15];
  assign data_out[17] = data_in[15];
  assign data_out[16] = data_in[15];
  assign data_out[15:0] = data_in;
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
