module mux21_testbench_v;
	// Inputs
	reg s;
	reg in0;
	reg in1;
	// Outputs
	wire out;
	// Instantiate the Unit Under Test (UUT)
	mux21 uut (.out(out), .s(s), .in0(in0), .in1(in1));
	initial begin
		// Initialize Inputs
		s = 0;
		in0 = 0;
		in1 = 0;
		// Wait 100 ns for global reset to finish
		#100 s = 0; in0 = 0; in1 = 0;
		#100 s = 0; in0 = 1; in1 = 0;
		#100 s = 0; in0 = 1; in1 = 1;
		#100 s = 1; in0 = 0; in1 = 0;
		#100 s = 1; in0 = 0; in1 = 1;
		#100 s = 1; in0 = 1; in1 = 0;
		#100 s = 1; in0 = 1; in1 = 1;
		#100 $finish;
	end      
endmodule

