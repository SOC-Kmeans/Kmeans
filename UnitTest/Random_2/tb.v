`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:04 06/13/2017
// Design Name:   Random_2
// Module Name:   D:/project/soc/Kmeans/Random_2/Random2/tb.v
// Project Name:  Random2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Random_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [12:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	Random_2 uut (
		.cnt(cnt), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #5 rst = 1;		// Add stimulus here

	end
      
  initial begin
    forever #5 clk = ~clk;
  end
endmodule

