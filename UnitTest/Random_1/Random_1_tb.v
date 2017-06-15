`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:19:24 06/13/2017
// Design Name:   Random_1
// Module Name:   D:/project/soc/Kmeans/Kmeans/Random_1_tb.v
// Project Name:  Kmeans
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Random_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Random_1_tb;
 
	// Inputs
	reg SampleX;
	reg SampleY;
	reg Random1_clk;
	reg Random1_rst;

	// Outputs
	wire ToBlockRam_clka;
	wire [18:0] ADDRA;
	wire [11:0] S_VALUE_I;
	wire dina;

	// Instantiate the Unit Under Test (UUT)
	Random_1 uut (
		.SampleX(SampleX), 
		.SampleY(SampleY), 
		.ToBlockRam_clka(ToBlockRam_clka), 
		.ADDRA(ADDRA), 
		.S_VALUE_I(S_VALUE_I), 
		.dina(dina), 
		.Random1_clk(Random1_clk), 
		.Random1_rst(Random1_rst)
	);

	initial begin
		// Initialize Inputs
		SampleX = 0; 
		SampleY = 0;
		Random1_clk = 0;
		Random1_rst = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		// Add stimulus here
      #5 Random1_rst = 1;

	end
	
   initial begin
	   forever #5 Random1_clk = ~Random1_clk;
	end
	
endmodule

