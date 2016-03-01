`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:09:14 02/29/2016
// Design Name:   Deco_f
// Module Name:   Y:/Desktop/TEC/I Semestre 2015/amitprueba/TEST_BENCH_DECOF.v
// Project Name:  amitprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Deco_f
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BENCH_DECOF;

	// Inputs
	reg [2:0] indicador;

	// Outputs
	wire n_3;
	wire [2:0] n_2;
	wire [2:0] n_0;
	wire [3:0] n_1;

	// Instantiate the Unit Under Test (UUT)
	Deco_f uut (
		.indicador(indicador), 
		.n_3(n_3), 
		.n_2(n_2), 
		.n_0(n_0), 
		.n_1(n_1)
	);

	initial begin
		// Initialize Inputs
		indicador = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		indicador = 3'b000;
		#100;
		indicador =3'b001;
		#100;
		indicador =3'b011;
		#100;
		indicador =3'b100;
		#100;
		indicador =3'b101;
		#100;
		indicador =3'b110;
		#100;
		indicador =3'b111;
	end
      
endmodule

