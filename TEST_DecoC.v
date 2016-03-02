`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:12 03/02/2016
// Design Name:   DECO_CORIENTE
// Module Name:   Y:/Desktop/TEC/I Semestre 2015/amitprueba/TEST_DecoC.v
// Project Name:  amitprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DECO_CORIENTE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_DecoC;

	// Inputs
	reg [3:0] indicadorCoriente;

	// Outputs
	wire [3:0] n_1C;
	wire [3:0] n_2C;
	wire [3:0] n_0C;
	wire [3:0] n_3C;

	// Instantiate the Unit Under Test (UUT)
	DECO_CORIENTE uut (
		.indicadorCoriente(indicadorCoriente), 
		.n_1C(n_1C), 
		.n_2C(n_2C), 
		.n_0C(n_0C), 
		.n_3C(n_3C)
	);

	initial begin
		// Initialize Inputs
		indicadorCoriente = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

