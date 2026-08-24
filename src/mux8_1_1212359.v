module mux8_1_1212359#(parameter n=4)
(input unsigned [2:0] s,
input  signed [n+1 : 0] y0,y1,y2,y3,y4,y5,y6,y7,
output reg signed [n+1 : 0] res);
always@(*)
begin
case(s)
3'b000: res=y0;
3'b001: res=y1;
3'b010: res=y2;
3'b011: res=y3;
3'b100: res=y4;
3'b101: res=y5;
3'b110: res=y6;
3'b111: res=y7;
default: res=1'b0;
endcase
end
endmodule