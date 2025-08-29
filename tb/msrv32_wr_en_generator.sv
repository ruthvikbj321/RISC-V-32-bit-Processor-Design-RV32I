module msrv32_wr_en_generator(
							input 		flush_in,
							input 		rf_wr_en_reg_in,
							input		csr_wr_en_reg_in,
							output reg	wr_en_integer_file_out,
							output reg	wr_en_csr_file_out
							);

	always@(*)
		begin
			if(flush_in) begin
				wr_en_csr_file_out = 0;
				wr_en_integer_file_out = 0;
			end
			else begin
				wr_en_csr_file_out = csr_wr_en_reg_in;
				wr_en_integer_file_out = rf_wr_en_reg_in;
			end
				
		end
endmodule