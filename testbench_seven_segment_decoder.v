`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:32:32 AM
// Design Name: 
// Module Name: testbench_seven_segment_decoder
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


module testbench_seven_segment_decoder();
 reg [3:0] x;
 wire [6:0] z;

seven_segment_decoder DUT(.display_select(x),.seg(z));
initial begin
  x=0;
  #20 x=1;
  #20 x=2;
  #20 x=3;
  #20 x=4;
  #20 x=5;
  #20 x=6;
  #20 x=7;
  #20 x=8;
  #20 x=9;
  #20 x=10;
  #20 x=11;
  #20 x=12;
  #20 x=13;
  #20 x=14;
  #20 x=15;
  #40;
end

endmodule
