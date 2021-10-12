`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 10:55:53
// Design Name: 
// Module Name: ex8
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


module ex8(rs1,rs2,rd,data_in,reg_write,read_data1,read_data2);
    input [4:0] rs1,rs2,rd;
    input reg_write;
    input [31:0] data_in;
    output [31:0] read_data1,read_data2;
    reg [31:0] read_data1;
    reg [31:0] read_data2;
    reg [31:0] registers [0:31];
    always @(*) begin
    if (reg_write==1)begin
    registers[rd]<=data_in;
    end
    read_data1<=registers[rs1];
    read_data2<=registers[rs2];
    end
    
endmodule

