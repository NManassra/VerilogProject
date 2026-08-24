module Full_Adder_1212359 #(parameter n=4)
(input signed [n:0] x,y,//the size is 4 as parameterized before
output reg signed [n+1 : 0] result); //signed used to deal with negative and positive numbers by default and the size n since the overflow can be showen 
always @(x or y )//since we have to use the behavoural model
  begin 
   result = x + y ;  //the summation equals to x xor y
  end 
endmodule
