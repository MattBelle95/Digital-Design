`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2017 01:03:12 AM
// Design Name: 
// Module Name: data_memory
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


module data_memory
    (   
     input                clock,write_enable,
     input      [31:0]    addr,
     input      [31:0]    write_data,
     output reg [31:0]    read_data
    );
    
    wire [31:0]addr_eff;
    assign addr_eff  = {2'b00, addr[31:2]};
    
    reg [31:0]memory[31:0];
    
    always @ (*) begin
        read_data = memory[addr_eff];
    end
    
    always @ (posedge clock) begin
        if (write_enable) memory[addr_eff] <= write_data;
    end
    
    //for simuation only
//    initial begin
//        memory[0] = 32'b00000000000000000000000000000000;
//        memory[1] = 32'b00000000000000000000000000000000;
//        memory[2] = 32'b00000000000000000000000000000000;
//        memory[3] = 32'b00000000000000000000000000000000;
//        memory[4] = 32'b00000000000000000000000000000000;
//        memory[5] = 32'b00000000000000000000000000000000;
//        memory[6] = 32'b00000000000000000000000000000000;
//        memory[7] = 32'b00000000000000000000000000000000;
//    end
    
//    ram_1port #(8,32,5) memory3 (clock,addr_eff[4:0],addr_eff[4:0],write_data[31:24],write_enable,read_data[31:24]);
//    ram_1port #(8,32,5) memory2 (clock,addr_eff[4:0],addr_eff[4:0],write_data[23:16],write_enable,read_data[23:16]);
//    ram_1port #(8,32,5) memory1 (clock,addr_eff[4:0],addr_eff[4:0],write_data[15: 8],write_enable,read_data[15: 8]);
//    ram_1port #(8,32,5) memory0 (clock,addr_eff[4:0],addr_eff[4:0],write_data[7 : 0],write_enable,read_data[7 : 0]);
    
//    wire [1 : 0]start_byte;
//    assign start_byte = addr[1:0];
    
//    always @ (*) begin
//        /*
//            This always block reads data from data memory
//        */
//        case (start_byte)
//            2'b00 : begin
//                read_data[31:24] = memory3[addr_eff];
//                read_data[23:16] = memory2[addr_eff];
//                read_data[15: 8] = memory1[addr_eff];
//                read_data[7 : 0] = memory0[addr_eff];
//            end
//            2'b01 : begin
//                read_data[31:24] = memory0[addr_eff+1];
//                read_data[23:16] = memory3[addr_eff];
//                read_data[15: 8] = memory2[addr_eff];
//                read_data[7 : 0] = memory1[addr_eff];
//            end
//            2'b10 : begin
//                read_data[31:24] = memory1[addr_eff+1];
//                read_data[23:16] = memory0[addr_eff+1];
//                read_data[15: 8] = memory3[addr_eff];
//                read_data[7 : 0] = memory2[addr_eff];
//            end
//            default : begin
//                read_data[31:24] = memory2[addr_eff+1];
//                read_data[23:16] = memory1[addr_eff+1];
//                read_data[15: 8] = memory0[addr_eff+1];
//                read_data[7 : 0] = memory3[addr_eff];
//            end
//        endcase
//    end /*always*/
    
//    always @ (posedge clock) begin
//        /*
//            This always block is for writing data to data memory
//        */
//        if (write_enable == 1) begin
//            case (start_byte)
//                2'b00 : begin
//                    memory3[addr_eff] = write_data[31:24];
//                    memory2[addr_eff] = write_data[23:16];
//                    memory1[addr_eff] = write_data[15: 8];
//                    memory0[addr_eff] = write_data[7 : 0];
//                end
//                2'b01 : begin
//                    memory0[addr_eff+1] = write_data[31:24];
//                    memory3[addr_eff] = write_data[23:16];
//                    memory2[addr_eff] = write_data[15: 8];
//                    memory1[addr_eff] = write_data[7 : 0];
//                end
//                2'b10 : begin
//                    memory1[addr_eff+1] = write_data[31:24];
//                    memory0[addr_eff+1] = write_data[23:16];
//                    memory3[addr_eff] = write_data[15: 8];
//                    memory2[addr_eff] = write_data[7 : 0];
//                end
//                default : begin
//                    memory2[addr_eff+1] = write_data[31:24];
//                    memory1[addr_eff+1] = write_data[23:16];
//                    memory0[addr_eff+1] = write_data[15: 8];
//                    memory3[addr_eff] = write_data[7 : 0];
//                end
//            endcase
//        end /*if*/        
//    end /*always*/
    
endmodule  