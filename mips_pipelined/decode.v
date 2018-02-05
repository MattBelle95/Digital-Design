`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: decode
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


module decode
    (
     input         clock_d,
     input  [1 :0] sel_a_d,sel_b_d,
     input  [31:0] inst_mem_inst_d,pc_plus4_d,alu_result_lo_m_d,alu_result_lo_e_d,
     input  [4 :0] reg_file_write_addr3_d,
     input  [31:0] reg_file_write_data_d,
     input         reg_file_write_enable_d,
     input  [31:0] reg_file_write_data_w_d,
     output        equal_d,
     output [31:0] read_data1_d,read_data2_d,
     output [4 :0] rs_d,rt_d,rd_d,
     output [31:0] sign_extend_data_out_d,pc_branch_d,pc_jump_d
    );
    
    wire        clock;
    wire [4 :0] reg_file_read_addr1,reg_file_read_addr2,reg_file_write_addr3;
    wire [31:0] reg_file_write_data;
    wire        reg_file_write_enable;
    wire [31:0] reg_file_read_data1,reg_file_read_data2;
    
    wire [15:0] sign_extend_data_in;
    wire [31:0] sign_extend_data_out;
    
    wire [1 :0]  sel_a,sel_b;
    wire [31:0] alu_result_lo_m,alu_result_lo_e,reg_file_write_data_w,read_data1,read_data2;
    
    reg_file mips_reg_file(clock,reg_file_read_addr1,reg_file_read_addr2,
                           reg_file_write_addr3,reg_file_write_data,reg_file_write_enable,
                           reg_file_read_data1,reg_file_read_data2);
                           
    sign_extend mips_sign_extend(sign_extend_data_in,sign_extend_data_out);
    
    mux4_1 #(32) forward_mux_a(sel_a,reg_file_read_data1,alu_result_lo_e,alu_result_lo_m,32'b0,read_data1);
    mux4_1 #(32) forward_mux_b(sel_b,reg_file_read_data2,alu_result_lo_e,alu_result_lo_m,32'b0,read_data2);
    
    assign clock = clock_d;
    assign reg_file_read_addr1 = inst_mem_inst_d[25:21];
    assign reg_file_read_addr2 = inst_mem_inst_d[20:16];
    assign reg_file_write_addr3 = reg_file_write_addr3_d;
    assign reg_file_write_data = reg_file_write_data_d;
    assign reg_file_write_enable = reg_file_write_enable_d;
    
    assign sign_extend_data_in = inst_mem_inst_d[15:0];
    assign sign_extend_data_out_d = sign_extend_data_out;
    
    assign sel_a = sel_a_d;
    assign sel_b = sel_b_d;
    assign alu_result_lo_m = alu_result_lo_m_d;
    assign alu_result_lo_e = alu_result_lo_e_d;
    assign reg_file_write_data_w = reg_file_write_data_w_d;
    assign read_data1_d = read_data1;
    assign read_data2_d = read_data2;
    
    assign equal_d = (read_data1 == read_data2)? 1 : 0;
    assign pc_branch_d = pc_plus4_d + {sign_extend_data_out[29:0],2'b00};
    assign pc_jump_d = {pc_plus4_d[31:28],inst_mem_inst_d[25:0],2'b00};
    assign rs_d = inst_mem_inst_d[25:21];
    assign rt_d = inst_mem_inst_d[20:16];
    assign rd_d = inst_mem_inst_d[15:11];
    
//        for simulation only
//        assign clock_d = 0;
//        assign inst_mem_inst_d = 32'b00000011111000001100100000000000;
//        assign pc_plus4_d = 32'b100;
//        assign reg_file_write_addr3_d = 5'b00001;
//        assign reg_file_write_data_d = 32'b1011;
//        assign reg_file_write_enable_d = 1'b0;
//        assign sel_a_d = 0;
//        assign sel_b_d = 0;
//        assign alu_result_lo_d = 32'b1011;

    
endmodule
