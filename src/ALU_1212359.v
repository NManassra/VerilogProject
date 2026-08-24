module ALU_1212359 #(parameter n=4)
(input signed [n-1:0] x,y,//the inputs from the used always only 4 bits
input unsigned [2:0] c,//the selection always 3 bits
  output signed [n+1 : 0] O);//the ouput max will br 6 bit, 1 bit for the overflow and another one for the multiplication
wire signed [n+1:0] b,a,bb,w,w1,y0,y1,y2,y3,y4,y5,y6,y7,y8;//used to sign values in tempo for 6 bits
Full_Adder_1212359(x,y,w);//the first operation needs summation first
div_1212359(w,y0);//the summation needed to be divided by 2 (a+b)/2=y0
Shifting_multi_1212359(w,y1); // the summation needed to be multiplied by 2 y1= (a+b)*2
div_1212359(x,bb);// x should be divided by two first
Full_Adder_1212359(bb,y,y2); // the summation of x/2 and y
div_1212359(y,b); // y/2
Full_Adder_Sub_1212359(x,b,y3); // y/2 + x = y3
NAND_1212359(x,y,y4); 
NOT_1212359(x,y5);
NOR_1212359(x,y,y6);
XOR_1212359(x,y,y7);
mux8_1_1212359(c,y0,y1,y2,y3,y4,y5,y6,y7,y8); // put the values on the mux we've done and put the result in O
assign O = y8;
endmodule