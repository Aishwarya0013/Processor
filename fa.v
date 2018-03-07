//RA1511004010752
//Handcrafted by Aishwarya A R
module fa(sum, carry, a, b, c);
    output sum, carry;
    input   a, b, c;
	 wire w1, w2, w3, w4, w5;
	 xor x1(w1, a, b);
	 xor x2(sum, w1, c);
	 and a1(w2, a, b);
	 and a2(w3, b, c);
	 and a3(w4, a, c);
	 or o1(w5, w2, w3);
	 or o2(carry, w5, w4);
endmodule
