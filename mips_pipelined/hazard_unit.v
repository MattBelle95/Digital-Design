`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2017 10:50:46 PM
// Design Name: 
// Module Name: hazard_unit
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

`define R_TYPE         6'b000000
`define J              6'b000010
`define BEQ            6'b000100
`define ADDI           6'b001000
`define LW             6'b100011
`define SW             6'b101011

module hazard_unit
    (
     input             reset,
     input      [5 :0] op_code_d,op_code_e,op_code_m,op_code_w,
//     input      [1 :0] control_unit_PC_sel_d,
     input      [4 :0] rs_d,rt_d,rs_e,rt_e,
     input      [4 :0] reg_file_write_addr_e            ,reg_file_write_addr_m           ,reg_file_write_addr_w,
     input             control_unit_reg_write_enable_e  ,control_unit_reg_write_enable_m ,control_unit_reg_write_enable_w,
     input      [1 :0] control_unit_reg_write_data_sel_e,control_unit_reg_write_data_sel_m,control_unit_reg_write_data_sel_w,
     output reg [1 :0] forward_a_d,forward_b_d,forward_a_e,forward_b_e,
     output reg        stall_f,stall_d,flush_e,data_comp_correct
    );
    
    reg lw_stall_e,lw_stall_m,lw_stall_w,branch_stall_1,branch_stall_2,data_comp_correct1,data_comp_correct2;
    
    always @ (*) begin
        if (reset) begin
            branch_stall_1 = 1'b0;
            branch_stall_2 = 1'b0;
            lw_stall_e = 1'b0;
            lw_stall_m = 1'b0;
            lw_stall_w = 1'b0;
            forward_a_d = 2'b00;
            forward_b_d = 2'b00;
//            data_comp_correct = 1'b0;
            data_comp_correct1 = 1'b0;
            data_comp_correct2 = 1'b0;
        end
        else begin
        casex(op_code_d)
            `BEQ : begin
                if ((rs_d == reg_file_write_addr_e) & (control_unit_reg_write_enable_e)) begin
                    if (op_code_e == `LW) begin
                        branch_stall_1 = 1'b1;
                        forward_a_d = 2'b00;
                        data_comp_correct1 = 1'b0;
                    end
                    else begin
                        branch_stall_1 = 1'b0;
                        forward_a_d = 2'b01;
                        data_comp_correct1 = 1'b1;
                    end
                end
                else if ((rs_d == reg_file_write_addr_m) & (control_unit_reg_write_enable_m)) begin
                    if (op_code_m == `LW) begin
                        branch_stall_1 = 1'b1;
                        forward_a_d = 2'b00;
                        data_comp_correct1 = 1'b0;
                    end
                    else begin
                        branch_stall_1 = 1'b0;
                        forward_a_d = 2'b10;
                        data_comp_correct1 = 1'b1;
                    end
                end
//                else if ((rs_d == reg_file_write_addr_w) & (control_unit_reg_write_enable_w)) begin
//                        branch_stall_1 = 1'b0;
//                        forward_a_d = 2'b11;
//                        data_comp_correct1 = 1'b1;
//                end
                else begin
                    branch_stall_1 = 1'b0;
                    forward_a_d = 2'b00;
                    data_comp_correct1 = 1'b1;
                end
                    
                    
                if ((rt_d == reg_file_write_addr_e) & (control_unit_reg_write_enable_e)) begin
                    if (op_code_e == `LW) begin
                        branch_stall_2 = 1'b1;
                        forward_b_d = 2'b00;
                        data_comp_correct2 = 1'b0;
                    end
                    else begin
                        branch_stall_2 = 1'b0;
                        forward_b_d = 2'b01;
                        data_comp_correct2 = 1'b1;
                    end
                end
                else if ((rt_d == reg_file_write_addr_m) & (control_unit_reg_write_enable_m)) begin
                    if (op_code_m == `LW) begin
                        branch_stall_2 = 1'b1;
                        forward_b_d = 2'b00;
                        data_comp_correct2 = 1'b0;
                    end
                    else begin
                        branch_stall_2 = 1'b0;
                        forward_b_d = 2'b10;
                        data_comp_correct2 = 1'b1;
                    end
                end
//                else if ((rt_d == reg_file_write_addr_w) & (control_unit_reg_write_enable_w)) begin
//                        branch_stall_2 = 1'b0;
//                        forward_b_d = 2'b11;
//                        data_comp_correct2 = 1'b1;
//                end
                else begin
                    branch_stall_2 = 1'b0;
                    forward_b_d = 2'b00;
                    data_comp_correct2 = 1'b1;
                end
            end
            default : begin
                branch_stall_1 = 1'b0;
                branch_stall_2 = 1'b0;
                forward_a_d = 2'b00;
                forward_b_d = 2'b00;
                data_comp_correct1 = 1'b0;
                data_comp_correct2 = 1'b0;
            end
        endcase
        
//        casex(op_code_e)
//            `LW : begin
//                if ((rs_d == reg_file_write_addr_e) | (rt_d == reg_file_write_addr_e) & (control_unit_reg_write_data_sel_e == 2'b01))
//                    lw_stall_e = 1'b1;
//                else
//                    lw_stall_e = 1'b0;
//            end
//            default : begin
//                lw_stall_e = 1'b0;
//            end
//        endcase
        
//        casex(op_code_m)
//            `LW : begin
//                if ((rs_d == reg_file_write_addr_m) | (rt_d == reg_file_write_addr_m) & (control_unit_reg_write_data_sel_m == 2'b01))
//                    lw_stall_m = 1'b1;
//                else
//                    lw_stall_m = 1'b0;
//            end
//            default : begin
//                lw_stall_m = 1'b0;
//            end
//        endcase
        
//        casex(op_code_w)
//            `LW : begin
//                if ((rs_d == reg_file_write_addr_w) | (rt_d == reg_file_write_addr_w) & (control_unit_reg_write_data_sel_w == 2'b10))
//                    lw_stall_w = 1'b1;
//                else
//                    lw_stall_w = 1'b0;
//            end
//            default : begin
//                lw_stall_w = 1'b0;
//            end
//        endcase
        
    end
    end
    
    always @ (*) begin
    if (reset) begin
            forward_a_e = 2'b00;
            forward_b_e = 2'b00;
    end
    else begin
        if ((rs_e == reg_file_write_addr_m) & (control_unit_reg_write_enable_m))
            if (op_code_m == `LW)
                forward_a_e = 2'b11;
            else
                forward_a_e = 2'b10;
        else if ((rs_e == reg_file_write_addr_w) & (control_unit_reg_write_enable_w))
            forward_a_e = 2'b01;
        else
            forward_a_e = 2'b00;
        
        if ((rt_e == reg_file_write_addr_m) & (control_unit_reg_write_enable_m))
            if (op_code_m == `LW)
                forward_b_e = 2'b11;
            else
                forward_b_e = 2'b10;
        else if ((rt_e == reg_file_write_addr_w) & (control_unit_reg_write_enable_w))
            forward_b_e = 2'b01;
        else
            forward_b_e = 2'b00;
    
    end
    end
    
    always @ (*) begin
        stall_f = branch_stall_1 | branch_stall_2 | lw_stall_e | lw_stall_m;
        stall_d = branch_stall_1 | branch_stall_2 | lw_stall_e | lw_stall_m;
        flush_e = branch_stall_1 | branch_stall_2 | lw_stall_e | lw_stall_m;
        data_comp_correct = data_comp_correct2 & data_comp_correct1;
    end

    
    //for simulation pnly
//    assign control_unit_PC_sel_d = 0;
//    assign rs_d = 1;
//    assign rt_d = 2;
//    assign rs_e = 3;
//    assign rt_e = 4;
//    assign reg_file_write_addr_e = 0;
//    assign reg_file_write_addr_m = 0;
//    assign reg_file_write_addr_w = 0;
//    assign control_unit_reg_write_enable_e = 1;
//    assign control_unit_reg_write_enable_m = 1;
//    assign control_unit_reg_write_enable_w = 1;
//    assign control_unit_reg_write_data_sel_e = 0;
    
endmodule
