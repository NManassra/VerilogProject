module ALU_1212359_Bvrl #(parameter n=4)
(input signed [n-1:0] x,y,
input unsigned [2:0] c,
output reg signed [n+1 : 0] O);
always@(*)
begin
case(c)
3'b000: O=((x+y)/2);
3'b001: O=(2*(x+y));
3'b010: O=((x/2)+y);
3'b011: O=(x-(y/2));
3'b100: O=(~(x & y));
3'b101: O=(~x);
3'b110: O=(~(x|y));
3'b111: O=(x^y);
default:O=1'b0;
endcase
end
endmodule