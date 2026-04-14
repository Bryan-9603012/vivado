module hw1(
    input  [15:0] sw,
    output [15:0] led
);

wire A, B;

assign A = sw[5];
assign B = sw[6];   // 如果老師實際指定的是 SW[7]，請改成 sw[7]

assign led[2] = ~A;     // NOT A
assign led[3] = A & B;  // A AND B
assign led[4] = A | B;  // A OR B
assign led[5] = A ^ B;  // A XOR B

// 其餘 LED 關閉
assign led[1:0]  = 2'b00;
assign led[15:6] = 10'b0;

endmodule
