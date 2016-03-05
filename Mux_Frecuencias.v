`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:52 02/27/2016 
// Design Name: 
// Module Name:    Mux_Frecuencias 
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
module Mux_Frecuencias( //Mux selector de frecuencias
    input Reset,
	 input [14:0] F_in, // señal que viene del divisor de frecuencia
    input [2:0] Selector, //entradas de selección, salida contador ascendente / descendente
    output Fsw // salida del mux
    );
	 
reg Fsw_out; // se define una registro llamado Fsw_out

always @(Reset or Selector or F_in) // siempre que ocurra un cambio
begin :MUX
if (Reset) 
Fsw_out <= 1'b0;
else
case(Selector) // casos del selector
3'b000 : Fsw_out <= F_in[14]; //bit 7 frecuencia: 200kHz
3'b001 : Fsw_out <= F_in[13]; //bit 8 frecuencia: 100kHz
3'b010 : Fsw_out <= F_in[12]; //bit 9 frecuencia: 50kHz
3'b011 : Fsw_out <= F_in[11]; //bit 10 frecuencia: 25kHz
3'b100 : Fsw_out <= F_in[10]; //bit 11 frecuencia: 12,5kHz
3'b101 : Fsw_out <= F_in[9]; //bit 12 frecuencia: 6,25kHz
3'b110 : Fsw_out <= F_in[8]; //bit 13 frecuencia: 3,125kHz
3'b111 : Fsw_out <= F_in[7]; //bit 14 frecuencia: 1,560kHz

default: Fsw_out <= 1'b0;
endcase //fin del caso

end
assign Fsw=Fsw_out;
//assign Fsw=Fsw_out; // se asigna a la salida el valor del registro definido anteriormente
endmodule
