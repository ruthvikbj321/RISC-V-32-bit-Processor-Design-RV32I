module msrv32_immediate_adder_tb();
	reg [31:0] pc_in,rs_1_in,imm_in;
	reg iadder_src_in;
	wire [31:0] iadder_out;
	
	
	msrv32_immediate_adder DUT(.pc_in(pc_in),.rs_1_in(rs_1_in),.imm_in(imm_in),.iadder_src_in(iadder_src_in),.iadder_out(iadder_out));


  task delay();
  begin
    #10;
  end
  endtask
 

initial
begin
	iadder_src_in = 1;
	pc_in	= 32'h00000008;
	rs_1_in = 32'h00000008;
	imm_in 	= 32'h00000004;
	delay;
	iadder_src_in = 0;
	pc_in 	= 32'h00000088;
	rs_1_in = 32'h00000006;
	imm_in 	= 32'h00000004;
	delay;
	$finish;
end

initial $monitor("iadder_src_in = %b, pc_in=%0d, rs_1_in=%0d, imm_in=%0d, iadder_out=%0d",iadder_src_in, pc_in,rs_1_in,imm_in,iadder_out);

endmodule


