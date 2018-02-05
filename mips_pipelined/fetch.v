`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: fetch
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


module fetch
    (
     input         clock_f,
                   inst_mem_load_enable_f,
     input  [31:0] inst_mem_write_addr_f,inst_mem_write_data_f,
     
     input         pc_reset_f,pc_enable_f,
     input  [1 :0] pc_sel_f,
     input  [31:0] pc_branch_f,pc_jump_f,
                   
     output [31:0] inst_mem_inst_f,pc_plus4_f
    );
    
    wire        clock,inst_mem_load_enable;
    wire [31:0] inst_mem_write_addr,inst_mem_write_data,
                inst_mem_read_addr,inst_mem_inst;
    
    wire        pc_reset,pc_enable;
    wire [1 :0] pc_sel;
    wire [31:0] pc_current,pc_plus4,pc_branch,pc_jump,pc_next;
    
    inst_memory mips_inst_mem(clock,inst_mem_load_enable,inst_mem_write_addr,inst_mem_write_data,
                              inst_mem_read_addr,inst_mem_inst);
    
    PC_unit mips_pc_unit(clock,pc_reset,pc_enable,pc_next,pc_plus4,pc_current);
    
    mux4_1 #(32) PC_mux(pc_sel,pc_plus4,pc_branch,pc_jump,pc_jump,pc_next);
        
    assign clock = clock_f;
    assign inst_mem_load_enable = inst_mem_load_enable_f;
    assign inst_mem_write_addr = inst_mem_write_addr_f;
    assign inst_mem_write_data = inst_mem_write_data_f;
    assign inst_mem_read_addr = pc_current;
    assign inst_mem_inst_f = inst_mem_inst;
    
    assign pc_reset = pc_reset_f;
    assign pc_enable = pc_enable_f;
    assign pc_sel = pc_sel_f;
    assign pc_branch = pc_branch_f;
    assign pc_jump = pc_jump_f;
    assign pc_plus4_f = pc_plus4;
    
//        for simulation only
//        assign clock_f = 0;
//        assign inst_mem_load_enable_f = 0;
//        assign inst_mem_write_addr_f = 0;
//        assign inst_mem_write_data_f = 32'b00000011111000001100100000000000;
//        assign pc_reset_f = 1;
//        assign pc_enable_f = 0;
//        assign pc_branch_f = 8;
//        assign pc_jump_f = 12;
//        assign pc_sel_f = 0;
    
endmodule
