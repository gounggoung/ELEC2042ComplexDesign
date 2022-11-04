`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 15:27:38
// Design Name: 
// Module Name: match_tb
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


module match_tb(
    );
    
    reg [1:0] winner; 
    reg clk;
    reg reset;
   
    wire [1:0] out;
    
    match uut(
        .winner(winner),
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    initial begin
        clk = 0;
        reset = 1;
        #30 winner = 2;
        #20 winner = 0;
                            // Score 0/1
        #20 winner = 1;
        #20 winner = 0; 
                            // Score 1/1
        #20 winner = 2;
        #20 winner = 0;
                            // Player 2 wins
        #60 winner = 1;
        #20 winner = 0;
                            // Score 1/0
        #20 winner = 2;
        #20 winner = 0; 
                            // Score 1/1
        #20 winner = 1;
        #20 winner = 0;    
                            // Player 1 wins 
                                                      
    
    end
    always
        #20 clk = ~clk;
endmodule
