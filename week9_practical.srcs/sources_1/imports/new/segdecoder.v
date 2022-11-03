`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 14:12:55
// Design Name: 
// Module Name: segdecoder
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


module segdecoder(
    input [3:0] b,
    output SEGDA,
    output SEGDB,
    output SEGDC,
    output SEGDD,
    output SEGDE,
    output SEGDF,
    output SEGDG,
    wire [6:0] out
    );

     assign out = (b == 0 ? 7'b01 :
                 b == 1 ? 7'h4F :
                 b == 2 ? 7'h12 :
                 b == 3 ? 7'h06 :
                 b == 4 ? 7'h4C :
                 b == 5 ? 7'h24 :
                 b == 6 ? 7'h20 :
                 b == 7 ? 7'h0F :
                 b == 8 ? 7'h00 :
                 b == 9 ? 7'h04 :
                 b == 10 ? 7'h08 :
                 b == 11 ? 7'h60 :
                 b == 12 ? 7'h32 :
                 b == 13 ? 7'h42 :
                 b == 14 ? 7'h10 :
                 b == 15 ? 7'h38 :
                 // letters for display
                 b == 16 ? 7'h42 : // d
                 b == 17 ? 7'h30 : // E
                 b == 18 ? 7'h41 : // U 
                 b == 19 ? 7'h08 : // A
                 b == 20 ? 7'h18 : // P
                 b == 21 ? 7'h24 : // S
                 b == 22 ? 7'h6A : // n (use twice for m)
                 7'h00);
                 
     assign SEGDA = out[6];
     assign SEGDB = out[5];
     assign SEGDC = out[4];
     assign SEGDD = out[3];
     assign SEGDE = out[2];
     assign SEGDF = out[1];
     assign SEGDG = out[0]; 
                 
    
    
endmodule
