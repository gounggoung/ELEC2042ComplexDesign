`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2022 16:38:54
// Design Name: 
// Module Name: debouncer
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


module debouncer(
        input clk,
        input btnU,
        input reset,
        output reg out
    );
    
    // State Definitions
    parameter waitingInput=1'b0, waitingForClockTicks=1'b1;
    
    reg [1:0] presentState, nextState;
    
    reg clockTicks;
       
    // Set state transitions
    always @(presentState, clk, btnU)
        begin
            out = 0;
            case(presentState)
                waitingInput: if(btnU)
                                begin
                                    clockTicks = 0; 
                                    out = 1;
                                    nextState = waitingForClockTicks;
                                end
                waitingForClockTicks: if(clockTicks > 1) nextState = waitingInput;
                                      else clockTicks = clockTicks + 1;                       
            endcase 
        end        
    always @(posedge clk, negedge reset)
        if(!reset) presentState = waitingInput;
        else presentState = nextState;  
endmodule
