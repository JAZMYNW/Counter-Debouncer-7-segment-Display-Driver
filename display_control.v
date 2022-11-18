`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:09:12 AM
// Design Name: 
// Module Name: display_control
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


module display_control( 
    //2-BIT COUNTER
    input clk,reset_n,
    input [15:0] counted,
    output [3:0] out,
    output [3:0] digit_select
     );
    reg [1:0]count; 
     
    wire [1:0] count_o; //wire connecting 2-bit counter to mux
    
    reg [3:0] w1=4'b1110;
    reg [3:0] w2=4'b1101;
    reg [3:0] w3=4'b1011;
    reg [3:0] w4=4'b0111;
    
    wire [3:0] c0,c1,c2,c3;
    
     //2-BIT COUNTER
     always @(posedge clk or negedge reset_n)begin
        if (!reset_n) begin
         count <= 2'b0; 
        end else begin
                 count <= count + 2'b1;
        end
      end//always

//out-1
assign count_o = count;
//out-2
assign c0 = counted[3:0];
assign c1 = counted[7:4];
assign c2 = counted[11:8];
assign c3 = counted[15:12];

//MUX-1
mux41 uu1(.J(w1), .K(w2), .L(w3), .M(w4), .S(count_o), .out(digit_select));

//MUX-2
mux41 uu2(.J(c0), .K(c1), .L(c2), .M(c3), .S(count_o), .out(out));
endmodule


