//RA1511004010752
//Handcrafted by Aishwarya A R
module carry_select(s, cout, a, b, cin);
    output [31:0]s;
	 output cout;
	 input [31:0]a,b;
	 input cin;
	 wire [2:0]cy; //correct cy[0] out of 5 bit RCA, cy[1] out of 7, cy[2] out of 9, cout out of 11
	 wire [3:1]cy1; //carries from all adders using c1
	 wire [3:1]cy0; //carries from all adders using c0
	 wire [31:0]s1; //sum from adder using c1
	 wire [31:0]s0; //sum from adder using c0
	 assign c1 = 1'b1;
	 assign c0 = 1'b0;
	 ripple_carry_5 rca5(s[4:0], cy[0], a[4:0], b[4:0], cin);
	 ripple_carry_7 rca17(s1[11:5], cy1[1], a[11:5], b[11:5], c1);
	 ripple_carry_7 rca07(s0[11:5], cy0[1], a[11:5], b[11:5], c0);
	 assign s[11:5] = cy[0]?s1[11:5]:s0[11:5];
	 mux21 mux_for_carry_from_rca7(cy[1], cy[0], cy0[1], cy1[1]);
	 ripple_carry_9 rca19(s1[20:12], cy1[2], a[20:12], b[20:12], c1);
	 ripple_carry_9 rca09(s0[20:12], cy0[2], a[20:12], b[20:12], c0);
	 assign s[20:12] = cy[1]?s1[20:12]:s0[20:12];
	 mux21 mux_for_carry_from_rca9(cy[2], cy[2], cy0[2], cy1[2]);
	 ripple_carry_11 rca1_11(s1[31:21], cy1[3], a[31:21], b[31:21], c1);
	 ripple_carry_11 rca0_11(s0[31:21], cy0[3], a[31:21], b[31:21], c0);
	 assign s[31:21] = cy[2]?s1[31:21]:s0[31:21];
	 mux21 mux_for_carry_from_rca11(cout, cy[2], cy0[3], cy1[3]);	
endmodule
//RCA 5, 7, 9, 11
//RA1511004010752
//Handcrafted by Aishwarya A R
                                      //5 bit ripple carry adder
module ripple_carry_5(s, cout, a, b, cin);
	parameter N = 5;
	output [N-1:0]s;
	output cout;
	input [N-1:0]a,b;
	wire [N:0]ctemp;
	input cin;
	assign ctemp[0] = cin;
	genvar i;
	generate
	    for(i=0; i<N; i=i+1) begin: loop
	        fa fn(s[i], ctemp[i+1], a[i], b[i], ctemp[i]);
		 end
   endgenerate
   assign cout=ctemp[N];
endmodule 
//RA1511004010752
//Handcrafted by Aishwarya A R
                                      //7 bit ripple carry adder
module ripple_carry_7(s, cout, a, b, cin);
	parameter N = 7;
	output [N-1:0]s;
	output cout;
	input [N-1:0]a,b;
	wire [N:0]ctemp;
	input cin;
	assign ctemp[0] = cin;
	genvar i;
	generate
	    for(i=0; i<N; i=i+1) begin: loop
	        fa fn(s[i], ctemp[i+1], a[i], b[i], ctemp[i]);
		 end
   endgenerate
   assign cout=ctemp[N];
endmodule 
//RA1511004010752
//Handcrafted by Aishwarya A R
                                      //9 bit ripple carry adder
module ripple_carry_9(s, cout, a, b, cin);
	parameter N = 9;
	output [N-1:0]s;
	output cout;
	input [N-1:0]a,b;
	wire [N:0]ctemp;
	input cin;
	assign ctemp[0] = cin;
	genvar i;
	generate
	    for(i=0; i<N; i=i+1) begin: loop
	        fa fn(s[i], ctemp[i+1], a[i], b[i], ctemp[i]);
		 end
   endgenerate
   assign cout=ctemp[N];
endmodule 
//RA1511004010752
//Handcrafted by Aishwarya A R
                                       //11 bit ripple carry adder
module ripple_carry_11(s, cout, a, b, cin);
	parameter N = 11;
	output [N-1:0]s;
	output cout;
	input [N-1:0]a,b;
	wire [N:0]ctemp;
	input cin;
	assign ctemp[0] = cin;
	genvar i;
	generate
	    for(i=0; i<N; i=i+1) begin: loop
	        fa fn(s[i], ctemp[i+1], a[i], b[i], ctemp[i]);
		 end
   endgenerate
   assign cout=ctemp[N];
endmodule 
