`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2017 10:33:14 PM
// Design Name: 
// Module Name: hi_lo_reg
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


module hi_lo_reg
    (
     input              clock,write_enable,
     input       [31:0] hi_input_data ,lo_input_data,
     output  reg [31:0] hi_output_data,lo_output_data
    );
    
    reg [31:0]memory[1:0];
    
    always @ (posedge clock) begin
        if (write_enable) begin
            memory[1] <= hi_input_data;
            memory[0] <= lo_input_data;
        end
    end /*always*/
    
    always @ (*) begin
        hi_output_data = memory[1];
        lo_output_data = memory[0];
    end /*always*/
    
endmodule
