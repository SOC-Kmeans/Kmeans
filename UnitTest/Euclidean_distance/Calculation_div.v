`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:29 06/15/2017 
// Design Name: 
// Module Name:    Calculation_div 
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
module Calculation_div(quotient, residue, divide, divisor);
output reg[31:0] quotient, residue;     //坝计, 緇计            
input [31:0] divide;                //砆埃计
input [31:0] divisor;               //埃计

reg[31:0] tempa;  
reg[31:0] tempb;  
reg[63:0] temp_a;  
reg[63:0] temp_b;  

integer i; 

always @(divide or divisor)  
begin  
    tempa  <= divide;  
    tempb  <= divisor;  
end  
  
always @(tempa or tempb)  
begin  
    temp_a  = {32'h00000000,tempa};  
    temp_b  = {tempb,32'h00000000};   
    for( i  =  0 ;i  < 32 ; i  =  i  + 1)   
        begin  
            temp_a  = {temp_a[62:0],1'b0};  
            if(temp_a[63:32]  >= tempb)  
                temp_a  =  temp_a  - temp_b + 1'b1;  
            else  
                temp_a  =  temp_a ;  
        end  
  
    quotient  <= temp_a[31:0];  
    residue  <= temp_a[63:32];  
end  


endmodule

