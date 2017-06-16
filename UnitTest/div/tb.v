`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:41:04 06/16/2017
// Design Name:   div_rill
// Module Name:   D:/project/soc/Kmeans/division/tb.v
// Project Name:  division
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div_rill
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
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] yshang;
	wire [31:0] yyushu;

	// Instantiate the Unit Under Test (UUT)
	div_rill uut (
		.a(a), 
		.b(b), 
		.yshang(yshang), 
		.yyushu(yyushu)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		 #10  a  = 6841;  
        b  = 4532;  
          
       #100  a  = 453;  
        b  = 274;  
          
       #100  a  = 4637;  
        b  = 123;     
          
       #1000 $stop;  
		// Add stimulus here

	end
      
endmodule

