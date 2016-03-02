`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:15:12 03/01/2016
// Design Name:   sevenseg
// Module Name:   Y:/Desktop/TEC/I Semestre 2015/amitprueba/TEST_BENCH_SIETESEG.v
// Project Name:  amitprueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sevenseg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BENCH_SIETESEG;

	// Inputs
	reg clock;
	reg reset;
	reg [3:0] in0;
	reg [3:0] in1;
	reg [3:0] in2;
	reg [3:0] in3;

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
	sevenseg uut (
		.clock(clock), 
		.reset(reset), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
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
		clock = 0;
		reset = 0;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
		reset=1;
		#100;
		reset=0;
		#100000000;   
		end

		// Add stimulus here
		
			
			always
			begin
				#100 clock=~clock;
	 		end

always @ (posedge clock , posedge reset)
begin
assign in0 = in0+1;
assign in1 = in1+2;
assign in2 = in2+3;
assign in3 = in3+7;
end
      
endmodule

