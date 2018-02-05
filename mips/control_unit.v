`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 08:46:27 PM
// Design Name: 
// Module Name: control_unit
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
/*FUNCTION*/
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


/*OPCODES*/
`define R_TYPE         6'b000000
`define J              6'b000010
`define BEQ            6'b000100
`define ADDI           6'b001000
`define LW             6'b100011
`define SW             6'b101011

module control_unit
    (
     //input            clock,
     input      [5:0] opcode,funct,
     input            alu_zero,
     output reg       /*read_addr1_sel,read_addr2_sel,*/
                      write_addr3_sel,               /*3 controls to select ddresses to register file*/
                      reg_write_enable,
     output reg [1:0] reg_write_data_sel,            /*register file write_enable and write_data control*/
     output reg       alu_src_b_sel,                                  /*select src_b to ALU*/
                      data_memory_write_enable,                       /*data memory write_enable contorl*/
                      hi_lo_write_enable,
                      
     output reg [1:0] PC_sel,                                         /*select next PC value*/
     output reg [5:0] alu_control
    );
    
    reg addr_sel;
    
    always @ (*) begin /*1st always*/
        casex (opcode) /*opcode case*/
            `R_TYPE : begin /*R-Type*/
                PC_sel = 0;                      //PC_next = PC_plus4
                data_memory_write_enable = 0;    //don't write to data memory
                addr_sel = 0;
                reg_write_data_sel = 0;          //select ALU result to be written to register file
                reg_write_enable = 1;            //enable writing to register file
                alu_src_b_sel = 0;               //select ALU src_b to be RD2
                casex (funct)
                    `SLL : begin /*shift left*/
                        alu_control = `SLL;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end 
                    `SRL : begin  /*shift right*/
                        alu_control = `SRL;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                     end
                     `MULT : begin /*multiply*/
                        alu_control = `MULT;
                        reg_write_enable = 0;            //disable writing to register file
                        hi_lo_write_enable = 1;          //enable writing to hi-lo registers
                     end /*multiply*/
                    `ADD : begin
                        alu_control = `ADD;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `SUBTRACT :begin
                        alu_control = `SUBTRACT;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `AND : begin
                        alu_control = `AND;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `OR : begin
                        alu_control = `OR;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `XOR : begin
                        alu_control = `XOR;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `NOR : begin
                        alu_control = `NOR;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    `SET_LESS_THAN : begin
                        alu_control = `SET_LESS_THAN;
                        reg_write_enable = 1;            //enable writing to register file
                        hi_lo_write_enable = 0;          //disable writing to hi-lo registers
                    end
                    default : begin
                        alu_control = `NOOP;
                        reg_write_enable = 0;
                        hi_lo_write_enable = 0;
                    end
                endcase
            end /*R-Type*/
            `J : begin /*Jump*/
                alu_control = `NOOP;
                addr_sel = 0;                  //0 - 0 - 0
                reg_write_data_sel = 0;      
                reg_write_enable = 0;          //don't write to register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 0;             //RD2
                PC_sel = 2;                    //PC_next = PC_jump
                data_memory_write_enable = 0;  //don't write to data memory
            end /*Jump*/
            `BEQ : begin /*BEQ*/
                alu_control = `SUBTRACT;
                addr_sel = 0;                  //0 - 0 - 0
                reg_write_data_sel = 0;        
                reg_write_enable = 0;          //don't write to register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 0;             //RD2
                PC_sel = alu_zero? 1 : 0;      //PC_next = PC_branch only if [rs]-[rt]=0
                data_memory_write_enable = 0;  //don't write to data memory
            end /*BEQ*/
            `ADDI : begin /*ADDI*/
                alu_control = `ADDI;
                addr_sel = 1;                  //0 - 0 - 1
                reg_write_data_sel = 0;
                reg_write_enable = 1;          //write the result in register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 1;             //sign_extend_data
                PC_sel = 0;                    //PC_next = PC_plus4
                data_memory_write_enable = 0;  //don't write to data memory
            end /*ADDI*/
            `LW : begin /*Load Word*/
                alu_control = `ADD;
                addr_sel = 1;                  //rs - rt - rt
                reg_write_data_sel = 1;        //select data coming from data memory to be written to register file
                reg_write_enable = 1;          //load the data from data memory to register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 1;             //sign_extend_data
                PC_sel = 0;                    //PC_next = PC_plus4
                data_memory_write_enable = 0;  //don't write to data memory
            end /*Load Word*/
            `SW : begin /*Store Word*/
                alu_control = `ADD;
                addr_sel = 0;                  //rs - rt - rd
                reg_write_data_sel = 1;        //select data coming from data memory to be written to register file
                reg_write_enable = 0;          //don't write to register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 1;             //sign_extend_data
                PC_sel = 0;                    //PC_next = PC_plus4
                data_memory_write_enable = 1;  //write to data memory
            end /*Stor Word*/
            default : begin
                alu_control = `NOOP;
                addr_sel = 0;                  //0 - 0 - 0
                reg_write_data_sel = 0;      
                reg_write_enable = 0;          //don't write to register file
                hi_lo_write_enable = 0;        //disable writing to hi-lo registers
                alu_src_b_sel = 1;             //sign_extend_data
                PC_sel = 0;                    //PC_next = PC_plus4
                data_memory_write_enable = 0;  //don't write to data memory
            end
        endcase /*opcode case*/
    end /*1st always*/
    
    always @ (*) begin /*2nd always*/
//        {read_addr1_sel,read_addr2_sel,write_addr3_sel} = addr_sel;
        write_addr3_sel = addr_sel;
    end /*2nd always*/
    
endmodule
