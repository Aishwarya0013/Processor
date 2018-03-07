//RA1511004010752
//Also handcrafted by Aishwarya A R
module carry_select_testbench_v;
	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg cin;
	// Outputs
	wire [31:0] s;
	wire cout;
	// Instantiate the Unit Under Test (UUT)
	carry_select uut (.s(s), .cout(cout), .a(a), .b(b), .cin(cin));
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		//Stimulus here
		#100 a = 32'b10110110011110100010101000111101; b = 32'b11110000111100001111000011110000;
		#1000 $finish;
	end
      
endmodule

