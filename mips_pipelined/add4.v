`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2017 10:32:21 AM
// Design Name: 
// Module Name: add4
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


module add4
   #(parameter SIZE = 31
    )
    (
     input  [SIZE-1:0] PC,
     output [SIZE-1:0] PC_plus4
    );
    
    assign PC_plus4 = PC + 4;
    
endmodule
