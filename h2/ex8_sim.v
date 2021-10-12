`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 15:09:24
// Design Name: 
// Module Name: test1
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


module test1(

    );
   reg [4:0] rs1,rs2,rd;
    reg reg_write;
    reg [31:0] data_in;
    wire [31:0] read_data1;
    wire [31:0] read_data2;
   ex8 test(rs1,rs2,rd,data_in,reg_write,read_data1,read_data2);
    initial begin
        #0 reg_write=1;rs1=1;rs2=1;rd=1;data_in=15;
        #10 data_in=12;rd=11;
        #10 data_in=10; rd=12;
        #10 data_in=9;rd=13;rs1=11;rs2=12;
    end
endmodule
