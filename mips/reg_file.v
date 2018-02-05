`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:58 08/22/2017 
// Design Name: 
// Module Name:    reg_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: In MIPS register file, all read operations are combinational.
//              However, write operations take place on rising edge of the clock,
//              this gives enough time for data read, and ensures data doesn't change before next cycle
//////////////////////////////////////////////////////////////////////////////////
module reg_file
    (
	 input             clock,
	 input      [4 :0] read_addr1,read_addr2,write_addr3,
	 input      [31:0] write_data,
	 input 	           write_enable,
	 output	    [31:0] read_data1,read_data2
    );
	 
	 reg [31:0] rd1,rd2;
	 reg        s1,s2;
	 reg [31:0]memory[31:0];
	 
	 always @ (posedge clock) begin
	   if (write_enable) memory[write_addr3] = write_data;
	 end
	 
	 always @ (*) begin
	   rd1 = memory[read_addr1];
	   rd2 = memory[read_addr2];
	 end
	 
	 always @ (*) begin
        if (read_addr1 == 0) s1 = 0;
        else s1 = 1;
            
        if (read_addr2 == 0) s2 = 0;
        else s2 = 1;
     end
	 
	 mux2_1 #(32) read_data1_mux (s1,0,rd1,read_data1);
	 mux2_1 #(32) read_data2_mux (s2,0,rd2,read_data2);
	 
//	 initial begin
//	   memory[0]=0;
//	   memory[1]=0;
//	   memory[2]=0;
//	   memory[3]=0;
//	   memory[4]=0;
//	   memory[5]=0;
//	   memory[6]=0;
//	   memory[7]=0;
//	   memory[8]=0;
//	   memory[9]=0;
//	   memory[10]=0;
//	 end
	 
//	 ram_2port #(32,32) memory (clock,read_addr1,read_addr2,write_addr3,write_data,write_enable,rd1,rd2);
	 
endmodule
