`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 15:11:42
// Design Name: 
// Module Name: game_tb2
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


module game_tb2(
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
        #20 btnR = 1;
        #20 btnR = 0;
                            //score 0/30
        #20 btnR = 1;
        #20 btnR = 0;
                            //score 0/40
        #20 btnR = 1;
         #20 btnR = 0;
                            //score Player 2 Wins
        
    end     
    
    always
        #20 clk = ~clk;
endmodule
