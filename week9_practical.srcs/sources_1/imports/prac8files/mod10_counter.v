`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 10:40:36
// Design Name: 
// Module Name: mod10_counter
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


module mod10_counter(
    input clk,
    input enable,
    input reset,
    output reg [3:0] Q,
    output reg overflow
    );
    
    
    always @(posedge clk, negedge reset) begin        
        if(reset == 0) begin
            Q <= 0;
            overflow <= 0;
        end
        else if(enable > 0) begin
            Q <= Q + 1;
            overflow <= 0;
            if(Q == 9) begin
                Q <= 0;
                overflow <= 1;
            end       
        end
    end
         
endmodule
