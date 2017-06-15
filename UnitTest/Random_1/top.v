`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:26 06/13/2017 
// Design Name:    // ChenDung,Liao 
// Module Name:    亂數產生器(Random_1)
// Project Name:   Kmeans
// Description:    
//        output reg[12:0] SampleX;         //樣本X
//        output reg[11:0] SampleY;         //樣本Y
//        output reg ToBlockRam_clka;       //餵給Blocl_Ram的clk
//        output reg[18:0] ADDRA;           //寫入Block_Ram的位址線
//        output reg[11:0] S_VALUE_I;       //寫入Block_Ram的資料線
//        output reg S_VALUE_I;             //寫入Block_Ram的控制線
//        input Random1_clk;                //系統clk
//        input Random1_rst;                //重設
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Random_1(SampleX, SampleY, ToBlockRam_clka, ADDRA, S_VALUE_I, dina,  Random1_clk, Random1_rst);
output reg[11:0] SampleX;         //樣本X
output reg[11:0] SampleY;         //樣本Y
output ToBlockRam_clka;            //餵給Blocl_Ram的clk
output reg[18:0] ADDRA;           //寫入Block_Ram的位址線
output reg[11:0] S_VALUE_I;       //寫入Block_Ram的資料線
output reg dina;             //寫入Block_Ram的控制線
 
input Random1_clk, Random1_rst;   

assign ToBlockRam_clka = Random1_clk;     //餵給Blocl_Ram的clk 與 FSM 相同

reg [31:0]seedcnt;
reg [31:0]ram1;                   //亂數占存器
reg [31:0]divclkcnt;              //除頻占存器
reg [12:0]valueX[127:0];          // 0~127共128個，要符合 [6:0]SampleCnt，共128;
reg [11:0]valueY[127:0];          //即使只計數到100但最大值還是要一致
wire divclk;
assign divclk1=divclkcnt[18];     //實做記得改數字
assign divclk=divclkcnt[5];      //亂數種子除頻

reg[6:0] SampleCnt,BRcnt;              //樣本數量計數器
reg[6:0] i;              

reg flag,switchFlag;
reg [3:0]state;                   //轉態暫存器
parameter idle=3'd0, beginRandom=3'd1, ifRepeat=3'd2, savetoBuf=3'd3,toBlockRam=3'd4, waitState=3'd5, End=3'd6;   

//除頻
always @(posedge Random1_clk or negedge Random1_rst ) begin

  if(~Random1_rst)
      divclkcnt<=32'd0;
  else 
      divclkcnt<=divclkcnt+1;
end

//取得亂數種子
always @(posedge Random1_clk or negedge Random1_rst)begin
  if(~Random1_rst)
    seedcnt<=32'd0;
  else
    seedcnt<=seedcnt+1;
end

//主程式 FSM--Meely 
always @(posedge Random1_clk or negedge Random1_rst)begin
  if(~Random1_rst)begin
      state <= idle;
		SampleCnt <= 7'd0;
		flag <= 0;
  end
  else begin
    case (state)
      idle:begin
          state <= beginRandom;
		end
      beginRandom:begin		
		    state <= ifRepeat;
		end
		ifRepeat:begin
		    if(SampleCnt == 0)begin
			     state <= savetoBuf;
			 end
			 else begin
			     for(i=0; i<SampleCnt; i=i+1)begin
				      if( valueX[i] == SampleX & valueY[i] == SampleY)begin     //如果樣本相同，重新產生樣本
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
			 if(SampleCnt < 7'd99)begin
		        SampleCnt <= SampleCnt + 1;
			     state <= beginRandom;
			 end
		    else begin
			     state <= toBlockRam;
			 end
	   end
		toBlockRam:begin
		    SampleCnt <= SampleCnt - 1;
		    if(SampleCnt > 7'd0)begin
			     state <= waitState;
			 end
			 else begin
			     state <= End;
			 end
		end
		waitState:begin
		    state <= toBlockRam;
		end
		End:begin
		    state <= state;
		end
	 endcase
  end
end

//主程式 FSM--Moore 
always @(state)begin 
  case(state)
	   idle:begin
		    ADDRA <= 19'd0;
			 dina <= 1'd0;
			 BRcnt <= 7'd0;
			 switchFlag <= 1'd0;
		end
	   beginRandom:begin
			 dina <= 1'd0;                                //取消將資料存入Block_Ram
				 	  
			 SampleX[0]<=1;
			 SampleX[1]<=1;
			 SampleX[2]<=1;
			 SampleX[3]<=ram1[9]^ram1[28];
			 SampleX[4]<=ram1[14]^ram1[3];
			 SampleX[5]<=ram1[2]^ram1[27];
			 SampleX[6]<=ram1[21]^ram1[0];
			 SampleX[7]<=ram1[11]^ram1[22];
			 SampleX[8]<=ram1[17]^ram1[16];
			 SampleX[9]<=ram1[31]^ram1[13];
			 SampleX[10]<=ram1[27]^ram1[1];
			 SampleX[11]<=ram1[19]^ram1[22];
			 
			 SampleY[0]<=1;
			 SampleY[1]<=1;
			 SampleY[2]<=1;
			 SampleY[3]<=ram1[2]^ram1[11];
			 SampleY[4]<=ram1[22]^ram1[7];
			 SampleY[5]<=ram1[26]^ram1[10];
			 SampleY[6]<=ram1[21]^ram1[8];
			 SampleY[7]<=ram1[16]^ram1[24];
			 SampleY[8]<=ram1[13]^ram1[15];
			 SampleY[9]<=ram1[7]^ram1[17];
			 SampleY[10]<=ram1[11]^ram1[4];
			 SampleY[11]<=ram1[26]^ram1[20];
		end
	   savetoBuf:begin
		    valueX[SampleCnt] <= SampleX;                   //將資料存入陣列
		    valueY[SampleCnt] <= SampleY;
		end
	   toBlockRam:begin 
		    dina <= 1'd1;                                   //將資料存入Block_Ram
			 
		    case(switchFlag)
			     1'd0:begin
		            S_VALUE_I <= valueX[BRcnt];             //存進Block_Ram
						switchFlag <= 1;
				  end
		        1'd1:begin
			         S_VALUE_I <= valueY[BRcnt];         //存進Block_Ram
						BRcnt <= BRcnt + 1;
						switchFlag <= 0;
				  end
			 endcase
			 
		    ADDRA <= ADDRA +1 ;                          //位址+1
		    
			 //dina <= 1'd1;                               //將資料存入Block_Ram
		end
  endcase
end

always @(posedge Random1_clk or negedge Random1_rst)begin
  if(~Random1_rst)
      ram1<=32'd0;  
  else begin
      if(ram1==32'd0)
		    ram1<=seedcnt;
	   else begin
		    ram1[0]<=ram1[31]^ram1[30];
			 ram1[1]<=ram1[30]^ram1[29];
			 ram1[2]<=ram1[29]^ram1[28];
			 ram1[3]<=ram1[28]^ram1[27];
			 ram1[4]<=ram1[27]^ram1[26];
			 ram1[5]<=ram1[26]^ram1[25];
			 ram1[6]<=ram1[25]^ram1[24];
			 ram1[7]<=ram1[24]^ram1[23];
		    ram1[8]<=ram1[23]^ram1[22];
			 ram1[9]<=ram1[22]^ram1[21];
			 ram1[10]<=ram1[21]^ram1[20];
			 ram1[11]<=ram1[20]^ram1[19];
			 ram1[12]<=ram1[19]^ram1[18];
			 ram1[13]<=ram1[18]^ram1[17];
			 ram1[14]<=ram1[17]^ram1[16];
			 ram1[15]<=ram1[16]^ram1[15];
		    ram1[16]<=ram1[15]^ram1[14];
			 ram1[17]<=ram1[14]^ram1[13];
			 ram1[18]<=ram1[13]^ram1[12];
			 ram1[19]<=ram1[12]^ram1[11];
			 ram1[20]<=ram1[11]^ram1[10];
			 ram1[21]<=ram1[10]^ram1[9];
			 ram1[22]<=ram1[9]^ram1[8];
			 ram1[23]<=ram1[8]^ram1[7];
		    ram1[24]<=ram1[7]^ram1[6];
			 ram1[25]<=ram1[6]^ram1[5];
			 ram1[26]<=ram1[5]^ram1[4];
			 ram1[27]<=ram1[4]^ram1[3];
			 ram1[28]<=ram1[3]^ram1[2];
			 ram1[29]<=ram1[2]^ram1[1];
			 ram1[30]<=ram1[1]^ram1[0];
			 ram1[31]<=ram1[0]^ram1[31];
	   end
  end
end

endmodule 


