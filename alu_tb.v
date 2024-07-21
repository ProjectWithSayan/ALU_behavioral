//testbench here
module alu_tb;
  reg [7:0] A,B; //inputs
  reg [2:0] op; //instructions/opcodes
  wire [7:0] out; //outpus
  alu a1(A,B,out,op);
  
  integer i;
  
  initial
    begin
      A=50;B=10;op=0;
      $monitor($time,"A=%d,B=%d,op=%d,out=%d",A,B,op,out); 
      $dumpfile("alu_behavioral.vcd"); 
      $dumpvars(0,alu_tb);
      for(i=1;i<8;i=i+1)
        begin
          #10
          op=i;
          
        end
      #10 $finish();
    end
endmodule