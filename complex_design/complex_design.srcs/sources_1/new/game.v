`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2022 22:34:23
// Design Name: 
// Module Name: game
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


module game(
    input btnL,
    input btnR,
    input clk,
    input reset,
    output reg[1:0] out
    );
    
    //state definitions
    parameter A0 = 6'b000000, 
              A1 = 6'b000001,
              A2 = 6'b000010,
              A3 = 6'b000011,
              A4 = 6'b000100,
              B0 = 6'b001000,
              B1 = 6'b001001,
              B2 = 6'b001010,
              B3 = 6'b001011,
              B4 = 6'b001100,
              C0 = 6'b010000,
              C1 = 6'b010001,
              C2 = 6'b010010,
              C3 = 6'b010011,
              C4 = 6'b010100,
              D0 = 6'b011000,
              D1 = 6'b011001,
              D2 = 6'b011010,
              D3 = 6'b011011,
              D4 = 6'b011100,
              D5 = 6'b011101,
              E0 = 6'b100000,
              E1 = 6'b100001,
              E2 = 6'b100010,
              E3 = 6'b100011,
              F3 = 6'b101011;   
              
              reg [5:0] presentState, nextState;
              
              always @(presentState, clk, btnL, btnR)
              begin
                   out = 0;
                   case(presentState)
                        A0: if(btnR) nextState = A1;
                            else if (btnL) nextState = B0;
                        A1: if(btnR) nextState = A2;
                            else if (btnL) nextState = B1;
                        A2: if(btnR) nextState = A3;
                            else if (btnL) nextState = B2;
                        A3: if(btnR) nextState = A4;
                            else if (btnL) nextState = B3;
                        A4: 
                            begin
                                out = 2;
                                nextState = A0;
                            end
                        B0: if(btnR) nextState = B1;
                            else if (btnL) nextState = C0;
                        B1: if(btnR) nextState = B2;
                            else if (btnL) nextState = C1;
                        B2: if(btnR) nextState = B3;
                            else if (btnL) nextState = C2;
                        B3: if(btnR) nextState = B4;
                            else if (btnL) nextState = C3;
                        B4: 
                            begin
                                out = 2;
                                nextState = A0;
                            end
                        C0: if(btnR) nextState = C1;
                            else if (btnL) nextState = D0;
                        C1: if(btnR) nextState = C2;
                            else if (btnL) nextState = D1;
                        C2: if(btnR) nextState = C3;
                            else if (btnL) nextState = D2;
                        C3: if(btnR) nextState = C4;
                            else if (btnL) nextState = D3; 
                        C4:
                            begin
                                out = 2;
                                nextState = A0;
                            end   
                        D0: if(btnR) nextState = D1;
                            else if (btnL) nextState = E0;
                        D1: if(btnR) nextState = D2;
                            else if (btnL) nextState = E1;
                        D2: if(btnR) nextState = D3;
                            else if (btnL) nextState = E2;
                        D3: if(btnR) nextState = D4;
                            else if (btnL) nextState = E3;
                        D4: if(btnR) nextState = D5;
                            else if (btnL) nextState = D3;
                        D5: 
                            begin
                                out = 2;
                                nextState = A0;
                            end
                        E0:
                            begin
                                out = 1;
                                nextState = A0;
                            end
                        E1:
                            begin
                                out = 1;
                                nextState = A0;
                            end
                        E2: 
                            begin
                                out = 1;
                                nextState = A0;
                            end
                        E3: if(btnR) nextState = D3;
                            else if (btnL) nextState = F3;
                        F3:
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
