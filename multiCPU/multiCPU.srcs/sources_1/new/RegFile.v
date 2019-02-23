`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/01 10:11:06
// Design Name: 
// Module Name: Regfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RegFile(CLK,RST,RegWre,ReadReg1,ReadReg2,WriteReg,WriteData,ReadData1,ReadData2);
    input CLK;
    input RST;
    input RegWre;
    input [4:0] ReadReg1;
    input [4:0] ReadReg2;
    input [4:0] WriteReg;
    input [31:0] WriteData;
    output [31:0] ReadData1;
    output [31:0] ReadData2;
    
    reg [31:0] regFile[1:31]; // �Ĵ������������reg ����
    integer i;
    initial begin
    for(i=1;i<32;i=i+1)
         regFile[i] <= 0;    
    end
    assign ReadData1 = (ReadReg1 == 0) ? 0 : regFile[ReadReg1]; // ���Ĵ�������
    assign ReadData2 = (ReadReg2 == 0) ? 0 : regFile[ReadReg2];
    always @ (negedge CLK or negedge RST) begin // ������ʱ�ӱ��ش���
      if (RST==0) begin
        for(i=1;i<32;i=i+1)
            regFile[i] <= 0;
         end
    else if(RegWre == 1 && WriteReg != 0) // WriteReg != 0��$0 �Ĵ��������޸�
        regFile[WriteReg] <= WriteData; // д�Ĵ���
    end

endmodule
