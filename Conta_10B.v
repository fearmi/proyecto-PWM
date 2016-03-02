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
out     ,  // Output of the counter
enable  ,  // enable for counter
clk     ,  // clock Input
reset      // reset Input
);
output [7:0] out;
input enable, clk, reset;
reg [9:0] out;
always @(posedge clk)
if (reset) begin
  out <= 10'b0 ;
end else if (enable) begin
  out <= out + 1;
end

endmodule
