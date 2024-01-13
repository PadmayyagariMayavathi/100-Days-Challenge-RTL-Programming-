`timescale 1ns / 1ps
module Binary_7segment_tb;

	// Inputs

	reg [3:0] Binary_Num;
	integer i;

	// Outputs
	wire [6:0] Segment;

	// Instantiate the Unit Under Test (UUT)
	Binary_7Segment uut (
		.Binary_Num(Binary_Num), 
		.Segment(Segment)
	);

		
		
		initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		Binary_Num=i;
		#10;
		end
		end
		initial
		begin
		$monitor("Binary Num=%b | ABCDEFG=%b",Binary_Num,Segment);
	   #400 $finish;
		end


      
endmodule
