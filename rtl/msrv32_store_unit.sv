module msrv32_store_unit(
						input [1:0]	funct3_in,
						input [31:0] iadder_in,
						input [31:0] rs2_in,
						input mem_wr_req_in,
						input ahb_ready_in,
						
						output 	   [31:0]	ms_riscv32_mp_dmaddr_out,
						output reg [31:0]   ms_riscv32_mp_dmdata_out,
						output reg [3:0]    ms_riscv32_mp_dmwr_mask_out,
						output          	ms_riscv32_mp_dmwr_req_out,
						output reg [1:0] 	ahb_htrans_out
						);
						
		reg [31:0] byte_dout, halfword_dout;
		reg [3:0]  byte_wr_mask, halfword_wr_mask;
		
		
		assign ms_riscv32_mp_dmaddr_out = {iadder_in[31:2], 2'b00};
		assign ms_riscv32_mp_dmwr_req_out = mem_wr_req_in;
				
		always@(*) begin
			byte_dout = 32'b0;
			byte_wr_mask = 4'b0;
			case(iadder_in[1:0])
				2'b00:begin 
						byte_dout = {8'b0, 8'b0, 8'b0, rs2_in[7:0]};
						byte_wr_mask = {3'b0, mem_wr_req_in};
					end
				2'b01:begin
						byte_dout = {8'b0, 8'b0, rs2_in[7:0], 8'b0};
						byte_wr_mask = {2'b0, mem_wr_req_in, 1'b0};
					end
				2'b10:begin
						byte_dout = {8'b0, rs2_in[7:0], 8'b0, 8'b0};
						byte_wr_mask = {1'b0, mem_wr_req_in, 2'b0};
					end
				2'b11:begin
						byte_dout = {rs2_in[7:0],8'b0, 8'b0, 8'b0};
						byte_wr_mask = {mem_wr_req_in, 3'b0};
					end
				
			endcase
		end
		
		always@(*) begin
			halfword_dout = 32'b0;
			halfword_wr_mask = 4'b0;
			 
			case(iadder_in[1])
				1'b0:begin
						halfword_dout = {16'b0, rs2_in[15:0]};
						halfword_wr_mask = {2'b0, {2{mem_wr_req_in}}};
					end
				1'b1:begin
						halfword_dout = {rs2_in[15:0], 16'b0};
						halfword_wr_mask = {{2{mem_wr_req_in}}, 2'b0};
					end
			endcase
		end
		
		always@(*) begin
			ms_riscv32_mp_dmdata_out = 32'b0;
			ahb_htrans_out = 2'b00;
			if(ahb_ready_in) begin
				case(funct3_in)
					2'b00: ms_riscv32_mp_dmdata_out = byte_dout;
					2'b01: ms_riscv32_mp_dmdata_out = halfword_dout;
					default: ms_riscv32_mp_dmdata_out = rs2_in;
					//2'b11: ms_riscv32_mp_dmdata_out = rs2_in;
				endcase
				ahb_htrans_out = 2'b10;
			end
			
		end
		
		always@(*) begin
			case(funct3_in) 
				2'b00: ms_riscv32_mp_dmwr_mask_out = byte_wr_mask;
				2'b01: ms_riscv32_mp_dmwr_mask_out = halfword_wr_mask;
				default: ms_riscv32_mp_dmwr_mask_out = {4{mem_wr_req_in}};
			endcase
		end
endmodule


