`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:01 06/16/2017 
// Design Name:    ChenDung,Liao
// Module Name:    Calculation_add 
// Project Name:   Kmeans
// Target Devices: 
// Tool versions: 
// Description: 
//                 output [31:0] s,cout;   //s->��結�, cout->��
//                 input add_clk;          
//                 input [31:0]a, b;       //a�X座�, b�Y座�
//                 input cin;              
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Calculation_add(s, cout, a, b, cin, add_clk);
output [31:0] s,cout;
input add_clk;
input [31:0]a, b;
input cin;

fa1 fa1(s[0],cout[0],a[0],b[0],cin);
fa1 fa2(s[1],cout[1],a[1],b[1],cout[0]);
fa1 fa3(s[2],cout[2],a[2],b[2],cout[1]);
fa1 fa4(s[3],cout[3],a[3],b[3],cout[2]);
fa1 fa5(s[4],cout[4],a[4],b[4],cout[3]);
fa1 fa6(s[5],cout[5],a[5],b[5],cout[4]); 
fa1 fa7(s[6],cout[6],a[6],b[6],cout[5]);
fa1 fa8(s[7],cout[7],a[7],b[7],cout[6]);
fa1 fa9(s[8],cout[8],a[8],b[8],cout[7]);
fa1 fa10(s[9],cout[9],a[9],b[9],cout[8]);
fa1 fa11(s[10],cout[10],a[10],b[10],cout[9]);
fa1 fa12(s[11],cout[11],a[11],b[11],cout[10]);
fa1 fa13(s[12],cout[12],a[12],b[12],cout[11]);
fa1 fa14(s[13],cout[13],a[13],b[13],cout[12]);
fa1 fa15(s[14],cout[14],a[14],b[14],cout[13]);
fa1 fa16(s[15],cout[15],a[15],b[15],cout[14]);
fa1 fa17(s[16],cout[16],a[16],b[16],cout[15]);
fa1 fa18(s[17],cout[17],a[17],b[17],cout[16]);
fa1 fa19(s[18],cout[18],a[18],b[18],cout[17]);
fa1 fa20(s[19],cout[19],a[19],b[19],cout[18]);
fa1 fa21(s[20],cout[20],a[20],b[20],cout[19]);
fa1 fa22(s[21],cout[21],a[21],b[21],cout[20]);
fa1 fa23(s[22],cout[22],a[22],b[22],cout[21]);
fa1 fa24(s[23],cout[23],a[23],b[23],cout[22]);
fa1 fa25(s[24],cout[24],a[24],b[24],cout[23]);
fa1 fa26(s[25],cout[25],a[25],b[25],cout[24]);
fa1 fa27(s[26],cout[26],a[26],b[26],cout[25]);
fa1 fa28(s[27],cout[27],a[27],b[27],cout[26]);
fa1 fa29(s[28],cout[28],a[28],b[28],cout[27]);
fa1 fa30(s[29],cout[29],a[29],b[29],cout[28]);
fa1 fa31(s[30],cout[30],a[30],b[30],cout[29]);
fa1 fa32(s[31],cout[31],a[31],b[31],cout[30]);
endmodule

module fa1(s,cout,a,b,cin);
output s,cout;
input a,b,cin;

assign s=a^b^cin;
assign cout=(a&b)|(cin&(a^b));

endmodule
