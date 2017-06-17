`timescale 1ns / 1ps
`include "Calculation_minus.v"
`include "Calculation_div.v"
`include "Calculation_mulit.v"
`include "Calculation_add.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:01 06/17/2017 
// Design Name: 
// Module Name:    Calculation_distance 
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
module Calculation_distance(distance_outQ, distance_outR, distance_X1, distance_X2, distance_Y1, distance_Y2, distance_clk, distance_rst);
output [31:0] distance_outQ, distance_outR;
input [9:0] distance_X1, distance_X2, distance_Y1, distance_Y2;   //輸入2個座標
input distance_clk, distance_rst;

reg[31:0] X1out, X2out, Y1out, Y2out;
wire[15:0] minusOut1, minusOut2;      //減法結果輸出
wire[31:0] s1, s2, s3, cout1, cout2, cout3;
wire[31:0] mulitOut1, mulitOut2;      //乘法結果輸出

Calculation_minus m1(.sum(minusOut1), .s(s1), .cout(cout1), .inputX(X1out), .inputY(X2out), .cin(0), .minus_clk(distance_clk));      //x1 - x2
Calculation_minus m2(.sum(minusOut2), .s(s2), .cout(cout2), .inputX(Y1out), .inputY(Y2out), .cin(0), .minus_clk(distance_clk));      //y1 - y2
Calculation_mulit m3(.mul_out(mulitOut1), .mul_a(minusOut1), .mul_b(minusOut1), .mulit_clk(distance_clk), .mulit_rst(distance_rst));  // (x1-x2)^2 
Calculation_mulit m4(.mul_out(mulitOut2), .mul_a(minusOut2), .mul_b(minusOut2), .mulit_clk(distance_clk), .mulit_rst(distance_rst));  // (y1-y2)^2
Calculation_add m5(.s(s3), .cout(cout3), .a(mulitOut1), .b(mulitOut2), .cin(0), .add_clk(distance_clk));                   // (x1-x2)^2 + (y1-y2)^2
root m6(.rootResult(distance_outQ), .rootResidue(distance_outR), .inputNum(s3), .root_clk(distance_clk), .root_rst(distance_rst));
//Calculation_div(quotient, residue, divide, divisor);

always@(posedge distance_clk)begin

    if(distance_X1 > distance_X2)begin
	     X1out <= distance_X1;
		  X2out <= distance_X2;
		  if(distance_Y1 > distance_Y2)begin
	         Y1out <= distance_Y1;
		      Y2out <= distance_Y2;
        end 
	     else begin 
	         Y1out <= distance_Y2;
	         Y2out <= distance_Y1;
	     end
    end 
	 else begin 
	     X1out <= distance_X2;
	     X2out <= distance_X1;
		  if(distance_Y1 > distance_Y2)begin
	         Y1out <= distance_Y1;
		      Y2out <= distance_Y2;
        end 
	     else begin 
	         Y1out <= distance_Y2;
	         Y2out <= distance_Y1;
	     end
	 end
    
end 

endmodule

module root(rootResult, rootResidue, inputNum, root_clk, root_rst);
output reg[31:0] rootResult;
output [31:0] rootResidue;
input [31:0] inputNum;
input root_clk, root_rst;

reg [1:0]state;
reg [31:0]cnt;
wire[31:0]mulitOut;
reg [31:0]resultbefore, resultafter;
wire [31:0] divQ, divR;

Calculation_mulit m1(.mul_out(mulitOut), .mul_a(cnt), .mul_b(cnt), .mulit_clk(root_clk), .mulit_rst(root_rst));  // (x1-x2)^2 
Calculation_div m2(.quotient(divQ), .residue(rootResidue), .divide(inputNum), .divisor(mulitOut));   

parameter square=2'd0, compare=2'd1, getAns=2'd2, End=2'd3;

always@(posedge root_clk or negedge root_rst)begin
    if(~root_rst)begin
	     state <= square;
		  cnt <= 32'd0;
	 end
    else begin
	     case(state)
		      square:begin
				    if(inputNum != 32'hz | inputNum != 32'hx | inputNum != 32'd0)begin
				        state <= compare;
				        cnt <= cnt + 1;
					 end
					 else begin
					     state <= square;
					 end
				end
				compare:begin
				    if(resultafter < inputNum)begin
					     state <= square;
					 end
					 else begin
					     state <= getAns;
					 end
				end
				getAns:begin
				    cnt <= cnt - 32'd4;         //答案會延遲4個clock
				    state <= End;
				end
				End:begin
				    cnt <= cnt;
				    state <= End;
				end
				
		  endcase
	  
	 end

end

always@(state)begin
    case(state)
	     square:begin
		      resultbefore <= mulitOut;
		  end
		  compare:begin
		      resultafter <= mulitOut;
	     end
		  getAns:begin
		      rootResult <= cnt;
		  end
		  End:begin
		      rootResult <= cnt;
		  end
		  
	 endcase


end

endmodule

















