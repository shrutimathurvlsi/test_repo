module alu(clk,a,b,i,v,s);
  input clk;
  input [3:0]a;
  input [3:0]b;
  input [3:0]i;
  input v;
  output [5:0]s;
  reg [5:0]s;
  
  always @(posedge clk)
    begin
      if(v==1)
      case(i)
        0: s=a+b;
        1: s=a-b;
        2: s=a*b;
        3: s=a/b;
        4: s=a%b;
        5: s=a&&b;
        6: s=a||b;
        7: s=a&b;
        8: s=a|b;
        9: s=a^b;
        
        default:
          begin
            s = 0;
          $display("Error in selection");
          end
      endcase
      //$display("DUT values as a=%d b=%d i=%d s=%d",a,b,i,s);
          end
endmodule
  

