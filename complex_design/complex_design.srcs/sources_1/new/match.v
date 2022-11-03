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
    input btnL,
    input btnR,
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
     
     always @(presentState, clk, btnL, btnR)
     begin
            out = 0;
            case(presentState)
                A0: if(btnR) nextState = A1;
                    else if (btnL) nextState = B0;
                A1: if(btnR) nextState = A2;
                    else if (btnL) nextState = B1;
                A2: 
                    begin
                        out = 2;
                        nextState = A0;
                    end
                B0: if(btnR) nextState = B1;
                    else if (btnL) nextState = C0;
                B1: if(btnR) nextState = B2;
                    else if (btnL) nextState = C1;
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
            endcase
     end
     
     always @(posedge clk, negedge reset)
                if(!reset) presentState = A0;
                else presentState = nextState;
    
endmodule
