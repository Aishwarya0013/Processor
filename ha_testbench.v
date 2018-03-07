module ha_testbench_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	ha uut (.sum(sum), .carry(carry), .a(a), .b(b));

	initial begin
		// Initialize Inputs
		a = 0; b = 0;
		// Wait 100 ns for global reset to finish
		#100 a = 0; b = 1;
		#100 a = 1; b = 0;
		#100 a = 1; b = 1; 
		#100 $finish;
	end   
endmodule

