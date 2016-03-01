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
    input [7:0] Clock_out, // señal que viene del divisor de frecuencia
    input [2:0] Selector, //entradas de selección, salida contador ascendente / descendente
    output Fsw // salida del mux
    );
	 
reg Fsw_out; // se define una registro llamado Fsw_out

always @(Clock_out or Selector) // siempre que ocurra un cambio
begin :MUX

case(Selector) // casos del selector
3'b000 : Fsw_out = Clock_out [0]; //bit 7 frecuencia: 200kHz
3'b001 : Fsw_out = Clock_out [1]; //bit 8 frecuencia: 100kHz
3'b010 : Fsw_out = Clock_out [2]; //bit 9 frecuencia: 50kHz
3'b011 : Fsw_out = Clock_out [3]; //bit 10 frecuencia: 25kHz
3'b100 : Fsw_out = Clock_out [4]; //bit 11 frecuencia: 12,5kHz
3'b101 : Fsw_out = Clock_out [5]; //bit 12 frecuencia: 6,25kHz
3'b110 : Fsw_out = Clock_out [6]; //bit 13 frecuencia: 3,125kHz
3'b111 : Fsw_out = Clock_out [7]; //bit 14 frecuencia: 1,560kHz

endcase //fin del caso
end
assign Fsw=Fsw_out; // se asigna a la salida el valor del registro definido anteriormente
endmodule
