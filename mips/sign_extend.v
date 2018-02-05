`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 12:38:56 AM
// Design Name: 
// Module Name: sign_extend
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


module sign_extend
   #(parameter
     INPUT_WIDTH = 16,
     OUTPUT_WIDTH = 32
    )
    (
     input      [INPUT_WIDTH-1:0]  data_in,
     output reg [OUTPUT_WIDTH-1:0] data_out
    );
    
    localparam x = OUTPUT_WIDTH - INPUT_WIDTH;
    reg [x-1:0]y;
    
    always @ (*) begin
        if (data_in[INPUT_WIDTH-1] == 1) begin
            y = -1;
        end /*if*/
        else begin
            y = 0;
        end /*else*/
        data_out[OUTPUT_WIDTH-1:0] = {y,data_in};
    end /*always*/
    
endmodule
