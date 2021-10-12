`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/11 14:25:46
// Design Name: 
// Module Name: sim1
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


module sim1(

    );
    reg [31:0] in;
    wire [31:0] out;
   ex9 test(in,out);
    initial begin
        #0 in=32'b00000000010010100000010010010011;
        #50 in=32'b11111110100110100010111000100011;
        #50 in=32'b11111111010110100000110011100011;
        #50 in=32'b00010010001101000101101000110111;
        #50 in=32'b00000001110000000000000011101111;
    end
endmodule
