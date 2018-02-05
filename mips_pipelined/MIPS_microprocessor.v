`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2017 11:25:53 PM
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
     input        clock,inst_mem_load_enable,pc_reset,reset,
     input [31:0] inst_mem_write_addr,inst_mem_write_data,
     output[31:0] reg_file_write_data_w,
     output[5 :0] control_unit_alu_control_d,
     output       data_comp_correct
    );
    
    //fetch
    wire        clock_f,inst_mem_load_enable_f;
    wire [31:0] inst_mem_write_addr_f,inst_mem_write_data_f;
    wire        pc_reset_f,pc_enable_f;
    wire [1 :0] pc_sel_f;
    wire [31:0] pc_branch_f,pc_jump_f;
    wire [31:0] pc_plus4_f,inst_mem_inst_f;
    
    //buf1
    wire enable1,clear1;
    
    //decode
    wire        clock_d;
    wire [1 :0] sel_a_d,sel_b_d;
    wire [31:0] inst_mem_inst_d,pc_plus4_d,alu_result_lo_m_d,alu_result_lo_e_d;
    wire [4 :0] reg_file_write_addr3_d;
    wire [31:0] reg_file_write_data_d;
    wire        reg_file_write_enable_d;
    wire [31:0] reg_file_write_data_w_d;
    wire        equal_d;
    wire [31:0] read_data1_d,read_data2_d;
    wire [4 :0] rs_d,rt_d,rd_d;
    wire [31:0] sign_extend_data_out_d,pc_branch_d,pc_jump_d;
    
    //buf2
    wire enable2,clear2;
    
    //execute
    wire [31:0] read_data1_e,read_data2_e;
    wire [5 :0] alu_control_e;
    wire        alu_src_b_sel_e;
    wire [4 :0] rs_e,rt_e,rd_e;
    wire [4 :0] alu_shamt_e;
    wire        reg_file_write_addr_sel_e;
    wire [31:0] sign_extend_data_out_e;
    wire [1 :0] forward_a_sel_e,forward_b_sel_e;
    wire [31:0] result_w_e,alu_result_m_e,data_mem_read_data_m_e;
    wire [4 :0] reg_file_write_addr_e;
    wire [31:0] alu_result_hi_e,alu_result_lo_e,write_data2_e;
    wire        alu_zero_e,alu_overflow_e;
    
    //buf3
    wire enable3,clear3;
    
    //memory
    wire        clock_m;
    wire [4 :0] reg_file_write_addr_m;
    wire [31:0] alu_result_hi_m,alu_result_lo_m;
    wire        data_mem_write_enable_m;
    wire [31:0] data_mem_write_data_m;
    wire [31:0] data_mem_read_data_m;
    
    //buf4
    wire enable4,clear4;
         
    //write_back
    wire [1 :0] reg_write_data_sel_w;
    wire [31:0] data_mem_read_data_w,alu_result_hi_w,alu_result_lo_w;
    wire [4 :0] reg_file_write_addr_w;
//    wire [31:0] reg_file_write_data_w;
    
    //control_unit
    wire [5:0] control_unit_opcode_d,control_unit_funct_d;
    wire       control_unit_equal_d,control_unit_write_addr3_sel_d,control_unit_reg_write_enable_d;
    wire [1:0] control_unit_reg_write_data_sel_d;
    wire       control_unit_alu_src_b_sel_d,control_unit_data_memory_write_enable_d,control_unit_hi_lo_write_enable_d;
    wire [1:0] control_unit_PC_sel_d;
//    wire [5:0] control_unit_alu_control_d;
    
    wire [5:0] control_unit_opcode_e;
    wire       control_unit_write_addr3_sel_e,control_unit_reg_write_enable_e;
    wire [1:0] control_unit_reg_write_data_sel_e;
    wire       control_unit_alu_src_b_sel_e,control_unit_data_memory_write_enable_e;
    wire [5:0] control_unit_alu_control_e;

    wire [5:0] control_unit_opcode_m;
    wire       control_unit_reg_write_enable_m;
    wire [1:0] control_unit_reg_write_data_sel_m;
    wire       control_unit_data_memory_write_enable_m;
    
    wire [5:0] control_unit_opcode_w;
    wire       control_unit_reg_write_enable_w;
    wire [1:0] control_unit_reg_write_data_sel_w;
    
    //hazard unit
    wire [1:0]  forward_a_d,forward_b_d,forward_a_e,forward_b_e;
    wire        stall_f,stall_d,flush_e/*,data_comp_correct*/;
    
    fetch mips_fetch_stage(clock_f,inst_mem_load_enable_f,inst_mem_write_addr_f,inst_mem_write_data_f,
                           pc_reset_f,pc_enable_f,pc_sel_f,pc_branch_f,pc_jump_f,inst_mem_inst_f,pc_plus4_f);
    
    buffer #(64) buf1(clock,enable1,clear1,{inst_mem_inst_f,pc_plus4_f},
                                           {inst_mem_inst_d,pc_plus4_d});
    
    decode mips_decode_stage(clock_d,sel_a_d,sel_b_d,inst_mem_inst_d,pc_plus4_d,alu_result_lo_m_d,alu_result_lo_e_d,reg_file_write_addr3_d,
                             reg_file_write_data_d,reg_file_write_enable_d,reg_file_write_data_w_d,equal_d,read_data1_d,read_data2_d,
                             rs_d,rt_d,rd_d,sign_extend_data_out_d,pc_branch_d,pc_jump_d);
    
    buffer #(129) buf2(clock,enable2,clear2,{read_data1_d,read_data2_d,rs_d,rt_d,rd_d,
                                             sign_extend_data_out_d,
                                             control_unit_opcode_d,
                                             control_unit_reg_write_enable_d,
                                             control_unit_reg_write_data_sel_d,
                                             control_unit_data_memory_write_enable_d,
                                             control_unit_alu_control_d,
                                             control_unit_alu_src_b_sel_d,
                                             control_unit_write_addr3_sel_d},
                                            {read_data1_e,read_data2_e,rs_e,rt_e,rd_e,
                                             sign_extend_data_out_e,
                                             control_unit_opcode_e,
                                             control_unit_reg_write_enable_e,
                                             control_unit_reg_write_data_sel_e,
                                             control_unit_data_memory_write_enable_e,
                                             control_unit_alu_control_e,
                                             control_unit_alu_src_b_sel_e,
                                             control_unit_write_addr3_sel_e});
    
    execute mips_execute_stage(read_data1_e,read_data2_e,alu_control_e,alu_src_b_sel_e,rs_e,rt_e,rd_e,alu_shamt_e,
                               reg_file_write_addr_sel_e,sign_extend_data_out_e,forward_a_sel_e,forward_b_sel_e,
                               result_w_e,alu_result_m_e,data_mem_read_data_m_e,reg_file_write_addr_e,
                               alu_result_hi_e,alu_result_lo_e,write_data2_e,
                               alu_zero_e,alu_overflow_e);
    
    buffer #(111) buf3(clock,enable3,clear3,{reg_file_write_addr_e,alu_result_hi_e,alu_result_lo_e,write_data2_e,
                                             control_unit_opcode_e,
                                             control_unit_reg_write_enable_e,
                                             control_unit_reg_write_data_sel_e,
                                             control_unit_data_memory_write_enable_e},
                                            {reg_file_write_addr_m,alu_result_hi_m,alu_result_lo_m,data_mem_write_data_m,
                                             control_unit_opcode_m,
                                             control_unit_reg_write_enable_m,
                                             control_unit_reg_write_data_sel_m,
                                             control_unit_data_memory_write_enable_m});
    
    memory mips_memory_stage(clock_m,reg_file_write_addr_m,alu_result_hi_m,alu_result_lo_m,data_mem_write_enable_m,
                             data_mem_write_data_m,data_mem_read_data_m);
    
    buffer #(110) buf4(clock,enable4,clear4,{data_mem_read_data_m,alu_result_hi_m,alu_result_lo_m,reg_file_write_addr_m,
                                             control_unit_opcode_m,
                                             control_unit_reg_write_enable_m,
                                             control_unit_reg_write_data_sel_m},
                                            {data_mem_read_data_w,alu_result_hi_w,alu_result_lo_w,reg_file_write_addr_w,
                                             control_unit_opcode_w,
                                             control_unit_reg_write_enable_w,
                                             control_unit_reg_write_data_sel_w});
    
    write_back mips_write_back_stage(reg_write_data_sel_w,data_mem_read_data_w,alu_result_hi_w,alu_result_lo_w,
                                     reg_file_write_addr_w,reg_file_write_data_w);
                                     
    control_unit mips_control_unit(control_unit_opcode_d,control_unit_funct_d,control_unit_equal_d,control_unit_write_addr3_sel_d,
                                   control_unit_reg_write_enable_d,control_unit_reg_write_data_sel_d,control_unit_alu_src_b_sel_d,
                                   control_unit_data_memory_write_enable_d,control_unit_hi_lo_write_enable_d,control_unit_PC_sel_d,
                                   control_unit_alu_control_d);
                                   
   hazard_unit mips_hazard_unit (reset,
                                 control_unit_opcode_d,control_unit_opcode_e,control_unit_opcode_m,control_unit_opcode_w,
                                 rs_d,rt_d,rs_e,rt_e,
                                 reg_file_write_addr_e,reg_file_write_addr_m,reg_file_write_addr_w,
                                 control_unit_reg_write_enable_e,control_unit_reg_write_enable_m,control_unit_reg_write_enable_w,
                                 control_unit_reg_write_data_sel_e,control_unit_reg_write_data_sel_m,control_unit_reg_write_data_sel_w,
                                 forward_a_d,forward_b_d,
                                 forward_a_e,forward_b_e,
                                 stall_f,stall_d,flush_e,data_comp_correct);
   //fetch
   assign clock_f = clock;
   assign inst_mem_load_enable_f = inst_mem_load_enable;
   assign inst_mem_write_addr_f = inst_mem_write_addr;
   assign inst_mem_write_data_f = inst_mem_write_data;
   assign pc_reset_f = pc_reset;
   assign pc_enable_f = !stall_f;
   assign pc_sel_f = control_unit_PC_sel_d;
   assign pc_branch_f = pc_branch_d;
   assign pc_jump_f = pc_jump_d;
   //buf1
   assign enable1 = !stall_d;
   assign clear1 = control_unit_PC_sel_d[1] | (data_comp_correct & equal_d & control_unit_PC_sel_d[0]);
//   assign clear1 = 0;
   //decode
   assign clock_d = clock;
   assign sel_a_d = forward_a_d;
   assign sel_b_d = forward_b_d;
   assign alu_result_lo_m_d = alu_result_lo_m;
   assign alu_result_lo_e_d = alu_result_lo_e;
   assign reg_file_write_addr3_d = reg_file_write_addr_w;
   assign reg_file_write_data_d = reg_file_write_data_w;
   assign reg_file_write_enable_d = control_unit_reg_write_enable_w;
   assign reg_file_write_data_w_d = reg_file_write_data_w;
   //buf2
   assign enable2 = 1'b1;
   assign clear2 = flush_e;
   //execute
   assign alu_control_e = control_unit_alu_control_e;
   assign alu_src_b_sel_e = control_unit_alu_src_b_sel_e;
   assign alu_shamt_e = 0;
   assign reg_file_write_addr_sel_e = control_unit_write_addr3_sel_e;
   assign forward_a_sel_e = forward_a_e;
   assign forward_b_sel_e = forward_b_e;
   assign result_w_e = reg_file_write_data_w;
   assign alu_result_m_e = alu_result_lo_m;
   assign data_mem_read_data_m_e = data_mem_read_data_m;
   //buf3
   assign enable3 = 1'b1;
   assign clear3 = 1'b0;
   //memory
   assign clock_m = clock;
   assign data_mem_write_enable_m = control_unit_data_memory_write_enable_m;
   //buf4
   assign enable4 = 1'b1;
   assign clear4 = 1'b0;
   //write back
   assign reg_write_data_sel_w = control_unit_reg_write_data_sel_w;
   //control unit
   assign control_unit_opcode_d = inst_mem_inst_d[31:26];
   assign control_unit_funct_d = inst_mem_inst_d[5:0];
   assign control_unit_equal_d = equal_d;
   
   //for simulation only
   assign clock = 0;
   assign inst_mem_load_enable = 0;
   assign pc_reset = 1;
   assign reset = 1;
   assign inst_mem_write_addr = 0;
   assign inst_mem_write_data = 32'b111111;
   
//   assign stall_f = 0;
//   assign stall_d = 0;
//   assign forward_a_d = 0;
//   assign forward_b_d = 0;
//   assign forward_a_e = 0;
//   assign forward_b_e = 0;
//   assign flush_e = 0;
    
endmodule