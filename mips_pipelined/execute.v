`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: execute
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


module execute
    (
     input  [31:0] read_data1_e,read_data2_e,
     input  [5 :0] alu_control_e,
     input         alu_src_b_sel_e,
     input  [4 :0] rs_e,rt_e,rd_e,
     input  [4 :0] alu_shamt_e,
     input         reg_file_write_addr_sel_e,
     input  [31:0] sign_extend_data_out_e,
     input  [1 :0] forward_a_sel_e,forward_b_sel_e,
     input  [31:0] result_w_e,alu_result_m_e,data_mem_read_data_m_e,
     output [4 :0] reg_file_write_addr_e,
     output [31:0] alu_result_hi_e,alu_result_lo_e,write_data2_e,
     output        alu_zero_e,alu_overflow_e
    );
    
    wire [5 :0] alu_control;
    wire [31:0] alu_src_a,alu_src_b;
    wire [4 :0] alu_shamt;
    wire [31:0] alu_result_hi,alu_result_lo;
    wire        alu_zero,alu_overflow;
    
    wire        reg_file_write_addr_sel;
    wire [4 :0] rt,rd,reg_file_write_addr;
    wire        alu_src_b_sel;
    wire [31:0] read_data2,sign_extend_data_out;
    wire [1 :0] forward_a_sel,forward_b_sel;
    wire [31:0] read_data1_d,read_data2_d,result_w,alu_result_m,data_mem_read_data_m,write_data2;
    
    ALU mips_alu(alu_control,alu_src_a,alu_src_b,alu_shamt,
                 alu_result_hi,alu_result_lo,alu_zero,alu_overflow);
    
    mux2_1 #(5)  reg_file_write_addr_mux(reg_file_write_addr_sel,rd,rt,reg_file_write_addr);
    mux2_1 #(32) alu_src_b_mux(alu_src_b_sel,write_data2,sign_extend_data_out,alu_src_b);
    mux4_1 #(32) forward_a_mux(forward_a_sel,read_data1_d,result_w,alu_result_m,data_mem_read_data_m,alu_src_a);
    mux4_1 #(32) forward_b_mux(forward_b_sel,read_data2_d,result_w,alu_result_m,data_mem_read_data_m,write_data2);
                     
    assign alu_control = alu_control_e;
    assign alu_shamt = alu_shamt_e;
    assign alu_result_hi_e = alu_result_hi;
    assign alu_result_lo_e = alu_result_lo;
    assign alu_zero_e = alu_zero;
    assign alu_overflow_e = alu_overflow;
    
    assign reg_file_write_addr_sel = reg_file_write_addr_sel_e;
    assign rt = rt_e;
    assign rd = rd_e;
    assign reg_file_write_addr_e = reg_file_write_addr;
    assign alu_src_b_sel = alu_src_b_sel_e;
    assign sign_extend_data_out = sign_extend_data_out_e;
    assign forward_a_sel = forward_a_sel_e;
    assign forward_b_sel = forward_b_sel_e;
    assign read_data1_d = read_data1_e;
    assign read_data2_d = read_data2_e;
    assign result_w = result_w_e;
    assign alu_result_m = alu_result_m_e;
    assign data_mem_read_data_m = data_mem_read_data_m_e;
    assign write_data2_e = write_data2;
    
//    for simulation only    
//    assign read_data1_e = 32'b11111111;
//    assign read_data2_e = 32'b10101010;
//    assign alu_control_e = 6'b100000;
//    assign alu_src_b_sel_e = 0;
//    assign {rs_e,rt_e,rd_e} = {5'b00,5'b01,5'b10};
//    assign alu_shamt_e = 0;
//    assign reg_file_write_addr_sel_e = 0;
//    assign sign_extend_data_out_e = 32'b1111111111110000001111;
//    assign {forward_a_sel_e,forward_b_sel_e} = {2'b00,2'b00};
//    assign result_w_e = 32'b11011011;
//    assign alu_result_m_e = 32'b10010011;
    
endmodule
