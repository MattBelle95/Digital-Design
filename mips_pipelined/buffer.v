`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2017 03:59:41 PM
// Design Name: 
// Module Name: buffer
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


module buffer
   #(parameter
     SIZE = 32
    )
    (
     input                   clock,enable,clear,
     input      [(SIZE-1):0] d,
     output reg [(SIZE-1):0] q
    );
    
    always @ (posedge clock) begin
        if (clear) q <= 0;
        else if (enable) q <= d;
    end
    
endmodule
