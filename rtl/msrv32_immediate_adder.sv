module msrv32_immediate_adder(
							input [31:0]	pc_in,
							input [31:0]	rs_1_in,
							input 			iadder_src_in,
							input [31:0]	imm_in,
							
							output reg[31:0]	iadder_out);

		always@(*)
			begin
				if(iadder_src_in)
					iadder_out = rs_1_in + imm_in;
				else
					iadder_out = pc_in + imm_in;
			end
endmodule