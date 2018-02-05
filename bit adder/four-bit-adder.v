module fourBitAdder (input[3:0]X ,input[3:0]Y ,input Cin ,output[3:0]SUM ,output Cout); 
  
  wire C0;
  oneBitAdder bit0(X[0] ,Y[0] ,Cin ,SUM[0] ,C0);
  
  wire C1;
  oneBitAdder bit1(X[1] ,Y[1] ,C0 ,SUM[1] ,C1);
  
  wire C2;
  oneBitAdder bit2(X[2] ,Y[2] ,C1 ,SUM[2] ,C2);
  
  oneBitAdder bit3(X[3] ,Y[3] ,C2 ,SUM[3] ,Cout);
  
endmodule