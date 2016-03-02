`timescale 1us / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:14 03/02/2016
// Design Name:   ModuloDeDisplay
// Module Name:   Y:/Desktop/TEC/I Semestre 2015/amitprueba/TEST_ModuloDipslay.v
// Project Name:  amitprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModuloDeDisplay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_ModuloDipslay;

	// Inputs
	reg [2:0] iF;
	reg [3:0] iC;
	reg switch;
	reg clock;
	reg reset;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;
	wire dp;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	ModuloDeDisplay uut (
		.iF(iF), 
		.iC(iC), 
		.switch(switch), 
		.clock(clock), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.dp(dp), 
		.an(an)
	);

	initial begin
		// Initialize Inputs
		iF = 0;
		iC = 0;
		switch = 1;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		reset =0;
        
		// Add stimulus here

	end
	always 
	begin
	#100 clock=~clock;
	#100 switch =~switch;
	#200 iF = iF+1;
	#500 iC= iC+1;
	end
	
      
endmodule

