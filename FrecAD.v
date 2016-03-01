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
    input reset,
    output [2:0] frec_out,
    input clock,
    input B_UP,
    input B_DOWN
    );
reg [2:0] frec_out; //se define un reg para actualizar las cuentas

always @(posedge clock)//en cada flanco positivo de reloj
if (reset)//si reset en alto
begin
frec_out<=3'b0;//frec_out se inicia en cero
end
else //sino
if (B_DOWN) begin //si B_DOWN en alto
frec_out<=frec_out-1; //resta uno a la cuenta
end 
else // sino
if (B_UP) begin 
frec_out<=frec_out+1;
end
else begin
frec_out<=frec_out;
end
endmodule 