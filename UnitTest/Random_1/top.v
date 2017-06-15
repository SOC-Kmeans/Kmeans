`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:26 06/13/2017 
// Design Name:    // ChenDung,Liao 
// Module Name:    �üƲ��;�(Random_1)
// Project Name:   Kmeans
// Description:    
//        output reg[12:0] SampleX;         //�˥�X
//        output reg[11:0] SampleY;         //�˥�Y
//        output reg ToBlockRam_clka;       //����Blocl_Ram��clk
//        output reg[18:0] ADDRA;           //�g�JBlock_Ram����}�u
//        output reg[11:0] S_VALUE_I;       //�g�JBlock_Ram����ƽu
//        output reg S_VALUE_I;             //�g�JBlock_Ram������u
//        input Random1_clk;                //�t��clk
//        input Random1_rst;                //���]
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Random_1(SampleX, SampleY, ToBlockRam_clka, ADDRA, S_VALUE_I, dina,  Random1_clk, Random1_rst);
output reg[11:0] SampleX;         //�˥�X
output reg[11:0] SampleY;         //�˥�Y
output ToBlockRam_clka;            //����Blocl_Ram��clk
output reg[18:0] ADDRA;           //�g�JBlock_Ram����}�u
output reg[11:0] S_VALUE_I;       //�g�JBlock_Ram����ƽu
output reg dina;             //�g�JBlock_Ram������u
 
input Random1_clk, Random1_rst;   

assign ToBlockRam_clka = Random1_clk;     //����Blocl_Ram��clk �P FSM �ۦP

reg [31:0]seedcnt;
reg [31:0]ram1;                   //�üƥe�s��
reg [31:0]divclkcnt;              //���W�e�s��
reg [12:0]valueX[127:0];          // 0~127�@128�ӡA�n�ŦX [6:0]SampleCnt�A�@128;
reg [11:0]valueY[127:0];          //�Y�ϥu�p�ƨ�100���̤j���٬O�n�@�P
wire divclk;
assign divclk1=divclkcnt[18];     //�갵�O�o��Ʀr
assign divclk=divclkcnt[5];      //�üƺؤl���W

reg[6:0] SampleCnt,BRcnt;              //�˥��ƶq�p�ƾ�
reg[6:0] i;              

reg flag,switchFlag;
reg [3:0]state;                   //��A�Ȧs��
parameter idle=3'd0, beginRandom=3'd1, ifRepeat=3'd2, savetoBuf=3'd3,toBlockRam=3'd4, waitState=3'd5, End=3'd6;   

//���W
always @(posedge Random1_clk or negedge Random1_rst ) begin

  if(~Random1_rst)
      divclkcnt<=32'd0;
  else 
      divclkcnt<=divclkcnt+1;
end

//���o�üƺؤl
always @(posedge Random1_clk or negedge Random1_rst)begin
  if(~Random1_rst)
    seedcnt<=32'd0;
  else
    seedcnt<=seedcnt+1;
end

//�D�{�� FSM--Meely 
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
				      if( valueX[i] == SampleX & valueY[i] == SampleY)begin     //�p�G�˥��ۦP�A���s���ͼ˥�
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

//�D�{�� FSM--Moore 
always @(state)begin 
  case(state)
	   idle:begin
		    ADDRA <= 19'd0;
			 dina <= 1'd0;
			 BRcnt <= 7'd0;
			 switchFlag <= 1'd0;
		end
	   beginRandom:begin
			 dina <= 1'd0;                                //�����N��Ʀs�JBlock_Ram
				 	  
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
		    valueX[SampleCnt] <= SampleX;                   //�N��Ʀs�J�}�C
		    valueY[SampleCnt] <= SampleY;
		end
	   toBlockRam:begin 
		    dina <= 1'd1;                                   //�N��Ʀs�JBlock_Ram
			 
		    case(switchFlag)
			     1'd0:begin
		            S_VALUE_I <= valueX[BRcnt];             //�s�iBlock_Ram
						switchFlag <= 1;
				  end
		        1'd1:begin
			         S_VALUE_I <= valueY[BRcnt];         //�s�iBlock_Ram
						BRcnt <= BRcnt + 1;
						switchFlag <= 0;
				  end
			 endcase
			 
		    ADDRA <= ADDRA +1 ;                          //��}+1
		    
			 //dina <= 1'd1;                               //�N��Ʀs�JBlock_Ram
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


