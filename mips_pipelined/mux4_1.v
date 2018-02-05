`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2017 11:49:20 AM
// Design Name: 
// Module Name: mux4_1
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


module mux4_1
   #(parameter
     DATA_WIDTH = 2
    )
    (
     input      [1             :0] sel,
     input      [(DATA_WIDTH-1):0] data_in1,data_in2,data_in3,data_in4,
     output reg [(DATA_WIDTH-1):0] data_out
    );
    
    always @ (*) begin
        case (sel)
            0 : begin
                data_out = data_in1;
            end
            1 : begin
                data_out = data_in2;
            end
            2 : begin
                data_out = data_in3;
            end
            3 : begin
                data_out = data_in4;
            end
        endcase
    end /*always*/
    
endmodule
