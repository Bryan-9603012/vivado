`timescale 1ns/1ps

module hw1_tb;

reg  [15:0] sw;
wire [15:0] led;

hw1 uut (
    .sw(sw),
    .led(led)
);

initial begin
    $display("Start simulation...");
    $display(" A B | NOT AND OR XOR ");
    $display("----------------------");

    // A=0, B=0
    sw = 16'b0;
    sw[5] = 0;
    sw[6] = 0;
    #10;
    $display(" %b %b |  %b    %b   %b   %b", sw[5], sw[6], led[2], led[3], led[4], led[5]);

    // A=0, B=1
    sw = 16'b0;
    sw[5] = 0;
    sw[6] = 1;
    #10;
    $display(" %b %b |  %b    %b   %b   %b", sw[5], sw[6], led[2], led[3], led[4], led[5]);

    // A=1, B=0
    sw = 16'b0;
    sw[5] = 1;
    sw[6] = 0;
    #10;
    $display(" %b %b |  %b    %b   %b   %b", sw[5], sw[6], led[2], led[3], led[4], led[5]);

    // A=1, B=1
    sw = 16'b0;
    sw[5] = 1;
    sw[6] = 1;
    #10;
    $display(" %b %b |  %b    %b   %b   %b", sw[5], sw[6], led[2], led[3], led[4], led[5]);

    $display("----------------------");
    $finish;
end

endmodule
