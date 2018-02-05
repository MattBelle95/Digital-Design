`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 10:29:53 PM
// Design Name: 
// Module Name: PC_unit
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


module PC_unit
    (
     input             clock,reset,
     input      [31:0] PC_next,
     output     [31:0] PC_plus4,
     output reg [31:0] PC_current
    );
    
    add4 #(32) PC_Plus4_alu(PC_current,PC_plus4);
    
    always @ (posedge clock) begin
        if (reset) PC_current <= 0;
        else begin
            PC_current <= PC_next;
        end
    end
    
endmodule
