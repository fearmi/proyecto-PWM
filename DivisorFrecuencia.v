`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Rolando Coto, Amit Ferencz
// 
// Create Date:    15:58:27 02/27/2016 
// Design Name: 
// Module Name:    DivisorFrecuencia 
// Project Name:   Digital PWM
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
module DivisorFrecuencia(
 input wire Clock_in, //se define una señal de reloj de entrada, corresponde al Clock de la Nexys, 100MHz
 output reg Clock_out //se define una señal de salidad de reloj, con la nueva frecuencia  
    );
 
 reg [14:0] contador ; //se define un reg llamado contador para truncar la señal del Clock de Nexys cuando llegue
                       // al valor deseado y de esa manera obtener el nuevo reloj con la nueva frecuencia
initial
begin 
contador<=15'b0;
Clock_out =0;
end
							  
always @(posedge Clock_in) //Especificamos la transición deseada, en cada flanco positivo de la señal  
 begin
      if (contador == 15'd32_050)//si contador llega a 32050 el contador salta a cero y de esa forma se trunca al valor deseado
		   begin                   
			 contador <=15'd0;      // se reinicia el contador
		    Clock_out <= ~Clock_out;// se niega el clock de salida para que pase a 1 
			 end 
		else //en caso contrario
		    contador <= contador + 1'b1; //se actualiza el estado del contador
 
  end 


endmodule
