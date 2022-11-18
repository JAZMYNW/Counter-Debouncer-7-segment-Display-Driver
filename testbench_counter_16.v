`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:20:48 AM
// Design Name: 
// Module Name: testbench_counter_16
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


module testbench_counter_16();
reg clk, reset_n, inc;
wire[15:0] count;

counter16 c1(.clk(clk),.reset_n(reset_n),.inc(inc),.count(count));

always #5 clk = ~clk;
always #10 inc=~inc;

initial begin 
clk <=0;
reset_n <=0;
inc <=0;
#10 reset_n = 1;
end 
endmodule
