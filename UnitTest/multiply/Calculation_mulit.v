`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:54 06/17/2017 
// Design Name:    ChenDung,Liao
// Module Name:    Calculation_mulit 
// Project Name:   Kmeans
// Target Devices: 
// Tool versions: 
// Description: 
//                 output [31:0] mul_out;         乘法輸出
//                 input [15:0] mul_a, mul_b;     mul_a 乘法輸入X, mul_b 乘法輸入Y
//                 input mulit_clk;               時脈
//                 input mulit_rst;               重置
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Calculation_mulit(mul_out, mul_a, mul_b, mulit_clk, mulit_rst);
output reg[31:0] mul_out;              //2個輸入之最高位元相加  ex: a,b 最高為16bit, 此輸出最高需要32bit
input [15:0] mul_a, mul_b;          //輸入看幾bit
input mulit_clk; 
input mulit_rst; 
         
reg [31:0] stored0;                 //這裡的個數看輸入bit數
reg [31:0] stored1;  
reg [31:0] stored2; 
reg [31:0] stored3; 
reg [31:0] stored4; 
reg [31:0] stored5; 
reg [31:0] stored6; 
reg [31:0] stored7; 
reg [31:0] stored8; 
reg [31:0] stored9; 
reg [31:0] stored10; 
reg [31:0] stored11; 
reg [31:0] stored12; 
reg [31:0] stored13; 
reg [31:0] stored14; 
reg [31:0] stored15; 


reg [31:0] mul_out01;              //add 個數 / 2     
reg [31:0] mul_out23; 
reg [31:0] mul_out45; 
reg [31:0] mul_out67; 


reg [31:0] add01;                  //stored 個數 / 2
reg [31:0] add23; 
reg [31:0] add45; 
reg [31:0] add67; 
reg [31:0] add89; 
reg [31:0] add1011; 
reg [31:0] add1213; 
reg [31:0] add1415; 


always @(posedge mulit_clk or negedge mulit_rst) begin 
    if(~mulit_rst) begin
        mul_out <= 0; 
        stored0 <= 0; 
        stored1 <= 0;
        stored2 <= 0;
        stored3 <= 0;
        stored4 <= 0; 
        stored5 <= 0;
        stored6 <= 0;
        stored7 <= 0;
        stored8 <= 0; 
        stored9 <= 0;
        stored10 <= 0;
        stored11 <= 0;
        stored12 <= 0; 
        stored13 <= 0;
        stored14 <= 0;
        stored15 <= 0;

        add01 <= 0;
        add23 <= 0;
        add45 <= 0;
        add67 <= 0; 
        add89 <= 0;
        add1011 <= 0;
        add1213 <= 0;
        add1415 <= 0;  
    end
    else begin
        stored0 <= mul_b[0]? {16'b0, mul_a} : 32'b0;
        stored1 <= mul_b[1]? {15'b0, mul_a, 1'b0} : 32'b0;
        stored2 <= mul_b[2]? {14'b0, mul_a, 2'b0} : 32'b0;
        stored3 <= mul_b[3]? {13'b0, mul_a, 3'b0} : 32'b0;
        stored4 <= mul_b[4]? {12'b0, mul_a, 4'b0} : 32'b0;
        stored5 <= mul_b[5]? {11'b0, mul_a, 5'b0} : 32'b0;
        stored6 <= mul_b[6]? {10'b0, mul_a, 6'b0} : 32'b0;
        stored7 <= mul_b[7]? {9'b0, mul_a, 7'b0} : 32'b0;
        stored8 <= mul_b[8]? {8'b0, mul_a, 8'b0} : 32'b0;
        stored9 <= mul_b[9]? {7'b0, mul_a, 9'b0} : 32'b0;
        stored10 <= mul_b[10]? {6'b0, mul_a, 10'b0} : 32'b0;
        stored11 <= mul_b[11]? {5'b0, mul_a, 11'b0} : 32'b0;
        stored12 <= mul_b[12]? {4'b0, mul_a, 12'b0} : 32'b0;
        stored13 <= mul_b[13]? {3'b0, mul_a, 13'b0} : 32'b0;
        stored14 <= mul_b[14]? {2'b0, mul_a, 14'b0} : 32'b0;
        stored15 <= mul_b[15]? {1'b0, mul_a, 15'b0} : 32'b0;
		  
        add01 <= stored1 + stored0;
        add23 <= stored3 + stored2;
        add45 <= stored5 + stored4;
        add67 <= stored7 + stored6;
        add89 <= stored9 + stored8;
        add1011 <= stored11 + stored10;
        add1213 <= stored13 + stored12;
        add1415 <= stored15 + stored14;

        mul_out01 <= add01 + add23;
        mul_out23 <= add45 + add67;
        mul_out45 <= add89 + add1011;
        mul_out67 <= add1213 + add1415;
		  
        mul_out <= mul_out01 + mul_out23 + mul_out45 + mul_out67;

    end 
end 

endmodule
