`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 16:13:16
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0] s,
    output [3:0] an
    );

   
    assign an = s == 0 ? 4'b1110 :
                s == 1 ? 4'b1101 :
                s == 2 ? 4'b1011 :
                s == 3 ? 4'b0111 :
                4'bxxxx;

endmodule
