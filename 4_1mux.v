`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:11:04 AM
// Design Name: 
// Module Name: 4_1mux
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


module mux41(J, K, L, M, S, out);
    input  [3:0]J, K, L, M;
    input  [1:0] S;
    output [3:0] out;
    reg [3:0] out_o;
    always@(*) begin
        case (S)
        2'b00: out_o= J;
        2'b01: out_o= K;
        2'b10: out_o= L;
        2'b11: out_o= M;
        endcase
    end//always
    assign out= out_o;

endmodule
