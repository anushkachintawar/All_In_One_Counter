`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: Mode2_4Decoder
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


module Mode2_4Decoder(
    input [1:0] Mode,
    input Reset,
    output reg [3:0] D
    );
    always @(*)
    begin
      if(Reset==1)
      begin
      D=4'd0;
       case (Mode)
       2'b00: D=4'd1;
       2'b01: D=4'd2;
       2'b10: D=4'd4;
       2'b11: D=4'd8;
       endcase
      end
      else
      D=4'd0;
    end
endmodule