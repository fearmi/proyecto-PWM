`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:53 03/04/2016 
// Design Name: 
// Module Name:    Prueba_NUEVO 
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
module Prueba_NUEVO(
    input B_UP,B_DOWN,
    input CLOCK,
    input RESET,
	 input ENABLE,
	 input E_SWITCH,
	 output PWM
    //output [9:0] FREC_CONMU
    );
wire [14:0] F_out;
wire [2:0] out_f;
wire Fsw;
wire [9:0] Frecuencia_Conmutacion;
wire [9:0] Referencia;
wire [3:0] out_c;

// Instantiate the module
Conta_15B Contador15Bits (
    .F_out(F_out), 
    .enable(ENABLE), 
    .clk(CLOCK), 
    .reset(RESET)
    );
// Instantiate the module
up_down_cnt_f SelectorFrecuencias (
    .up_f(B_UP), 
    .down_f(B_DOWN), 
    .reset_f(RESET), 
    .enable_f(E_SWITCH), 
    .out_f(out_f)
    );
// Instantiate the module
Mux_Frecuencias MuxFrecuencia(
    .Reset(RESET), 
    .F_in(F_out), 
    .Selector(out_f), 
    .Fsw(Fsw)
    ); 

// Instantiate the module
Conta_10B Contador10Bits (
    .Frecuencia_Conmutacion(Frecuencia_Conmutacion), 
    .Enable(ENABLE), 
    .Clk(Fsw), 
    .Reset(RESET)
    );
// Instantiate the module
Comparador ComparadorPWM (
    .Frec_Conm(Frecuencia_Conmutacion), 
    .Corri_Ref(Referencia), 
    .Out_PWM(PWM)
    ); 
Deco_Corriente DecoCorriente(
    .Clock(CLOCK), 
    .Reset(RESET), 
    .Corriente(out_c), //selector de corriente
    .Referencia(Referencia) // Referencia para el comparador
    );
up_down_cnt_c SelectorCorriente (
    .up_c(B_UP), 
    .down_c(B_DOWN), 
    .reset_c(RESET), 
    .enable_c(E_SWITCH), 
    .out_c(out_c)
    );



endmodule
