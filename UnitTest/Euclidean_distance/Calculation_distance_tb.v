`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:29 06/17/2017
// Design Name:   Calculation_distance
// Module Name:   D:/project/soc/Kmeans/Euclidean_distance/Calculation_distance_tb.v
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

module Calculation_distance_tb;

	// Inputs
	reg [9:0] distance_X1;
	reg [9:0] distance_X2;
	reg [9:0] distance_Y1;
	reg [9:0] distance_Y2;
	reg distance_clk;
	reg distance_rst;

	// Outputs
	wire [31:0] distance_outQ;
	wire [31:0] distance_outR;

	// Instantiate the Unit Under Test (UUT)
	Calculation_distance uut (
		.distance_outQ(distance_outQ), 
		.distance_outR(distance_outR), 
		.distance_X1(distance_X1), 
		.distance_X2(distance_X2),  
		.distance_Y1(distance_Y1), 
		.distance_Y2(distance_Y2), 
		.distance_clk(distance_clk), 
		.distance_rst(distance_rst)
	);

	initial begin
		// Initialize Inputs
		distance_X1 = 0;
		distance_X2 = 0;
		distance_Y1 = 0;
		distance_Y2 = 0;
		distance_clk = 0;
		distance_rst = 0;

		// Wait 100 ns for global reset to finish
		#5 distance_rst = 1;
        
      #10 distance_X1 = 10'd47;
          distance_X2 = 10'd10;	
          distance_Y1 = 10'd54;
          distance_Y2 = 10'd35;	
			 
      //#100 distance_X1 = 10'd125;
       //   distance_X2 = 10'd45;	
      //    distance_Y1 = 10'd167; 
       //   distance_Y2 = 10'd215;		
		// Add stimulus here

	end
	
   initial begin
	   forever #5 distance_clk = ~distance_clk;
	end
      
endmodule

