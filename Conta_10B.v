`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:22 02/28/2016 
// Design Name: 
// Module Name:    Conta_10B 
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
module Conta_10B(
output [9:0]Frecuencia_Conmutacion     ,  // Output of the counter
input Enable  ,  // enable for counter
input Clk     ,  // clock Input
input Reset      // reset Input
);
reg [9:0] sal;


always @(posedge Clk or posedge Reset)
if (Reset) begin
  sal <= 10'b0 ;
end else if(Enable) begin
  sal <= sal + 1;
end

assign Frecuencia_Conmutacion=sal;
endmodule
