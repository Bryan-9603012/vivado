`timescale 1ns/1ps

module Base_Gate_Not_tb;

reg  [2:0] sw;
wire [2:0] led;

Base_Gate_Not uut (
    .sw(sw),
    .led(led)
);

initial begin
    sw = 3'b000;
    #10;

    sw = 3'b100;
    #10;

    sw = 3'b000;
    #10;

    $finish;
end

initial begin
    $monitor("time=%0t sw=%b led=%b", $time, sw, led);
end

endmodule