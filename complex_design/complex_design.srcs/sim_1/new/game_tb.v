`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 13:04:09
// Design Name: 
// Module Name: game_tb
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


module game_tb(
    );
    
    reg btnL;
    reg btnR;
    reg clk;
    reg reset;
   
    wire [1:0] out;
    
    
    game uut(
    .btnL(btnL),
    .btnR(btnR),
    .clk(clk),
    .reset(reset),
    .out(out)
    );
    
    
    initial begin
        clk = 0;
        reset = 1;
        #30 btnR = 1;
        #20 btnR = 0;
                            //score 0/15 
        #20 btnL = 1;
        #20 btnL = 0;
                            //score 15/15
        #20 btnL = 1;
        #20 btnL = 0;
                            //score 30/15
        #20 btnL = 1;
         #20 btnL = 0;
                            //score 40/15
        #20 btnR = 1;
         #20 btnR = 0;
                            //score 40/30
        #20 btnR = 1;
        #20 btnR = 0;
                            //score 40/40
        #20 btnL = 1;
        #20 btnL = 0;
                            // Player 1 advantage
        #20 btnR = 1;
        #20 btnR = 0;
                            // deuce
        #20 btnR = 1;
        #20 btnR = 0;
                            // Player 2 advantage
        #20 btnR = 1;
        #20 btnR = 0;
                            // Player 2 wins
    end     
    
    always
        #20 clk = ~clk;
endmodule
