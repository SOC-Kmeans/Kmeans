`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:43 06/16/2017
// Design Name:   Calculation_add
// Module Name:   D:/project/soc/Kmeans/add/add_tb.v
// Project Name:  add
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module add_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;
	reg add_clk;

	// Outputs
	wire [31:0] s;
	wire [31:0] cout;

	// Instantiate the Unit Under Test (UUT)
	Calculation_add uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin), 
		.add_clk(add_clk) 
	);

	initial begin
		// Initialize Inputs
		a = 32'd50;
		b = 32'd13;
		cin = 0;
		add_clk = 0;
		// Wait 100 ns for global reset to finish
		#200 a = 32'd105;
		     b = 32'd256;
        
		// Add stimulus here

	end
	
endmodule

