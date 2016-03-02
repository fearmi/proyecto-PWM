`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:09 03/01/2016 
// Design Name: 
// Module Name:    ModuloDeDisplay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ModuloDeDisplay(
input [2:0]iF,
input [3:0]iC,
input switch,clock,reset,
output  a,b,c,d,e,f,g,dp,
output [3:0]an
    );
wire [3:0]n_1f,n_2f,n_3f,n_1C,n_2C,n_3C,n_0C,out_0,out_1,out_2,out_3;
Deco_f DecoF (
    .indicadorFrecuenica(iF), 
    .n_1f(n_1f), 
    .n_0f(n_0f), 
    .n_2f(n_2f), 
    .n_3f(n_3f) 
    );
DECO_CORIENTE DecoC(
    .indicadorCoriente(iC), 
    .n_1C(n_1C), 
    .n_2C(n_2C), 
    .n_0C(n_0C), 
    .n_3C(n_3C)
    );

MUX_CORIENTE MuxSelectorDisplay (
    .switch(switch), 
    .n_1f(n_1f), 
    .n_0f(n_0f), 
    .n_2f(n_2f), 
    .n_3f(n_3f), 
    .n_1C(n_1C), 
    .n_2C(n_2C), 
    .n_0C(n_0C), 
    .n_3C(n_3C), 
    .out_0(out_0), 
    .out_1(out_1), 
    .out_2(out_2), 
    .out_3(out_3)
    );

sevenseg Display7Segmentos (
    .clock(clock), 
    .reset(reset), 
    .in0(out_0), 
    .in1(out_1), 
    .in2(out_2), 
    .in3(out_3), 
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .e(e), 
    .f(f), 
    .g(g), 
    .dp(dp), 
    .an(an)
    );




endmodule
