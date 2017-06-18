`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:06:28 06/17/2017
// Design Name:   Calculation_distance
// Module Name:   D:/project/soc/Kmeans/Euclidean_distance/tb.v
// Project Name:  Euclidean_distance
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_distance
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
	reg [31:0] distance_a;
	reg [31:0] distance_b;
	reg distance_clk;
	reg distance_rst;

	// Outputs
	wire [31:0] distance_out;

	// Instantiate the Unit Under Test (UUT)
	Calculation_distance uut (
		.distance_out(distance_out), 
		.distance_a(distance_a), 
		.distance_b(distance_b), 
		.distance_clk(distance_clk), 
		.distance_rst(distance_rst)
	);

	initial begin
		// Initialize Inputs
		distance_a = 0;
		distance_b = 0;
		distance_clk = 0; 
		distance_rst = 0;
 
		// Wait 100 ns for global reset to finish
		#5 distance_rst = 1;
      #10 distance_a = 32'd52;
          distance_b = 32'd65;	
			 
      #10 distance_a = 32'd125;
          distance_b = 32'd45;		
		// Add stimulus here

	end
   initial begin
	   forever #5 distance_clk = ~distance_clk;
	end  
      
endmodule

