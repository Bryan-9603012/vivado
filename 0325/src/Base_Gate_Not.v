`timescale 1ns/1ps

module Base_Gate_Not(
    input  [2:0] sw,
    output [2:0] led
);

wire A, B;

assign A = sw[2];
not u0 (B, A);
assign led[2] = B;
assign led[1] = 1'b0;
assign led[0] = 1'b0;

endmodule