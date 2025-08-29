module msrv32_integer_file_tb();

	reg ms_riscv32_mp_clk_in, ms_riscv32_mp_rst_in;

	reg [4:0]	rs_1_addr_in, rs_2_addr_in;
	wire [31:0]	rs_1_out, rs_2_out;

	reg [4:0] 	rd_addr_in;
	reg		  	wr_en_in;
	reg	[31:0]	rd_in;
	
	msrv32_integer_file dut(
							.ms_riscv32_mp_clk_in(ms_riscv32_mp_clk_in),
							.ms_riscv32_mp_rst_in(ms_riscv32_mp_rst_in),
							.rs_1_addr_in(rs_1_addr_in),
							.rs_2_addr_in(rs_2_addr_in),
							.rs_1_out(rs_1_out),
							.rs_2_out(rs_2_out),
							.rd_addr_in(rd_addr_in),
							.wr_en_in(wr_en_in),
							.rd_in(rd_in)
							);
							
	task initialize;
		begin
			rs_1_addr_in = 0;
			rs_2_addr_in = 0;
			rd_addr_in   = 0;
			wr_en_in	 = 0;
			rd_in		 = 0;
		end
	endtask
	
	initial begin
		#10 ms_riscv32_mp_clk_in = 0;
		
		forever
		 #10 ms_riscv32_mp_clk_in = ~ms_riscv32_mp_clk_in;
	end
	
	task rst;
		begin
			#10;
			ms_riscv32_mp_rst_in = 1;
			#10;
			ms_riscv32_mp_rst_in = 0;
		end
	endtask
	
	task stimulus_write(	input [4:0] 	rd_addr,
							input 			wr_en,
							input [31:0]	rd );
		begin
			@(negedge ms_riscv32_mp_clk_in)
			rd_addr_in = rd_addr;
			wr_en_in   = wr_en;
			rd_in	   = rd; 
		end
	endtask
	
	task stimulus_read(	input [4:0] rs1_addr, rs2_addr,
						input wr_en);
		begin
		@(negedge ms_riscv32_mp_clk_in)
			rs_1_addr_in = rs1_addr;
			rs_2_addr_in = rs2_addr;
			wr_en_in	 = wr_en;

			
		end
	endtask
	
	initial begin
		initialize;
		rst;	
		stimulus_write(5'd5, 1'b1, 32'd30);
		stimulus_write(5'd6, 1'b1, 32'd25);
		
		stimulus_read(5'd6, 5'd5, 1'b0);
		
		fork
			begin
				stimulus_write(5'd10, 1'b1, 32'd33);
				stimulus_read(5'd10, 5'd0, 1'b0);
			end
		join
		
		#100;
		$finish;	
	end	
	
	initial
		$monitor("inputs rd_in = %0d, rs_1_addr_in = %d, rs_2_addr_in = %d, wr_en_in = %b, \n Outputs rs_1_out = %d, rs_2_out = %d", rd_in,rs_1_addr_in,rs_2_addr_in, wr_en_in, rs_1_out, rs_2_out);
	
endmodule
	
	
	