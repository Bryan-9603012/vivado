`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/16 20:03:29
// Design Name: 
// Module Name: HalfAdder_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HalfAdder_TB;
	reg A,B;
	wire S,Cout;
	
	initial begin
		A = 1'b0;
		B = 1'b0;
		#50
		A = 1'b0;
		B = 1'b1;
		#50
		A = 1'b1;
		B = 1'b0;
		#50
		A = 1'b1;
		B = 1'b1;
		#50 $finish;
	end
	HalfAdder u_HalfAdder(.A(A),.B(B),.So(S),.Cout(Cout));	
endmodule
