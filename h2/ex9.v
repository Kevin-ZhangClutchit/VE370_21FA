`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 13:41:46
// Design Name: 
// Module Name: ex9
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

module ex9 (
    in,out
);
input [31:0] in;
output [31:0] out;
reg [31:0] out;
always @(*) begin
//I-type
if (in[6:0]==7'b0000011||in[6:0]==7'b0001111||in[6:0]==7'b0010011||in[6:0]==7'b1100111||in[6:0]==7'b1110011) begin
 out <= {20'b00000000000000000000,in[31:20]};
 end
//U-type
if (in[6:0]==7'b0110111)begin
out <= {12'b000000000000,in[31:12]};
 end
 //J-type
 if (in[6:0]==7'b1101111)begin
out <= {12'b00000000000000000000,in[31],in[19:12],in[20],in[30:21]};
 end
 //S-type
 if (in[6:0]==7'b0100011)begin
out <= {20'b000000000000,in[31:25],in[11:7]};
 end
  //B-type
 if (in[6:0]==7'b1100011)begin
out <= {20'b000000000000,in[31],in[7],in[30:25],in[11:8]};
 end
end
endmodule
