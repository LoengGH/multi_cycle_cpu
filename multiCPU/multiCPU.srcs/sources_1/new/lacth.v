`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/08 13:49:56
// Design Name: 
// Module Name: lacth
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


module lacth ( d,z,sel);
        input d,sel;           
        output z;
    // ����ڸ����������±���û�и�ֵ���������������ԭֵ��������һ��������     
    always @(sel or d) begin
           if(sel == 1'b1)
                 z <= d;              // ��������ֵ��     
    end 
endmodule