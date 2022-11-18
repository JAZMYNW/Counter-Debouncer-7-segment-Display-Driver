`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 02:08:52 PM
// Design Name: 
// Module Name: top
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


module top( 
    input clk, inc, reset_n, mode_switch,
    output [6:0] seven,
    output [3:0] digit_select
            );
    wire C1, C2, DB, M1; // wires for clk_dividers 1 and 2, debouncer, mux
    wire [15:0] CT1;
    wire [3:0] S0;
    reg temp;
   ///////////////////////////////////////////////////////////////////////////////////// 
    display_control DC1(  .clk(C1), .reset_n(reset_n), .counted( CT1 ), .out( S0 ), .digit_select( digit_select ));
   
    clock_divider CD1( .clock_in( clk ), .clock_out( C2 )); //to 2-bit
    
    clock_divider_1kHz CD2( .clock_in( clk ), .clock_out( C1 )); //to mux
    
   always@ (posedge clk) begin
    if(mode_switch) begin
        temp <= C2;
        end else begin
        temp <= DB;
        end
    end
            
    debouncer DB1(.reset_n( reset_n ), .clk( clk ), .button_in( inc ), .button_out( DB));
    
    counter_16 CO1 ( .clk( temp ) , .reset_n( reset_n ), .count( CT1 ));
    
    seven_segment_decoder SS1( .seg( seven ), .hex( S0  ));
    
endmodule

