
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: testbench
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
module testbench;
reg[1:0] sw;
   reg btnC;
   reg clk;
   wire [15:0] led;
   All_in_one Dut(sw,btnC,clk,led);
   integer i,j;
   
   parameter WAIT=440;
   initial 
   begin
   clk=1;
   btnC=1;
   for(j=0;j<2;j=j+1)
   begin
        for(i=0;i<4;i=i+1)
           begin
              sw=i;
              #WAIT;
           end
   end
  #2000000 $finish;
   end
   
   always #5 clk=~clk;
   always #3320 btnC=~btnC;
//   always #50 btnC=~btnC;
endmodule