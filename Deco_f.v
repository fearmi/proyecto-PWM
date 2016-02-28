`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:29 02/27/2016 
// Design Name: 
// Module Name:    Deco_f 
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
module Deco_f(
input [2:0] indicador,
output n_3,
output [2:0]n_2,n_0,
output [3:0]n_1
);

reg n3;
reg [3:0]n1,n2,n0; 
 
always @( indicador) 
begin
case(indicador)
3'b000 :begin
			n0 = 3'd5;
			n1 = 4'd10;
			n2 = 3'd1; 
			n3 = 1'd0;
		end
3'b001 :begin
			n0 = 3'd1;
			n1 = 4'd10;
			n2 = 3'd3;
			n3 = 1'd0;
		end
3'b010 :begin
			n0 = 3'd2;
			n1 = 4'd10;
			n2 = 3'd6;
			n3 = 1'd0;
		end
3'b011 :begin 
			n0 = 3'd5;
			n1 = 4'd10;
			n2 = 3'd2;
			n3 = 1'd1;
		end
3'b100  :begin
			n0 = 3'd5;
			n1 = 4'd2;
			n2 = 3'd0;
			n3 = 1'd0;
		end
3'b101 :begin
			n0 = 3'd0;
			n1 = 4'd5;
			n2 = 3'd0;
			n3 = 1'd0;
		end
3'b110 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 3'd1;
			n3 = 1'd0;
		end 
3'b111 :begin
			n0 = 3'd0; 
			n1 = 4'd0;
			n2 = 3'd2;
			n3 = 1'd0;
		end
endcase
end 
assign n_0=n0,n_1=n1,n_2=n2,n_3=n3;
endmodule
