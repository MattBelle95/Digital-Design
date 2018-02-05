`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 09:39:55 PM
// Design Name: 
// Module Name: mux
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


module mux2_1
   #(parameter
     DATA_WIDTH = 2
    )
    (
     input                     sel,
     input      [(DATA_WIDTH-1):0] data_in1,data_in2,
     output reg [(DATA_WIDTH-1):0] data_out
    );
    
    always @ (*) begin
        casex(sel)
            0 : begin
                data_out = data_in1;
            end
            1 : begin
                data_out = data_in2;
            end
        endcase
    end
    
endmodule
