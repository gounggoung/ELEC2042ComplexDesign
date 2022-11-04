`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 10:40:36
// Design Name: 
// Module Name: four_digit_counter
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


module four_digit_counter(
    input enable,
    input reset,
    input clk,
    input btnU,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    wire [3:0] b, A, B, C, D;
    wire [1:0] S;
    wire clk100, clk10, of0, of1, of2, nreset;
    
    // this is to turn off the decimal point
    assign dp = 1;
    
    // need to invert button press to create active low input
    assign nreset = ~reset;
    
    // these modules control the display
    prescaler100 pre100 (clk, nreset, clk100);
    two_bit_counter cnt2bit (clk100, nreset, S);
    decoder ld (S, an);
    multiplexer mux (A, B, C, D, S, b);
    segdecoder sd (b, seg[0], seg[1], seg[2], seg[3], seg[4], seg[5], seg[6]);
    
    // these modules control the counting
    //prescaler10 pre10 (clk, nreset, clk10);
    mod10_counter m0 (btnU, enable, nreset, A, of0);
    mod10_counter m1 (of0, enable, nreset, B, of1);
    mod10_counter m2 (of1, enable, nreset, C, of2);
    mod10_counter m3 (of2, enable, nreset, D);
    
endmodule
