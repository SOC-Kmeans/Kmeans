`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:26 06/16/2017
// Design Name:   Calculation_div
// Module Name:   D:/project/soc/Kmeans/division/Calculation_div_tb.v
// Project Name:  division
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Calculation_div_tb;

	// Inputs
	reg [31:0] divide;
	reg [31:0] divisor;

	// Outputs
	wire [31:0] quotient;
	wire [31:0] residue;

	// Instantiate the Unit Under Test (UUT)
	Calculation_div uut (
		.quotient(quotient), 
		.residue(residue), 
		.divide(divide), 
		.divisor(divisor)
	);

	initial begin
		// Initialize Inputs
		divide = 0;
		divisor = 0;

		 #10  divide  = 6841;  
        divisor  = 4532;  
          
       #100  divide  = 453;  
        divisor  = 274;  
          
       #100  divide  = 4637;  
        divisor  = 123;     
          
       #1000 $stop;  


	end
      
endmodule

