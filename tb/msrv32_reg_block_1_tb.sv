`timescale 1ns/1ps
module msrv32_reg_block_1_tb();

	reg [31:0]	pc_mux_in;
	reg			ms_riscv32_mp_clk_in;
	reg			ms_riscv32_mp_rst_in;
	
	wire [31:0]	pc_out;
	
	msrv32_reg_block_1 uut (
        .pc_mux_in(pc_mux_in),
        .ms_riscv32_mp_clk_in(ms_riscv32_mp_clk_in),
        .ms_riscv32_mp_rst_in(ms_riscv32_mp_rst_in),
        .pc_out(pc_out)
    );
	
	always
		#5 ms_riscv32_mp_clk_in = ~ms_riscv32_mp_clk_in;
	
	task rst;
		@(negedge ms_riscv32_mp_clk_in)
		ms_riscv32_mp_rst_in = 1;
		@(negedge ms_riscv32_mp_clk_in)
		ms_riscv32_mp_rst_in = 0;
	endtask
	
	initial begin
        ms_riscv32_mp_clk_in = 0;
        ms_riscv32_mp_rst_in = 0;
        pc_mux_in = 32'h00000000;
		
		rst;
		
		@(negedge ms_riscv32_mp_clk_in);
		pc_mux_in = 32'h0205a608;
		
		@(negedge ms_riscv32_mp_clk_in);
		pc_mux_in = 32'h0abc7654;
		@(negedge ms_riscv32_mp_clk_in);
		
		#100;
		
	end
	initial
		$monitor("pc_in = %h, pc_out = %h",pc_mux_in,pc_out);
endmodule