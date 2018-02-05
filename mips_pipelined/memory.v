`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: memory
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


module memory
    (
     input         clock_m,
     input  [4 :0] reg_file_write_addr_m,
     input  [31:0] alu_result_hi_m,alu_result_lo_m,
     input         data_mem_write_enable_m,
     input  [31:0] data_mem_write_data_m,
     output [31:0] data_mem_read_data_m
    );
    
    wire        clock,data_mem_write_enable;
    wire [31:0] data_mem_addr,data_mem_write_data,data_mem_read_data;
    
    data_memory mips_data_mem(clock,data_mem_write_enable,data_mem_addr,data_mem_write_data,data_mem_read_data);
    
    assign clock = clock_m;
    assign data_mem_write_enable = data_mem_write_enable_m;
    assign data_mem_addr = alu_result_lo_m;
    assign data_mem_write_data = data_mem_write_data_m;
    assign data_mem_read_data_m = data_mem_read_data;
    
endmodule
