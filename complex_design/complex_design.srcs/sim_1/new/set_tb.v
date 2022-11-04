`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2022 15:50:42
// Design Name: 
// Module Name: set_tb
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


module set_tb(
    );
    reg [1:0] winner; 
    reg clk;
    reg reset;
   
    wire [1:0] out;
    
    set uut(
        .winner(winner),
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    initial begin
        clk = 0;
        reset = 1;
        #3 winner = 2;
        #2 winner = 0;
                            // Score 0/1
        #2 winner = 2;
        #2 winner = 0;
                            // Score 0/2
        #2 winner = 2;
        #2 winner = 0;
                            // Score 0/3
        #2 winner = 2;
        #2 winner = 0;
                            // Score 0/4
        #2 winner = 2;
        #2 winner = 0;
                            // Score 0/5
        #2 winner = 2;
        #2 winner = 0;
                            // Player 2 wins
                            
        #6 winner = 1;
        #2 winner = 0;
                            // Score 1/0                            
        #2 winner = 1;
        #2 winner = 0;
                            // Score 2/0  
        #2 winner = 1;
        #2 winner = 0;
                            // Score 3/0
        #2 winner = 1;
        #2 winner = 0;
                           // Score 4/0
        #2 winner = 1;
        #2 winner = 0;
                            // Score 5/0
        #2 winner = 2;
        #2 winner = 0;
                           // Score 5/1
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/2
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/3
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/4
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/5                                                                                                                                                                                                                        
        #2 winner = 1;
        #2 winner = 0;
                            // Score 6/5
        #2 winner = 1;
        #2 winner = 0;
                            // Player 1 wins  
                            
                            
        #6 winner = 1;
        #2 winner = 0;
                            // Score 1/0                            
        #2 winner = 1;
        #2 winner = 0;
                            // Score 2/0  
        #2 winner = 1;
        #2 winner = 0;
                            // Score 3/0
        #2 winner = 1;
        #2 winner = 0;
                            // Score 4/0
        #2 winner = 1;
        #2 winner = 0;
                            // Score 5/0
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/1
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/2
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/3
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/4
        #2 winner = 2;
        #2 winner = 0;
                            // Score 5/5                                                                                                                                                                                                                        
        #2 winner = 1;
        #2 winner = 0;
                            // Score 6/5
        #2 winner = 2;
        #2 winner = 0;
                            // Score 6/6
        #2 winner = 2;
        #2 winner = 0;
                            // Score 6/7
        #2 winner = 1;
        #2 winner = 0;
                            // Score 7/7
        #2 winner = 2;
        #2 winner = 0;
                            // Score 7/8
        #2 winner = 1;
        #2 winner = 0;
                            // Score 8/8
        #2 winner = 2;
        #2 winner = 0;
                            // Player 2 wins                                                                                                                                                                                                                                         
        
    end   
    
    
    always
        #2 clk = ~clk;
endmodule
