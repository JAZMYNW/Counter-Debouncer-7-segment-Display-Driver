`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:18:45 AM
// Design Name: 
// Module Name: counter_16
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


module counter_16(clk,reset_n,count);
     input clk,reset_n;
    output reg [15:0]count;

     
     always @(posedge clk or negedge reset_n)begin
      if (!reset_n) begin
         count <= 0;
         end else
           count<=count+1;
           end
           
endmodule


