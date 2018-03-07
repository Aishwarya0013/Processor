//RA1511004010752
//Handcrafted by Aishwarya A R
module mux21(out, s, in0, in1);
    output out;
    input s, in0, in1;
	 assign out = s?in1:in0;
endmodule
