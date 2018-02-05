`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 11:25:53 PM
// Design Name: 
// Module Name: MIPS_microprocessor
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


module MIPS_microprocessor
    (
     input        clock,inst_memory_load_enable,PC_reset,
     input [31:0] inst_memory_write_addr,inst_memory_write_data    //these inputs are used for loading a program
    );
    
    /*register file*/
    wire [4 :0] reg_read_addr1,reg_read_addr2,reg_write_addr3;
    wire [31:0] reg_write_data;
    wire        reg_write_enable;
    wire [31:0] reg_read_data1,reg_read_data2;
    reg_file mips_register_file(clock,reg_read_addr1,reg_read_addr2,reg_write_addr3,reg_write_data,reg_write_enable,reg_read_data1,reg_read_data2);
    
    /*data memory*/
    wire        data_memory_write_enable;
    wire [31:0] data_memory_addr,data_memory_write_data;
    wire [31:0] data_memory_read_data;
    data_memory mips_data_memory(clock,data_memory_write_enable,data_memory_addr,data_memory_write_data,data_memory_read_data);
    
    /*Program Counter*/
    (*keep="true"*)wire [31:0] PC_next,PC_plus4,PC_current;
    PC_unit mips_pc_unit(clock,PC_reset,PC_next,PC_plus4,PC_current);
    
    /*instruction memory*/
    wire [31:0] inst_memory_read_addr;
    wire [31:0] inst_memory_instruction;
    inst_memory mips_instruction_memory(clock,inst_memory_load_enable,inst_memory_write_addr,inst_memory_write_data,
                                        inst_memory_read_addr,inst_memory_instruction);
    
    /*ALU*/
    wire [5 :0] alu_control;
    wire [31:0] alu_src_a,alu_src_b;
    wire [31:0] alu_result_hi,alu_result_lo;
    wire        alu_zero;
    wire [4 :0] alu_shamt;
    wire        alu_overflow;
    ALU mips_ALU(alu_control,alu_src_a,alu_src_b,alu_shamt,alu_result_hi,alu_result_lo,alu_zero,alu_overflow);
    
    /*HI-LO registers*/
    wire        hi_lo_write_enable;
    wire [31:0] hi_input_data ,lo_input_data,
                hi_output_data,lo_output_data;
    hi_lo_reg mips_hi_lo_reg(clock,hi_lo_write_enable,hi_input_data ,lo_input_data,
                                                      hi_output_data,lo_output_data);
    
    /*control unit*/
    wire [5 :0] control_opcode,control_funct;
    wire        control_alu_zero;
    wire        /*control_read_addr1_sel,control_read_addr2_sel,*/
                control_write_addr3_sel,  /*3 controls to select ddresses to register file*/
                control_reg_write_enable;
    wire [1 :0] control_reg_write_data_sel;            /*register file write_enable and write_data control*/
    wire        control_alu_src_b_sel,                                  /*select src_b to ALU*/
                control_data_memory_write_enable,                       /*data memory write_enable contorl*/
                control_hi_lo_write_enable;
    wire [1 :0] control_PC_sel;
    wire [5 :0] control_alu_control;
    control_unit mips_control_unit(control_opcode,control_funct,control_alu_zero,
                                   /*control_read_addr1_sel,control_read_addr2_sel,*/
                                   control_write_addr3_sel,
                                   control_reg_write_enable,control_reg_write_data_sel,
                                   control_alu_src_b_sel,
                                   control_data_memory_write_enable,
                                   control_hi_lo_write_enable,
                                   control_PC_sel,
                                   control_alu_control);
   
   /*sign extender*/
   wire [15:0]  sign_ext_data_in;
   wire [31:0]  sign_ext_data_out;
   sign_extend mips_sign_extend(sign_ext_data_in,sign_ext_data_out);
   
   /*data path*/
   wire [31:0] data_path_instruction;
   wire        /*data_path_read_addr1_sel,data_path_read_addr2_sel,*/
               data_path_write_addr3_sel;  /*3 controls to select ddresses to register file*/
   wire [1 :0] data_path_reg_write_data_sel;                                                 /*register file write_data control*/
   wire        data_path_alu_src_b_sel;                                                      /*ALU src_b select*/
               
   wire [1 :0] data_path_PC_sel;                       /*select next PC value*/
       
   wire [31:0] data_path_alu_result,                   /*data coming from ALU*/
               data_path_data_memory_read_data,        /*data coming from data memory*/
               data_path_reg_read_data2,               /*data coming from register file read port 2*/
               data_path_sign_extend_data,             /*data coming from sign extension unit*/
               data_path_PC_plus4,data_path_PC_branch,
               data_path_PC_jump,                     /*3 possible PC values to choose from*/
               data_path_hi_read_data,data_path_lo_read_data; /*hi and lo readings from hi-lo registers*/
               
   wire [4 :0] data_path_reg_read_addr1,
               data_path_reg_read_addr2,
               data_path_reg_write_addr3;               /*register file addresse*/
               
   wire [31:0] data_path_reg_write_data,                /*register file write_data*/
               data_path_alu_src_b,                     /*ALU src_b data*/
               data_path_PC_next;                       /*next value of PC*/
   data_path mips_data_path(data_path_instruction,
                            /*data_path_read_addr1_sel,data_path_read_addr2_sel,*/
                            data_path_write_addr3_sel,
                            data_path_reg_write_data_sel,
                            data_path_alu_src_b_sel,
                            data_path_PC_sel,
                            data_path_alu_result,
                            data_path_data_memory_read_data,
                            data_path_reg_read_data2,
                            data_path_sign_extend_data,
                            data_path_PC_plus4,data_path_PC_branch,data_path_PC_jump,
                            /*data_path_reg_read_addr1,data_path_reg_read_addr2,*/
                            data_path_hi_read_data,data_path_lo_read_data,
                            data_path_reg_write_addr3,
                            data_path_reg_write_data,data_path_alu_src_b,
                            data_path_PC_next);
                            
   /*wire assignment*/
   
   /*data path*/
//   assign reg_read_addr1 = data_path_reg_read_addr1;
//   assign reg_read_addr2 = data_path_reg_read_addr2;
   assign reg_write_addr3 = data_path_reg_write_addr3;
   assign reg_write_data = data_path_reg_write_data;
   assign data_path_reg_read_data2 = reg_read_data2;
   assign data_path_instruction = inst_memory_instruction;
   assign data_path_alu_result = alu_result_lo;
   assign data_path_data_memory_read_data = data_memory_read_data;
   assign data_path_sign_extend_data = sign_ext_data_out;
   assign alu_src_b = data_path_alu_src_b;
   assign data_path_PC_plus4 = PC_plus4;
   assign data_path_PC_branch = PC_plus4 + {sign_ext_data_out[29:0],2'b00};
   assign data_path_PC_jump = {PC_plus4[31:28],inst_memory_instruction[25:0],2'b00};
   assign PC_next = data_path_PC_next;
   assign data_path_hi_read_data = hi_output_data;
   assign data_path_lo_read_data = lo_output_data;
   
   /*data path <==> control unit*/
//   assign data_path_read_addr1_sel = control_read_addr1_sel;
//   assign data_path_read_addr2_sel = control_read_addr2_sel;
   assign data_path_write_addr3_sel = control_write_addr3_sel;
   assign data_path_reg_write_data_sel = control_reg_write_data_sel;
   assign data_path_alu_src_b_sel = control_alu_src_b_sel;
   assign data_path_PC_sel = control_PC_sel;
   
   /*control unit*/
   assign reg_write_enable = control_reg_write_enable;
   assign control_opcode = inst_memory_instruction[31:26];
   assign control_funct = inst_memory_instruction[5:0];
   assign data_memory_write_enable = control_data_memory_write_enable;
   assign alu_control = control_alu_control;
   assign hi_lo_write_enable = control_hi_lo_write_enable;
   assign control_alu_zero = alu_zero;
   
   assign data_memory_write_data = reg_read_data2;
   assign data_memory_addr = alu_result_lo;
   assign inst_memory_read_addr = PC_current;
   assign alu_src_a = reg_read_data1;
   assign sign_ext_data_in = inst_memory_instruction[15:0];
   assign alu_shamt = inst_memory_instruction[10:6];
   assign {hi_input_data,lo_input_data} = {alu_result_hi,alu_result_lo};
   assign reg_read_addr1 = inst_memory_instruction[25:21];
   assign reg_read_addr2 = inst_memory_instruction[20:16];
   
    
endmodule
