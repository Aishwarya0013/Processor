module ripple_carry_testbench_v;
	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	// Outputs
	wire cout;
	wire [3:0] s;
	// Instantiate the Unit Under Test (UUT)
	ripple_carry_n uut (.s(s), .cout(cout), .a(a), .b(b), .cin(cin));
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		// Wait 100 ns for global reset to finish
		#100 a = 4'b0101; b = 4'b1111;
		#100 a = 4'b1011; b = 4'b1110;
		#100 $finish;
	end
endmodule

