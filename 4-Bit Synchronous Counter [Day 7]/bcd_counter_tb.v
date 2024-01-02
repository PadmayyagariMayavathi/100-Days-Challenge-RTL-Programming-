`timescale 1ns / 1ps
module bcd_counter_tb;

	// Inputs
	reg [0:0] clock;
	reg clear;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	bcd_counter uut (
		.clock(clock), 
		.count(count), 
		.clear(clear)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		clear = 1;
#25 clear=0;
#250 clear=1;
#25 clear=0;
#450 $finish;

		end
	always 
	#10 clock=~clock;
      
endmodule
