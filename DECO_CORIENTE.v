`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:11 03/01/2016 
// Design Name: 
// Module Name:    DECO_CORIENTE 
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
module DECO_CORIENTE(
input [3:0] indicadorCoriente,
output [3:0]n_1C,n_2C,n_0C,n_3C
);

reg n3;
reg [3:0]n1,n2,n0; 
 
always @(indicadorCoriente) 
begin
case(indicadorCoriente)
4'b0000 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd0; 
			n3 = 1'd0;
		end
4'b0001 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd1;
			n3 = 1'd0;
		end
4'b0010 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd1;
			n3 = 1'd0;
		end
4'b0011 :begin 
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd3;
			n3 = 1'd0;
		end
4'b0100  :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd4;
			n3 = 1'd0;
		end
4'b0101 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd5;
			n3 = 1'd0;
		end
4'b0110 :begin
			n0 = 3'd0;
			n1 = 4'd0;
			n2 = 4'd6;
			n3 = 1'd0;
		end 
4'b0111 :begin
			n0 = 4'd0; 
			n1 = 4'd0;
			n2 = 4'd7;
			n3 = 4'd0;
		end
4'b1000 :begin
			n0 = 4'd0; 
			n1 = 4'd0;
			n2 = 4'd8;
			n3 = 4'd0;
		end
4'b1001 :begin
			n0 = 4'd0; 
			n1 = 4'd0;
			n2 = 4'd9;
			n3 = 4'd0;
		end
4'b1010 :begin
			n0 = 4'd0; 
			n1 = 4'd0;
			n2 = 4'd0;
			n3 = 4'd1;
		end
		default begin
		 n0 = 4'd0;
		 n1 = 4'd0;
		 n2 = 4'd0;
		 n3 = 4'd0;
		 end
endcase
end 
assign n_0C = n0,n_1C = n1,n_2C = n2,n_3C = n3;
endmodule
