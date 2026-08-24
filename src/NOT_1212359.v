module NOT_1212359  #(parameter n=4)
(input [n-1:0] a, output reg [n-1:0] y);
integer i;
always @(a) begin
    for (i=0; i<n; i=i+1)
      y[i] = ~a[i];
  end
endmodule