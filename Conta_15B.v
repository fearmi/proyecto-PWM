`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:50 03/02/2016 
// Design Name: 
// Module Name:    Conta_15B 
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
module Conta_15B(
output [14:0] F_out,  // Output of the counter
input enable  ,  // enable for counter
input clk,  // clock Input
input reset      // reset Input
);
reg [14:0] F_out;


always @(posedge clk or posedge reset)
if (reset) begin
  F_out <= 15'b0 ;
end else if (enable) begin
  F_out <= F_out + 1;
end



endmodule
