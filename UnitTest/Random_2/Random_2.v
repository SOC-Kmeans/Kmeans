`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:12 06/13/2017 
// Design Name:    ChenDung,Liao 
// Module Name:    Random_2 
// Project Name:   Kmeans
// Target Devices: 
// Tool versions: 
// Description: 亂數產生器(Random_2)
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Random_2(Group_coorX, Group_coorY, Group_quanO, Group_quanI,  Random2_clk, Random2_rst);
output reg[8:0] Group_coorX, Group_coorY;      //族群座標X, Y
output reg[2:0] Group_quanO;                   //族群數量輸出

input [3:0] Group_quanI;                       //族群數量輸入
input Random2_clk, Random2_rst;                //系統clk ,rst

reg [31:0]seedcnt;                
reg [31:0]ram2;                   //亂數占存器
reg [31:0]divclkcnt;              //除頻占存器

reg [8:0]valueX[7:0];          // 0~7共8個，要符合 [2:0]GroupCnt，共8;
reg [8:0]valueY[7:0];          //即使只計數到5但最大值還是要一致

assign divclk1=divclkcnt[18];     //實做記得改數字
assign divclk=divclkcnt[5];      //亂數種子除頻

reg[2:0] GroupCnt;              //族群數量計數器
reg[6:0] i;    

reg flag;

reg [3:0]state;                   //轉態暫存器
parameter idle=3'd0, waitState=3'd1, beginRandom=3'd2, ifRepeat=3'd3, savetoBuf=3'd4, End=3'd5;     //狀態

//除頻
always @(posedge Random2_clk or negedge Random2_rst ) begin

  if(~Random2_rst)
      divclkcnt<=32'd0;
  else 
      divclkcnt<=divclkcnt+1;
end

//取得亂數種子
always @(posedge Random2_clk or negedge Random2_rst)begin
  if(~Random2_rst)
    seedcnt<=32'd0;
  else
    seedcnt<=seedcnt+1;
end

//主程式 FSM--Meely 
always @(posedge Random2_clk or negedge Random2_rst)begin
  if(~Random2_rst)begin
      state <= idle;
		GroupCnt <= 3'd0;
		flag <= 0;
  end
  else begin
    case (state)
      idle:begin
          state <= waitState;
		end
		waitState:begin
		    if(Group_quanI > 0)begin
			     state <= beginRandom;
			 end
			 else begin
			     state <= waitState;
			 end
		end
      beginRandom:begin		
		    state <= ifRepeat;
		end
		ifRepeat:begin
		    if(GroupCnt == 0)begin
			     state <= savetoBuf;
			 end
			 else begin
			     for(i=0; i<GroupCnt; i=i+1)begin
				      if( valueX[i] == Group_coorX & valueY[i] == Group_coorY)begin     //如果樣本相同，重新產生樣本
						    flag <= 1;
						end
						else begin
						    flag <= flag;
						end
				  end
				  
				  if(flag == 1)
				      state <= beginRandom;
				  else 
				      state <= savetoBuf;
			 end
		end
		savetoBuf:begin
			 if(GroupCnt < Group_quanI-1)begin
		        GroupCnt <= GroupCnt + 1;
			     state <= beginRandom;
			 end
		    else begin
			     state <= End;
			 end
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
	   beginRandom:begin
		    Group_quanO <= Group_quanI;
			  
			 Group_coorX[0]<=ram2[31]^ram2[13];
			 Group_coorX[1]<=ram2[27]^ram2[1];
			 Group_coorX[2]<=ram2[19]^ram2[22];
			 Group_coorX[3]<=ram2[9]^ram2[28];
			 Group_coorX[4]<=ram2[14]^ram2[3];
			 Group_coorX[5]<=ram2[2]^ram2[27];
			 Group_coorX[6]<=ram2[21]^ram2[0];
			 Group_coorX[7]<=ram2[11]^ram2[22];
			 Group_coorX[8]<=ram2[17]^ram2[16];
			 
			 Group_coorY[0]<=ram2[7]^ram2[17]^ram2[22];
			 Group_coorY[1]<=ram2[14]^ram2[4]^ram2[11];
			 Group_coorY[2]<=ram2[26]^ram2[20]^ram2[14];
			 Group_coorY[3]<=ram2[2]^ram2[11]^ram2[5];
			 Group_coorY[4]<=ram2[22]^ram2[7]^ram2[31];
			 Group_coorY[5]<=ram2[11]^ram2[10]^ram2[25];
			 Group_coorY[6]<=ram2[21]^ram2[8]^ram2[15];
			 Group_coorY[7]<=ram2[16]^ram2[24]^ram2[7];
			 Group_coorY[8]<=ram2[13]^ram2[15]^ram2[1];
		end
	   savetoBuf:begin
		    valueX[GroupCnt] <= Group_coorX;                   //將資料存入陣列
		    valueY[GroupCnt] <= Group_coorY;
		end
  endcase
end

//亂數產生
always @(posedge Random2_clk or negedge Random2_rst)begin
  if(~Random2_rst)
      ram2<=32'd0;  
  else begin
      if(ram2==32'd0)
		    ram2<=seedcnt;
	   else begin
		    ram2[0]<=ram2[31]^ram2[30];
			 ram2[1]<=ram2[30]^ram2[29];
			 ram2[2]<=ram2[29]^ram2[28];
			 ram2[3]<=ram2[28]^ram2[27];
			 ram2[4]<=ram2[27]^ram2[26];
			 ram2[5]<=ram2[26]^ram2[25];
			 ram2[6]<=ram2[25]^ram2[24];
			 ram2[7]<=ram2[24]^ram2[23];
		    ram2[8]<=ram2[23]^ram2[22];
			 ram2[9]<=ram2[22]^ram2[21];
			 ram2[10]<=ram2[21]^ram2[20];
			 ram2[11]<=ram2[20]^ram2[19];
			 ram2[12]<=ram2[19]^ram2[18];
			 ram2[13]<=ram2[18]^ram2[17];
			 ram2[14]<=ram2[17]^ram2[16];
			 ram2[15]<=ram2[16]^ram2[15];
		    ram2[16]<=ram2[15]^ram2[14];
			 ram2[17]<=ram2[14]^ram2[13];
			 ram2[18]<=ram2[13]^ram2[12];
			 ram2[19]<=ram2[12]^ram2[11];
			 ram2[20]<=ram2[11]^ram2[10];
			 ram2[21]<=ram2[10]^ram2[9];
			 ram2[22]<=ram2[9]^ram2[8];
			 ram2[23]<=ram2[8]^ram2[7];
		    ram2[24]<=ram2[7]^ram2[6];
			 ram2[25]<=ram2[6]^ram2[5];
			 ram2[26]<=ram2[5]^ram2[4];
			 ram2[27]<=ram2[4]^ram2[3];
			 ram2[28]<=ram2[3]^ram2[2];
			 ram2[29]<=ram2[2]^ram2[1];
			 ram2[30]<=ram2[1]^ram2[0];
			 ram2[31]<=ram2[0]^ram2[31];
	   end
  end
end

endmodule
