module div_1212359 #(parameter n=4)
(input signed [n : 0] a,
output reg signed [n : 0] answer); // the size here will remain the same since it's division so the number of bits won't change
always @(a)
 begin 
answer = (a/2);
end
endmodule

