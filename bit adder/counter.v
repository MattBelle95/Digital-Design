module counter4bit(
  input reset ,clk,
  input [3:0]load,
  input [1:0]control,
  output reg [3:0]count);
  
  always @(posedge clk or posedge reset)
  begin /*begin always*/
    
    if (reset == 1) count = 0; /*if reset is HIGH the counter is set to zero*/
      
    else
      begin /*begin else*/
        if (control == 0) count <= 0;  /*set control to 0 to set counter to 0*/
        else if (control == 1) count <= count + 1; /*set control to 1 to count up*/
        else if (control == 2) count <= count - 1; /*set control to 2 to count down*/
        else if (control == 3) count <= load;      /*set control to 3 to set starting number*/
      end /*end else*/
      
  end /*end always*/
  
endmodule