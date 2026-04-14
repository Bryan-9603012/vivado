`timescale 1ns / 1ps
module HalfAdder(
		input A,
		input B,
		output So,
		output Cout
	);
		
	xor u0(So,A,B);
	and u1(Cout,A,B);

endmodule