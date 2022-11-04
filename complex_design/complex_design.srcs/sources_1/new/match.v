`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2022 23:38:45
// Design Name: 
// Module Name: match
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


module match(
    input [1:0] winner,
    input clk,
    input reset,
    output reg [1:0] out
    );
    
    
    //State definitions
    parameter A0 = 4'b0000,
              A1 = 4'b0001,
              A2 = 4'b0011,
              B0 = 4'b0100,
              B1 = 4'b0101,
              B2 = 4'b0111,
              C0 = 4'b1100,
              C1 = 4'b1101;
              
     reg [3:0] presentState, nextState;
     
     always @(presentState, clk, winner)
     begin
            out = 0;
            case(presentState)
                A0: if(winner == 2) nextState = A1;
                    else if (winner == 1) nextState = B0;
                A1: if(winner == 2) nextState = A2;
                    else if (winner == 1) nextState = B1;
                A2: 
                    begin
                        out = 2;
                        nextState = A0;
                    end
                B0: if(winner == 2) nextState = B1;
                    else if (winner == 1) nextState = C0;
                B1: if(winner == 2) nextState = B2;
                    else if (winner == 1) nextState = C1;
                B2: 
                    begin
                        out = 2;
                        nextState = A0;
                    end
                C0:
                    begin
                        out = 1;
                        nextState = A0;
                    end
                C1: 
                    begin
                        out = 1;
                        nextState = A0;
                    end
                default:
                    nextState = A0;
            endcase
     end
     
     always @(posedge clk, negedge reset)
                if(!reset) presentState = A0;
                else presentState = nextState;
    
endmodule
