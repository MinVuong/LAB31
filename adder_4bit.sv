module adder_4bit(
	input logic [3:0] a,
	input logic [3:0] b,
	output logic [3:0] s_o
	);

	logic [3:0] c_w;
	full_adder A0(a[0], b[0], 1'b0, s_o[0], c_w[0]);
	full_adder A1(a[1], b[1], c_w[0], s_o[1], c_w[1]);
	full_adder A2(a[2], b[2], c_w[1], s_o[2], c_w[2]);
	full_adder A3(a[3], b[3], c_w[2], s_o[3], c_w[3]);
	// not use carry
	
endmodule