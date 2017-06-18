`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:25 10/17/2016 
// Design Name: 
// Module Name:    vga 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga(   clk,   rst,redout,greenout,blueout,H,V, addrb ,doutb );
input clk;
input rst;
input [11:0]doutb;
output reg  [3:0]redout, greenout, blueout;
output reg   H, V ;
output reg [18:0]addrb;
parameter B=96,C=16,D=640,E=48,A=(B + C + D + E),P=2,Q=10,R=480,S=33,O=(P + Q + R + S);
reg [9:0]horizontal;
reg [9:0]vertical;

//assign Rout_4bits = {3,Rout};

	
    always @(posedge clk ) begin
	     if  (horizontal < A - 1  )
          horizontal <= horizontal + 1;
        else begin
          horizontal <= 0;
			 if  (vertical < O - 1)  
            vertical <= vertical + 1;
          else
            vertical <= 0; 
	     end
   			
      if ( horizontal >= (D + E)  &&  horizontal < (D + E + B) )
        H <= 0;
      else
        H <= 1;
    

  
      if  (vertical >= (R + S)  &&  vertical < (R + S + P) )
        V <= 0;
      else
        V <= 1;
		  
		  
		addrb<=horizontal+vertical*640;
		
		redout[3]<=doutb[11];
		redout[2]<=doutb[10];
		redout[1]<=doutb[9];
		redout[0]<=doutb[8];
		
		greenout[3]<=doutb[7];
		greenout[2]<=doutb[6];
		greenout[1]<=doutb[5];
		greenout[0]<=doutb[4];
		
		blueout[3]<=doutb[3];
		blueout[2]<=doutb[2];
		blueout[1]<=doutb[1];
		blueout[0]<=doutb[0];
		/*Rout<=doutb[2];
		Gout<=doutb[1];
		Bout<=doutb[0];*/
		  
		  
		    /*  if  (vertical >0 && vertical <480 && horizontal > 0&& horizontal < 640)
	   begin
      blueout <= 1;
		redout <= 0;
		greenout <= 0;
		end
		
	else if  (vertical >250 && vertical < 300 && horizontal > 50&& horizontal <90 )
	   begin
      blueout <= 0;
		redout <= 0;
		greenout <= 8;
		end
	
		
	
	
    else 
	  begin
      blueout <= 15;
		redout <= 15;
	   greenout <= 15;
	   end
		
		 end*/
		 end
endmodule
