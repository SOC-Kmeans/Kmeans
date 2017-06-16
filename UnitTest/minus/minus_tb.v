`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:55 06/16/2017
// Design Name:   Calculation_minus
// Module Name:   D:/project/soc/Kmeans/minus/minus_tb.v
// Project Name:  minus
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_minus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module minus_tb;

	// Inputs
	reg [31:0] inputX;
	reg [31:0] inputY;
	reg cin;
	reg minus_clk;

	// Outputs
	wire [31:0] sum;
	wire [31:0] s;
	wire [31:0] cout;

	// Instantiate the Unit Under Test (UUT)
	Calculation_minus uut (
		.sum(sum), 
		.s(s), 
		.cout(cout), 
		.inputX(inputX), 
		.inputY(inputY), 
		.cin(cin), 
		.minus_clk(minus_clk)
	);

	initial begin
		// Initialize Inputs
		inputX = 32'd50;
		inputY = 32'd13;
		cin = 0;
		minus_clk = 0;
		
      #200 inputX = 32'd103;
		     inputY = 32'd86;
			  
      #200 inputX = 32'd124;
		     inputY = 32'd40;
			  
      #200 inputX = 32'd536;
		     inputY = 32'd464;
			  
      #200 inputX = 32'd834;
		     inputY = 32'd21;
			  
      #200 inputX = 32'd416;
		     inputY = 32'd87;
			  
      #200 inputX = 32'd369;
		     inputY = 32'd167;
		// Add stimulus here

	end
      
endmodule

