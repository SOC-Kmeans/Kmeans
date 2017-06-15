`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:11 06/15/2017
// Design Name:   Random_2
// Module Name:   D:/project/soc/Kmeans/Random_2/Random2/Random_2_tb.v
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

module Random_2_tb;

	// Inputs
	reg [3:0] Group_quanI;
	reg Random2_clk;
	reg Random2_rst;

	// Outputs
	wire [8:0] Group_coorX;
	wire [8:0] Group_coorY;
	wire [2:0] Group_quanO;

	// Instantiate the Unit Under Test (UUT)
	Random_2 uut (
		.Group_coorX(Group_coorX), 
		.Group_coorY(Group_coorY), 
		.Group_quanO(Group_quanO), 
		.Group_quanI(Group_quanI), 
		.Random2_clk(Random2_clk), 
		.Random2_rst(Random2_rst)
	);

	initial begin
		// Initialize Inputs
		Group_quanI = 0;
		Random2_clk = 0;
		Random2_rst = 0;

		// Wait 100 ns for global reset to finish
		//#100;
      #5 Random2_rst = 1;
		#10 Group_quanI = 4;
		// Add stimulus here

	end
	
   initial begin
	   forever #5 Random2_clk = ~Random2_clk;
	end
endmodule

