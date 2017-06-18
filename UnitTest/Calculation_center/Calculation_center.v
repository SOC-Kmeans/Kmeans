`timescale 1ns / 1ps
`include "Calculation_mulit.v"
`include "Calculation_minus.v"
`include "Calculation_div.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:16 06/17/2017 
// Design Name: 
// Module Name:    Calculation_center 
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
module Calculation_center(areaout, tranFlagOUT, voutX, voutY, CenterY, CenterX, coorQ, coorX, coorY, Center_clk, Center_rst);
output [31:0]areaout;
output [8:0]voutX;
output [8:0]voutY;
output reg tranFlagOUT;
output reg[8:0] CenterX, CenterY;
input [6:0] coorQ;
input [8:0] coorX, coorY;
input Center_clk, Center_rst;

reg[6:0] coor_cnt, area_cnt, centerX_cnt, centerY_cnt;
reg[8:0] valueX [8:0];
reg[8:0] valueY [8:0];
reg[15:0] area;

reg[31:0] Result1, Result2;
wire[31:0] mulitResult1, mulitResult2;
wire[31:0] minusResult1;
wire[31:0] divResult1;

reg[8:0] amount;
integer i;

reg [3:0]state;                   //轉態暫存器
parameter idle=3'd0, getCoor=3'd1, calcArea=3'd2, calcCenterX=3'd3, calcCenterY=3'd4, change=3'd5, End=3'd6;     //狀態

Calculation_mulit m1(.mul_out(mulitResult1), .mul_a(valueX[area_cnt]), .mul_b(valueY[area_cnt+1]), .mulit_clk(Center_clk), .mulit_rst(Center_rst));
Calculation_mulit m2(.mul_out(mulitResult2), .mul_a(valueX[area_cnt+1]), .mul_b(valueY[area_cnt]), .mulit_clk(Center_clk), .mulit_rst(Center_rst));
Calculation_minus m3(.sum(minusResult1), .s(), .cout(), .inputX(mulitResult1), .inputY(mulitResult2), .cin(0), .minus_clk(Center_clk));		
Calculation_div m4(.quotient(divResult1), .residue(), .divide(area), .divisor(2));


assign areaout = divResult1;
assign voutX = valueX[area_cnt];
assign voutY = valueY[area_cnt];

//主程式 FSM--Meely 
always @(posedge Center_clk or negedge Center_rst)begin
  if(~Center_rst)begin
      state <= idle;
		coor_cnt <= 7'd0;
  end
  else begin
    case (state)
      idle:begin
		    if(coorQ != 0)
              state <= getCoor;
			 else 
			     state <= idle;
		end
		getCoor:begin
		    if(coor_cnt < coorQ-1)begin
			     state <= idle;
			     coor_cnt <= coor_cnt + 1;
		    end
			 else begin
			     state <= calcArea;
			 end
		end
      calcArea:begin		
		    if(area_cnt < coorQ-1)begin
			     state <= change;
		    end
			 else begin
			     state <= calcCenterX;
			 end
			 
		end
		calcCenterX:begin
		    if(centerX_cnt < coorQ-1)begin
			     state <= calcCenterX;
		    end
			 else begin
			     state <= calcCenterY;
			 end
		end
		calcCenterY:begin
			 if(centerY_cnt < coorQ-1)begin
			     state <= calcCenterY;
		    end
			 else begin
			     state <= End;
			 end
	   end
	   change:begin
		    state <= calcArea;
		end
		End:begin
		    state <= End;
		end
	 endcase
  end
end

//主程式 FSM--Moore 
always @(state)begin 
  case(state)
      idle:begin
		    area_cnt <= 7'd0;
		    centerX_cnt <= 7'd0;
		    centerY_cnt <= 7'd0;
		    area <= 16'd0;
			 amount <= coorQ-1;
		    tranFlagOUT <= 1'd0;
		end
	   getCoor:begin
		    valueX[coor_cnt] <= coorX;
		    valueY[coor_cnt] <= coorY; 
		    tranFlagOUT <= 1'd1;
 		end
	   calcArea:begin
		    area <= area + minusResult1;
			 area_cnt <= area_cnt + 1; 
		   
			 
		end
  endcase
end

endmodule
