module msrv32_pc_tb();

reg			rst_in;
reg 		branch_taken_in;
reg			ahb_ready_in;
reg[1:0]	pc_src_in;
reg[31:0]	epc_in;
reg[31:0]	trap_address_in, pc_in;
reg[31:1]	iaddr_in;

wire[31:0]	pc_plus_4_out;
wire[31:0]	iaddr_out;
wire[31:0]	pc_mux_out;
wire		misaligned_instr_logic_out;

msrv32_pc DUT(.branch_taken_in(branch_taken_in),
			 .rst_in(rst_in),
			 .ahb_ready_in(ahb_ready_in),
			 .pc_src_in(pc_src_in),
			 .epc_in(epc_in),
			 .trap_address_in(trap_address_in),
			 .pc_in(pc_in),
			 .iaddr_in(iaddr_in),
			 
			 .pc_plus_4_out(pc_plus_4_out),
			 .i_addr_out(iaddr_out),
			 .pc_mux_out(pc_mux_out),
			 .misaligned_instr_logic_out(misaligned_instr_logic_out)
			 );
			 
	reg[1:0] i;
	
	initial
	begin
		pc_in			= 32'h0000000c;
		epc_in			= 32'h00000004;
		trap_address_in = 32'h00000008;
		iaddr_in		= 31'b1010_1100_0011_1110_0111_1101_000_101;
		
	end
	
	initial
	begin
		branch_taken_in = 1'b0;
		pc_src_in		= 2'b11;
		ahb_ready_in	= 1'b1;
		rst_in			= 1'b0;
		#10;
		
		for(i = 2'b00; i<2'b11; i = i+1) begin
			pc_src_in = i;
			#10;
		end
		#10;
		
		rst_in		= 1'b1;
		#10;
		
		branch_taken_in = 1'b1;
		pc_src_in		= 2'b11;
		#10;
		
		for(i=2'b00; i<2'b11; i=i+1)
		  begin
			pc_src_in = i;
			#10;
		  end
		  #10;
		  
		  rst_in = 1'b0;
		  
		 #200;
		$finish;
	end

		initial 
		$monitor ("The output pc_src_in = %h i_addr_out = %h, The output pc_plus_4_out = %h, The misaligned_instr_logic_out = %h, The pc_mux_out = %h"
				  ,pc_src_in,iaddr_out, pc_plus_4_out, misaligned_instr_logic_out, pc_mux_out);

endmodule
	
	