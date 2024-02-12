
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Designer Name:
// Module Name: All_in_one
// Project Name: All in one counter
// Target Devices: 
// Tool Versions: 
// Description: 
// Reach me:
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module All_in_one(
    input [1:0] sw,
    input btnC,
    input clk,
    output [15:0] led
    );
    wire[3:0]D;  //decoder output
    wire[3:0]cin;
    Mode2_4Decoder de(sw[1:0],btnC,D[3:0]);
    and(cin[0],D[0],btnC);
    and(cin[2],D[2],btnC);
    and(cin[3],D[3],btnC);
    and(cin[1],D[1],btnC);
    Four_bit_Up_counter Count1(cin[0],clk,led[3:0]);
    Four_bit_Down_counter Count2(cin[1],clk,led[7:4]);
    Mod_10_Up_counter Count3(cin[2],clk,led[11:8]);
    Mod_5_Down_counter Count4(cin[3],clk,led[15:12]);
endmodule