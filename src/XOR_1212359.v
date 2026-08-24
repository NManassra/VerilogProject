module XOR_1212359  #(parameter n=4)
(input [n-1:0] a, input [n-1:0] b, output reg [n-1:0] y);
integer i;
 always @(a or b) begin
    for (i=0; i<n; i=i+1)
        y[i] = a[i] ^ b[i];
  end
endmodule