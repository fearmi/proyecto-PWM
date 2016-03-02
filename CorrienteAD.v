`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:31 03/01/2016 
// Design Name: 
// Module Name:    CorrienteAD 
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
module CorrienteAD(
    output [3:0] conta, // frecuencia de salida al selector del mux
    input clock, // señal de reloj
    input B_UP, // boton de aumento
    input B_DOWN //boton de disminución
    );

reg [3:0] conta; // se define un registro para llevar la cuenta

initial // inicializando el contador
begin
conta<=4'b0; // contador en 0000
end 

always @(posedge clock)//en cada flanco positivo de reloj

if (B_UP)
         if (conta==4'b1010)
				conta<=conta;
			else
				conta <= conta + 1;
else 
	if (B_DOWN)
				if (conta==4'b0) 
					conta<=conta;
				else
					conta<=conta-1;
endmodule 