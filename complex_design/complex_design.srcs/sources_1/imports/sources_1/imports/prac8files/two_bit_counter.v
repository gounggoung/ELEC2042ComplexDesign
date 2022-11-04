`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 10:40:36
// Design Name: 
// Module Name: two_bit_counter
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


module two_bit_counter(
    input clk,
    input reset,
    output reg [1:0] Q
    );
    
   
    
    always @(posedge clk, negedge reset) begin
        if (reset == 0)
            Q = 0;          
        else
            Q = Q+1;
    end
    

    
endmodule
