`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 10:40:36
// Design Name: 
// Module Name: prescaler10
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


module prescaler10(
    input clk,
    input reset,
    output Q
    );
    
    reg[23:0] cnt = 0;
    
    always @(posedge clk, negedge reset) begin
    if(!reset)
        cnt = 0;
    else
        cnt = cnt + 1;
    end
    
    assign Q = cnt[23];
    
endmodule
