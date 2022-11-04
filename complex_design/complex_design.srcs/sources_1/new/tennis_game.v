`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 02:30:37
// Design Name: 
// Module Name: tennis_game
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


module tennis_game(
        input btnU,
        input btnL,
        input btnR,
        input reset,
        input clk,
        output [6:0] seg,
        output [3:0] an,
        output dp
    );
    
    
    wire [3:0] b, A, B, C, D;
    wire [1:0] S;
    wire clk100, clk10, nreset;
    wire gameWinner, setWinner, matchWinner;
    
    assign dp = 1;
    
    assign nreset = !reset;
    
    prescaler100 pre100(clk, nreset, clk100);
    
    
    game ga(btnL, btnR, clk, reset, gameWinner);
    set se(gameWinner, clk, reset, setWinner);
    match ma(setWinner, clk, reset, matchWinner);
    
    
    
endmodule
