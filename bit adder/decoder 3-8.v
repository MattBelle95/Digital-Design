module decoder3to8 (input[2:0]DataIn ,output reg[7:0]DataOut);
  
  always @(DataIn)
  case (DataIn) /*begin case*/
    3'b000 : DataOut = 8'b00000001;
    3'b001 : DataOut = 8'b00000010;
    3'b010 : DataOut = 8'b00000100;
    3'b011 : DataOut = 8'b00001000;
    3'b100 : DataOut = 8'b00010000;
    3'b101 : DataOut = 8'b00100000;
    3'b110 : DataOut = 8'b01000000;
    3'b111 : DataOut = 8'b10000000;
    /*default : DataOut = 8'b00000000; /*impossible case just typed it to check defaul sytanx*/
  endcase/*end case*/
  
endmodule