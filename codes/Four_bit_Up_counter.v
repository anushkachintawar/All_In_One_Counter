
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: Four_bit_Up_counter
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

`timescale 1ns / 1ps
module Four_bit_Up_counter(
    input clear,
    input clk,
    output reg [3:0] Cout
    ); 
     initial
      Cout=0;
     always @ (posedge clk) 
     begin  
    if (clear==0)  
      Cout <= 0;  
    else  
      Cout <= Cout + 1;  
  end    
endmodule