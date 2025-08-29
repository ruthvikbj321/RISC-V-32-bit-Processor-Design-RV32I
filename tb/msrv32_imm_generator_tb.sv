module msrv32_imm_generator_tb();

reg [31:7]		instr_in;
reg	[2:0]		imm_type_in;

wire [31:0]		imm_out;

msrv32_imm_generator dut(
						.instr_in(instr_in),
						.imm_type_in(imm_type_in),
						.imm_out(imm_out)
					);
					
integer i;

	task initialize;
		begin
			instr_in = 0;
			imm_type_in = 0;
		end
	endtask
	
	task select(input [2:0]in);
		begin
			imm_type_in = in;
		end
	endtask
	


	initial begin
		initialize;
		#10;
		
		for(i=0; i<8; i=i+1) begin
			select(i);
			
			instr_in = 25'b1010101000110011010101010;
			#10;
			instr_in = 25'b1110001100110011000101111;
			#10;
		end
	#50 $finish;
	end
	
	initial
		$monitor("instr=%b,imm_type_in=%b,imm_out=%b\n",instr_in,imm_type_in,imm_out);

endmodule