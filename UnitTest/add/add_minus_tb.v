`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:21 06/15/2017
// Design Name:   Calculation_add
// Module Name:   D:/project/soc/Kmeans/add/add_minus_tb.v
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

module add_minus_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;
	reg op;

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
		.op(op)
	);

	initial begin
		// Initialize Inputs
		a = 32'd50;
		b = 32'd13;
		cin = 0;
		op = 0;
   
		// Wait 100 ns for global reset to finish
		#200 op = 1;
        
		// Add stimulus here
      
	end
	always #50 begin 
    
      $monitor("%dns monitor: op=%d a=%d b=%d sum=%d", $stime, op, a, b, s);
   end
endmodule

