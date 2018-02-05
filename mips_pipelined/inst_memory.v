`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2017 10:06:18 PM
// Design Name: 
// Module Name: inst_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: The intruction memory reads current instruction, the read address in connected to PC
// 
//////////////////////////////////////////////////////////////////////////////////


module inst_memory
    (   
     input                 clock,load_enable,
     input      [31:0]     write_addr,
     input      [31:0]     write_data,       //these inputs are used for loading a program
     
     input      [31:0]     read_addr,        //the address is connected to PC
     output reg [31:0]     instruction
    );
    
    wire [31:0]read_addr_eff,write_addr_eff;
    reg  [31:0]memory[31:0];
    assign read_addr_eff  = {2'b00, read_addr[31:2]};
    assign write_addr_eff = {2'b00,write_addr[31:2]};
    
//    ram_1port #(8,32,5) memory3 (clock,read_addr_eff[4:0],write_addr_eff[4:0],write_data[31:24],load_enable,instruction[31:24]);
//    ram_1port #(8,32,5) memory2 (clock,read_addr_eff[4:0],write_addr_eff[4:0],write_data[23:16],load_enable,instruction[23:16]);
//    ram_1port #(8,32,5) memory1 (clock,read_addr_eff[4:0],write_addr_eff[4:0],write_data[15: 8],load_enable,instruction[15: 8]);
//    ram_1port #(8,32,5) memory0 (clock,read_addr_eff[4:0],write_addr_eff[4:0],write_data[7 : 0],load_enable,instruction[7 : 0]);
    
    always @ (*) begin
        instruction = memory[read_addr_eff];
    end
    
    always @ (posedge clock) begin
        if (load_enable) memory[write_addr_eff] <= write_data;
    end
    
    //for simulation only
    initial begin
//        memory[0] = 32'b00000000000000000000000000111111;
//        memory[1] = 32'b00100000000000010000000000001010;
//        memory[2] = 32'b00100000000000100000000000001011;
//        memory[3] = 32'b00000000000000000000000000111111;
//        memory[4] = 32'b00010000010000010000000000000010;
//        memory[5] = 32'b00100000000000100000000000001010;
//        memory[6] = 32'b00001000000000000000000000000011;
//        memory[7] = 32'b00000000001000100001100000100000;
//        memory[8] = 32'b00000000000000000000000000111111;
        
//        memory[0] = 32'b00000000000000000000000000111111;
//        memory[1] = 32'b00100000000000010000000000001010;
//        memory[2] = 32'b10101100000000010000000000000000;
//        memory[3] = 32'b10001100000000100000000000000000;
//        memory[4] = 32'b00010000010000010000000000000001;
//        memory[5] = 32'b00001000000000000000000000000100;
//        memory[6] = 32'b00000000000000000000000000111111;
//        memory[7] = 32'b00000000000000000000000000111111;
//        memory[8] = 32'b00000000000000000000000000111111;
        
//        memory[0] = 32'b00000000000000000000000000111111;
//        memory[1] = 32'b00100000000000010000000000001010;
//        memory[2] = 32'b10101100000000010000000000000000;
//        memory[3] = 32'b10001100000000100000000000000000;
//        memory[4] = 32'b00000000001000100001100000100000;
//        memory[5] = 32'b00000000000000000000000000111111;
//        memory[6] = 32'b00000000000000000000000000111111;
//        memory[7] = 32'b00000000000000000000000000111111;
//        memory[8] = 32'b00000000000000000000000000111111;
    end
    
endmodule
