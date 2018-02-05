`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: write_back
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


module write_back
    (
     input  [1 :0] reg_write_data_sel_w,
     input  [31:0] data_mem_read_data_w,alu_result_hi_w,alu_result_lo_w,
     input  [4 :0] reg_file_write_addr_w,
     output [31:0] reg_file_write_data_w
    );
    
    
    
    mux4_1 #(32) reg_write_data_mux (reg_write_data_sel_w,alu_result_lo_w,data_mem_read_data_w,
                                     alu_result_hi_w,32'b0,reg_file_write_data_w);
    
    
    
endmodule
