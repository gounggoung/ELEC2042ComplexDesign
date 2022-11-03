`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2022 23:27:19
// Design Name: 
// Module Name: set
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
    parameter A0 = 8'b00000000,
              A1 = 8'b00000001,
              A2 = 8'b00000010,
              A3 = 8'b00000011,
              A4 = 8'b00000100,
              A5 = 8'b00000101,
              A6 = 8'b00000110,
              B0 = 8'b00010000,
              B1 = 8'b00010001,
              B2 = 8'b00010010,
              B3 = 8'b00010011,
              B4 = 8'b00010100,
              B5 = 8'b00010101,
              B6 = 8'b00010110,
              C0 = 8'b00100000,
              C1 = 8'b00100001,
              C2 = 8'b00100010,
              C3 = 8'b00100011,
              C4 = 8'b00100100,
              C5 = 8'b00100101,
              C6 = 8'b00100110,
              D0 = 8'b00110000,
              D1 = 8'b00110001,
              D2 = 8'b00110010,
              D3 = 8'b00110011,
              D4 = 8'b00110100,
              D5 = 8'b00110101,
              D6 = 8'b00110110,
              E0 = 8'b01000000,
              E1 = 8'b01000001,
              E2 = 8'b01000010,
              E3 = 8'b01000011,
              E4 = 8'b01000100,
              E5 = 8'b01000101,
              E6 = 8'b01000110,
              F0 = 8'b01010000,
              F1 = 8'b01010001,
              F2 = 8'b01010010,
              F3 = 8'b01010011,
              F4 = 8'b01010100,
              F5 = 8'b01010101,
              F6 = 8'b01010110,
              F7 = 8'b01010111,
              G0 = 8'b01100000,
              G1 = 8'b01100001,
              G2 = 8'b01100010,
              G3 = 8'b01100011,
              G4 = 8'b01100100,
              G5 = 8'b01100101,
              G6 = 8'b01100110,
              G7 = 8'b01100111,
              G8 = 8'b01101000,
              H5 = 8'b01110101,
              H6 = 8'b01110110,
              H7 = 8'b01110111,
              H8 = 8'b01111000,
              H9 = 8'b01111001,
              I6 = 8'b10000110,
              I7 = 8'b10000111,
              I8 = 8'b10001000,
              I9 = 8'b10001001,
              J7 = 8'b10010111,
              J8 = 8'b10011000;
    
              reg [7:0] presentState, nextState;
              
              always @(presentState, clk, winner)
              begin
                    out = 0;
                    case(presentState)
                        A0: if(winner == 2) nextState = A1;
                            else if (winner == 1) nextState = B0;
                        A1: if(winner == 2) nextState = A2;
                            else if (winner == 1) nextState = B1;
                        A2: if(winner == 2) nextState = A3;
                            else if (winner == 1) nextState = B2;
                        A3: if(winner == 2) nextState = A4;
                            else if (winner == 1) nextState = B3;
                        A4: if(winner == 2) nextState = A5;
                            else if (winner == 1) nextState = B4;
                        A5: if(winner == 2) nextState = A6;
                            else if (winner == 1) nextState = B5;
                        A6:
                            begin
                                out = 2;
                                nextState = A0;
                            end     
                        B0: if(winner == 2) nextState = B1;
                            else if (winner == 1) nextState = C0;
                        B1: if(winner == 2) nextState = B2;
                            else if (winner == 1) nextState = C1;
                        B2: if(winner == 2) nextState = B3;
                            else if (winner == 1) nextState = C2;
                        B3: if(winner == 2) nextState = B4;
                            else if (winner == 1) nextState = C3;
                        B4: if(winner == 2) nextState = B5;
                            else if (winner == 1) nextState = C4;
                        B5: if(winner == 2) nextState = B6;
                            else if (winner == 1) nextState = C5;
                        B6:
                            begin
                                out = 2;
                                nextState = A0;
                            end 
                        C0: if(winner == 2) nextState = C1;
                            else if (winner == 1) nextState = D0;
                        C1: if(winner == 2) nextState = C2;
                            else if (winner == 1) nextState = D1;
                        C2: if(winner == 2) nextState = C3;
                            else if (winner == 1) nextState = D2;
                        C3: if(winner == 2) nextState = C4;
                            else if (winner == 1) nextState = D3;
                        C4: if(winner == 2) nextState = C5;
                            else if (winner == 1) nextState = D4;
                        C5: if(winner == 2) nextState = C6;
                            else if (winner == 1) nextState = D5;
                        C6:
                            begin
                                out = 2;
                                nextState = A0;
                            end 
                        D0: if(winner == 2) nextState = D1;
                            else if (winner == 1) nextState = E0;
                        D1: if(winner == 2) nextState = D2;
                            else if (winner == 1) nextState = E1;
                        D2: if(winner == 2) nextState = D3;
                            else if (winner == 1) nextState = E2;
                        D3: if(winner == 2) nextState = D4;
                            else if (winner == 1) nextState = E3;
                        D4: if(winner == 2) nextState = D5;
                            else if (winner == 1) nextState = E4;
                        D5: if(winner == 2) nextState = D6;
                            else if (winner == 1) nextState = E5;
                        D6:
                            begin
                                out = 2;
                                nextState = A0;
                            end 
                        E0: if(winner == 2) nextState = E1;
                            else if (winner == 1) nextState = F0;
                        E1: if(winner == 2) nextState = E2;
                            else if (winner == 1) nextState = F1;
                        E2: if(winner == 2) nextState = E3;
                            else if (winner == 1) nextState = F2;
                        E3: if(winner == 2) nextState = E4;
                            else if (winner == 1) nextState = F3;
                        E4: if(winner == 2) nextState = E5;
                            else if (winner == 1) nextState = F4;
                        E5: if(winner == 2) nextState = E6;
                            else if (winner == 1) nextState = F5;
                        E6:
                            begin
                                out = 2;
                                nextState = A0;
                            end       
                        F0: if(winner == 2) nextState = F1;
                            else if (winner == 1) nextState = G0;
                        F1: if(winner == 2) nextState = F2;
                            else if (winner == 1) nextState = G1;
                        F2: if(winner == 2) nextState = F3;
                            else if (winner == 1) nextState = G2;
                        F3: if(winner == 2) nextState = F4;
                            else if (winner == 1) nextState = G3;
                        F4: if(winner == 2) nextState = F5;
                            else if (winner == 1) nextState = G4;
                        F5: if(winner == 2) nextState = F6;
                            else if (winner == 1) nextState = G5;   
                        F6: if(winner == 2) nextState = F7;
                            else if (winner == 1) nextState = G6;
                        F7: 
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G0:
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G1:
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G2:
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G3: 
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G4:
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        G5: if(winner == 2) nextState = G6;
                            else if (winner == 1) nextState = H5;
                        G6: if(winner == 2) nextState = G7;
                            else if (winner == 1) nextState = H6; 
                        G7: if(winner == 2) nextState = G8;
                            else if (winner == 1) nextState = H7;
                        G8: 
                            begin
                                out = 2;
                                nextState = A0;
                            end
                        H5: 
                            begin
                                out = 1;
                                nextState = A0;
                            end 
                        H6: if(winner == 2) nextState = H7;
                            else if (winner == 1) nextState = I6; 
                        H7: if(winner == 2) nextState = H8;
                            else if (winner == 1) nextState = I7; 
                        H8: if(winner == 2) nextState = H9;
                            else if (winner == 1) nextState = I8;
                        H9: 
                            begin
                                out = 2;
                                nextState = A0;
                            end 
                        I6:
                            begin
                                out = 1;
                                nextState = A0;
                            end        
                        I7: if(winner == 2) nextState = I8;
                            else if (winner == 1) nextState = J7; 
                        I8: if(winner == 2) nextState = I9;
                            else if (winner == 1) nextState = J8;
                        I9:
                            begin
                                out = 2;
                                nextState = A0;
                            end 
                        J7:
                            begin
                                out = 1;
                                nextState = A0;
                            end     
                        J8: 
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
