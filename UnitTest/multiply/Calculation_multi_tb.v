`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:11:56 06/17/2017
// Design Name:   Calculation_mulit
// Module Name:   D:/project/soc/Kmeans/multiply/Calculation_multi_tb.v
// Project Name:  multiply
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_mulit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Calculation_multi_tb;

	// Inputs
	reg [15:0] mul_a;
	reg [15:0] mul_b;
	reg mulit_clk;
	reg mulit_rst;

	// Outputs
	wire [31:0] mul_out;

	// Instantiate the Unit Under Test (UUT)
	Calculation_mulit uut (
		.mul_out(mul_out), 
		.mul_a(mul_a), 
		.mul_b(mul_b), 
		.mulit_clk(mulit_clk), 
		.mulit_rst(mulit_rst)
	);

	initial begin
		// Initialize Inputs
		mul_a = 0;
		mul_b = 0;
		mulit_clk = 0;
		mulit_rst = 0;

		#5 mulit_rst = 1;
		// Wait 100 ns for global reset to finish
		#100 mul_a = 16'd510;
		     mul_b = 16'd14;
			  
		#100 mul_a = 16'd447;
		     mul_b = 16'd156;
			  
		#100 mul_a = 16'd120;
		     mul_b = 16'd65;
        
		// Add stimulus here

	end
   initial begin
	   forever #5 mulit_clk = ~mulit_clk;
	end   
      
endmodule

