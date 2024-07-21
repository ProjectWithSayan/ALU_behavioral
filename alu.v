
module alu(A,B,out,op);
  input [7:0] A,B;
  input [2:0] op;
  output reg [7:0] out;
  always @(*)
    begin
      case(op)
        3'd0:out=A+B;
        3'd1:out=A-B;
        3'd2:out=A*B;
        3'd3:out=A/B;
        3'd4:out=A|B;
        3'd5:out=A&B;
        3'd6:out=~A;
        3'd7:out=A^B;
        default:out=0;
      endcase
    end
endmodule