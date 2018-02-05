`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 01:16:24 AM
// Design Name: 
// Module Name: ALU
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

`define SLL            6'b000000
`define SRL            6'b000010
`define ADDI           6'b001000
`define MULT           6'b011000
`define ADD            6'b100000
`define SUBTRACT       6'b100010
`define AND            6'b100100
`define OR             6'b100101
`define XOR            6'b100110
`define NOR            6'b100111
`define SET_LESS_THAN  6'b101010
`define NOOP           6'b111111


module ALU
   #(parameter
     CONTROL_WIDTH = 6,
     SRC_WIDTH = 32
    )
    (
     input      [CONTROL_WIDTH-1:0] alu_control,
     input      [SRC_WIDTH-1:0]     src_a,src_b,
     input      [4:0]               shamt,
     output reg [SRC_WIDTH-1:0]     result_hi,result_lo,
     output reg                     zero,overflow
    );
    
    always @ (*) begin
        casex (alu_control) /*begin case*/
            `SLL: begin /*shift left case*/
                {result_hi,result_lo} = src_b << shamt;
            end /*shift left case*/
            `SRL: begin /*shift right case*/
                {result_hi,result_lo} = src_b >> shamt;
            end /*shift right case*/
            `ADDI : begin /*ADDI case*/
                {result_hi,result_lo} = src_a + src_b;
            end /*ADDI case*/
            `MULT : begin /*multiply case*/
                {result_hi,result_lo} = src_a * src_b;
            end /*multiply case*/
            `ADD : begin /*ADD case*/
                {result_hi,result_lo} = src_a + src_b;
            end /*ADD case*/
            `SUBTRACT : begin /*SUBTRACT case*/
                {result_hi,result_lo} = src_a - src_b;
            end /*SUBTRACT case*/
            `AND : begin /*AND case*/
                {result_hi,result_lo} = src_a & src_b;
            end /*AND case*/
            `OR : begin /*OR case*/
                {result_hi,result_lo} = src_a | src_b;
            end /*OR case*/
            `XOR : begin /*XOR case*/
                {result_hi,result_lo} = src_a ^ src_b;
            end /*XOR case*/
            `NOR : begin /*NOR case*/
                {result_hi,result_lo} = ~(src_a | src_b);
            end /*NOR case*/
            `SET_LESS_THAN : begin /*SET_LESS_THAN case*/
                {result_hi,result_lo} = (src_a < src_b)? 1:0;
            end /*SET_LESS_THAN case*/
            `NOOP : begin /*no operation case*/
                {result_hi,result_lo} = 0;
            end/*no operation case*/
            default : begin
                {result_hi,result_lo} = 0;
            end
        endcase
    end /*always*/
    
    always @ (*) begin
        zero = {result_hi,result_lo} == 0? 1 : 0;
    end /*always*/
    
    always @ (*) begin
        /*
            How overflow is calculated?
            Overflow in adding and subtracting occurs
            When adding:
                If both operands are positive and output is negative
                If both operands are negative and the output is positive
            When subtracting:
                If the first operand is positive and the second is negative, if the output of
                the adder unit is negative
                If first operand is negative and second operand is positive, if the output of
                the adder unit is positive
        */
        if ((alu_control == `ADDI)|(alu_control == `ADD)) begin
            overflow = (src_a[31] & src_b[31] & ~result_lo[31]) || (~src_a[31] & ~src_b[31] & result_lo[31]);
        end
        else if (alu_control == `SUBTRACT) begin
            overflow = (src_a[31] & ~src_b[31] & ~result_lo[31]) || (~src_a[31] & src_b[31] & result_lo[31]);
        end
        else begin
            overflow = 0;
        end
    end /*always*/
    
endmodule
