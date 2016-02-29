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
module Mux_Frecuencias(
    input [7:0] Clock_out,
    input [2:0] Selector,
    output Fsw
    );
	 
reg Fsw_out;

always @*
begin :MUX

case(Selector)
3'b000 : Fsw_out = Clock_out [0];
3'b001 : Fsw_out = Clock_out [1];
3'b010 : Fsw_out = Clock_out [2];
3'b011 : Fsw_out = Clock_out [3];
3'b100 : Fsw_out = Clock_out [4];
3'b101 : Fsw_out = Clock_out [5];
3'b110 : Fsw_out = Clock_out [6];
3'b111 : Fsw_out = Clock_out [7];

endcase
end
assign Fsw=Fsw_out;
endmodule
