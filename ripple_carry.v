//RA1511004010752
//Handcrafted by Aishwarya A R
//n bit ripple carry adder
module ripple_carry_n(s, cout, a, b, cin);
	parameter N = 4;
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
