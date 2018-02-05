module oneBitAdder (X ,Y ,Cin ,SUM ,Cout);
  input X ,Y ,Cin;
  output SUM ,Cout;
  
  assign SUM = X ^ Y ^ Cin;
  assign Cout = (X & Y)|(X & Cin)|(Y & Cin);
  
endmodule