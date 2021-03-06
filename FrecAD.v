`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:51 02/29/2016 
// Design Name: 
// Module Name:    FrecAD 
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
module FrecAD(
    //input reset, // entrada de reset
    output [2:0] frec_out, // frecuencia de salida al selector del mux
    input clock, // se�al de reloj
    input B_UP, // boton de aumento
    input B_DOWN //boton de disminuci�n
    );
reg [2:0] frec_out; //se define un reg para actualizar las cuentas
initial
begin
frec_out<=3'b0;
end

always @(posedge clock)//en cada flanco positivo de reloj
//if (reset)//si reset en alto
//begin
//frec_out<=3'b0;//frec_out se inicia en cero
//end
if (B_UP)
         if (frec_out==3'b111)
				frec_out<=frec_out;
			else
				frec_out <= frec_out + 1;
else 
	if (B_DOWN)
				if (frec_out==3'b0) 
					frec_out<=frec_out;
				else
					frec_out <= frec_out + 1;
endmodule 