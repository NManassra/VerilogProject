module Shifting_multi_1212359 #(parameter n=4)
(input signed [n : 0] a,
output reg signed [n+1 : 0] answer);// the size here will be increased by one since it's multiplication so the number will be increased by 1 bit since it's mult by 2 
always @(a)
 begin 
answer = (a<<1);//it's left shifting
end
endmodule
