`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:36 03/02/2016
// Design Name:   MUX_CORIENTE
// Module Name:   Y:/Desktop/TEC/I Semestre 2015/amitprueba/TEST_MUxSelector.v
// Project Name:  amitprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_CORIENTE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_MUxSelector;

	// Inputs
	reg switch;
	reg [3:0] n_1f;
	reg [3:0] n_0f;
	reg [3:0] n_2f;
	reg [3:0] n_3f;
	reg [3:0] n_1C;
	reg [3:0] n_2C;
	reg [3:0] n_0C;
	reg [3:0] n_3C;

	// Outputs
	wire [3:0] out_0;
	wire [3:0] out_1;
	wire [3:0] out_2;
	wire [3:0] out_3;

	// Instantiate the Unit Under Test (UUT)
	MUX_CORIENTE uut (
		.switch(switch), 
		.n_1f(n_1f), 
		.n_0f(n_0f), 
		.n_2f(n_2f), 
		.n_3f(n_3f), 
		.n_1C(n_1C), 
		.n_2C(n_2C), 
		.n_0C(n_0C), 
		.n_3C(n_3C), 
		.out_0(out_0), 
		.out_1(out_1), 
		.out_2(out_2), 
		.out_3(out_3)
	);

	initial begin
		// Initialize Inputs
		switch = 0;
		n_1f = 0;
		n_0f = 0;
		n_2f = 0;
		n_3f = 0;
		n_1C = 0;
		n_2C = 0;
		n_0C = 0;
		n_3C = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here
	end
	
		always
		begin
		#100 switch =~switch;
		end
      always @(*)
		begin
		n_1f = n_1f + 1;
		n_0f = n_0f + 2;
		n_2f = n_2f + 3;
		n_3f = n_3f + 4;
		n_1C = n_1C + 5;
		n_2C = n_2C + 3;
		n_0C = n_0C + 7;
		n_3C = n_3C + 3;
		end
		
		
endmodule

