`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:48 06/17/2017
// Design Name:   Calculation_center
// Module Name:   D:/project/soc/Kmeans/Calculation_center/tb.v
// Project Name:  Calculation_center
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Calculation_center
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
	reg [6:0] coorQ;
	reg [8:0] coorX;
	reg [8:0] coorY;
	reg Center_clk;
	reg Center_rst;

	// Outputs
	wire [31:0] areaout;
	wire tranFlagOUT;
	wire [8:0] voutX;
	wire [8:0] voutY;
	wire [8:0] CenterY;
	wire [8:0] CenterX;

	// Instantiate the Unit Under Test (UUT)
	Calculation_center uut (
		.areaout(areaout), 
		.tranFlagOUT(tranFlagOUT), 
		.voutX(voutX), 
		.voutY(voutY), 
		.CenterY(CenterY), 
		.CenterX(CenterX), 
		.coorQ(coorQ), 
		.coorX(coorX), 
		.coorY(coorY), 
		.Center_clk(Center_clk), 
		.Center_rst(Center_rst)
	);

	initial begin
		// Initialize Inputs
		coorQ = 0;
		coorX = 0;
		coorY = 0;
		Center_clk = 0;
		Center_rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		#5 Center_rst = 1;
      
		#5 coorQ = 5;
		   if(~tranFlagOUT)begin
		       coorX = 9'd53;
		       coorY = 9'd17;
		   end
			else begin
			    #30 ;
			end
		#5	
		   if(~tranFlagOUT)begin
			    coorX = 9'd14;
		       coorY = 9'd245;
		   end
			else begin
			    #30 ;
			end
			
		#5	
		   if(~tranFlagOUT)begin
			    coorX = 9'd107;
		       coorY = 9'd43;
		   end
			else begin
			    #30 ;
			end
		#5	
		   if(~tranFlagOUT)begin
			    coorX = 9'd64;
		       coorY = 9'd8;
		   end
			else begin
			    #30 ;
			end
		#5	
		   if(~tranFlagOUT)begin
			    coorX = 9'd62;
		       coorY = 9'd345;
		   end
			else begin
			    #30 ;
			end
	end
	
   initial begin
	   forever #5 Center_clk = ~Center_clk;
	end 
      
endmodule

