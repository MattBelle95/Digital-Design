`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 09:37:48 PM
// Design Name: 
// Module Name: data_path
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_path
    (
     input  [31:0]  instruction,
                    /*31 30 29 28 27 26 | 25 24 23 22 21 | 20 19 18 17 16 | 15 14 13 12 11 | 10 9 8 7 6 | 5 4 3 2 1 0*/
                    /*[     opcode     ]|[      rs      ]|[      rt      ]|[      rd      ]|[  shamt   ]|[   funct   ] **R-TYPE*/
                    /*[     opcode     ]|[      rs      ]|[      rt      ]|[                  imm                    ] **I-TYPE*/
                    /*[     opcode     ]|[                               addr                                        ] **J-TYPE*/
                    
     input          /*read_addr1_sel,read_addr2_sel,*/
                    write_addr3_sel,  /*3 controls to select ddresses to register file*/
     input [1:0]    reg_write_data_sel,                             /*register file write_data control*/
     input          alu_src_b_sel,                                  /*select src_b to ALU*/
     
     input  [1 :0]  PC_sel,                                         /*select next PC value*/
     
     input  [31:0]  alu_result,                                     /*data coming from ALU*/
                    data_memory_read_data,                          /*data coming from data memory*/
                    reg_read_data2,                                 /*data coming from register file read port 2*/
                    sign_extend_data,                               /*data coming from sign extension unit*/
                    PC_plus4,PC_branch,PC_jump,                     /*3 possible PC values to choose from*/
                    hi,lo,                                          /*hi and lo reading from hi-lo register*/
                    
     output [4 :0]  /*reg_read_addr1,reg_read_addr2,*/reg_write_addr3,  /*register file addresse*/
     
     output [31:0]  reg_write_data,                                 /*register file write_data*/
                    alu_src_b,                                      /*ALU src_b data*/
                    PC_next                                         /*next value of PC*/
    );
    
    /*multiplexers instansiation*/
    
//    mux2_1 #(5) read_addr1_mux  (read_addr1_sel ,instruction[25:21],5'b00000           ,reg_read_addr1);
//    mux2_1 #(5) read_addr2_mux  (read_addr2_sel ,instruction[20:16],5'b00000           ,reg_read_addr2);
    mux2_1 #(5) write_addr3_mux (write_addr3_sel,instruction[15:11],instruction[20:16],reg_write_addr3);
    
    mux4_1 #(32) reg_write_data_mux (reg_write_data_sel,alu_result,data_memory_read_data,hi,lo,reg_write_data);
    
    mux2_1 #(32) alu_src_b_mux (alu_src_b_sel,reg_read_data2,sign_extend_data,alu_src_b);
    
    mux4_1 #(32) PC_mux (PC_sel,PC_plus4,PC_branch,PC_jump,PC_jump,PC_next);
    
endmodule
