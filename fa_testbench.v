//RA1511004010752
//Also handcrafted by Aishwarya A R
module fa_testbench_v;
	// Inputs
	reg a;
	reg b;
	reg c;
	// Outputs
	wire sum;
	wire carry;
	// Instantiate the Unit Under Test (UUT)
	fa uut (.sum(sum), .carry(carry), .a(a), .b(b), .c(c));
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		// Wait 100 ns for global reset to finish
		#100 a = 0; b = 0; c = 1;
		#100 a = 0; b = 1; c = 0;
		#100 a = 0; b = 1; c = 1;
		#100 a = 1; b = 0; c = 0;
		#100 a = 1; b = 0; c = 1;
		#100 a = 1; b = 1; c = 0;
		#100 a = 1; b = 1; c = 1;
		#100 $finish;  
	end 
endmodule

