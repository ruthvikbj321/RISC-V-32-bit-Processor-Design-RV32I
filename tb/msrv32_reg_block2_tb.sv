module msrv32_reg_block2_tb();

  // Inputs
  reg clk_in;
  reg reset_in;
  reg load_unsigned_in;
  reg branch_taken_in;
  reg alu_src_in;
  reg csr_wr_en_in;
  reg rf_wr_en_in;
  reg [4:0] rd_addr_in;
  reg [11:0] csr_addr_in;
  reg [31:0] rs1_in;
  reg [31:0] rs2_in;
  reg [31:0] pc_in;
  reg [31:0] pc_plus_4_in;
  reg [31:0] iadder_in;
  reg [31:0] imm_in;
  reg [3:0] alu_opcode_in;
  reg [1:0] load_size_in;
  reg [2:0] wb_mux_sel_in;
  reg [2:0] csr_op_in;

  // Outputs
  wire [4:0] rd_addr_reg_out;
  wire [11:0] csr_addr_reg_out;
  wire [31:0] rs1_reg_out;
  wire [31:0] rs2_reg_out;
  wire [31:0] pc_reg_out;
  wire [31:0] pc_plus_4_reg_out;
  wire [31:0] iadder_out_reg_out;
  wire [3:0] alu_opcode_reg_out;
  wire [1:0] load_size_reg_out;
  wire load_unsigned_reg_out;
  wire alu_src_reg_out;
  wire csr_wr_en_reg_out;
  wire rf_wr_en_reg_out;
  wire [2:0] wb_mux_sel_reg_out;
  wire [2:0] csr_op_reg_out;
  wire [31:0] imm_reg_out;

  // Instantiate the unit under test (UUT)
  msrv32_reg_block2 dut (
    .clk_in(clk_in),
    .reset_in(reset_in),
    .load_unsigned_in(load_unsigned_in),
    .branch_taken_in(branch_taken_in),
    .alu_src_in(alu_src_in),
    .csr_wr_en_in(csr_wr_en_in),
    .rf_wr_en_in(rf_wr_en_in),
    .rd_addr_in(rd_addr_in),
    .csr_addr_in(csr_addr_in),
    .rs1_in(rs1_in),
    .rs2_in(rs2_in),
    .pc_in(pc_in),
    .pc_plus_4_in(pc_plus_4_in),
    .iadder_in(iadder_in),
    .imm_in(imm_in),
    .alu_opcode_in(alu_opcode_in),
    .load_size_in(load_size_in),
    .wb_mux_sel_in(wb_mux_sel_in),
    .csr_op_in(csr_op_in),
    .rd_addr_reg_out(rd_addr_reg_out),
    .csr_addr_reg_out(csr_addr_reg_out),
    .rs1_reg_out(rs1_reg_out),
    .rs2_reg_out(rs2_reg_out),
    .pc_reg_out(pc_reg_out),
    .pc_plus_4_reg_out(pc_plus_4_reg_out),
    .iadder_out_reg_out(iadder_out_reg_out),
    .alu_opcode_reg_out(alu_opcode_reg_out),
    .load_size_reg_out(load_size_reg_out),
    .load_unsigned_reg_out(load_unsigned_reg_out),
    .alu_src_reg_out(alu_src_reg_out),
    .csr_wr_en_reg_out(csr_wr_en_reg_out),
    .rf_wr_en_reg_out(rf_wr_en_reg_out),
    .wb_mux_sel_reg_out(wb_mux_sel_reg_out),
    .csr_op_reg_out(csr_op_reg_out),
    .imm_reg_out(imm_reg_out)
  );

  // Clock initialization
  always begin
    clk_in = 0;
    #5;
    clk_in = 1;
    #5;
  end

  // Test stimulus
  initial 
  begin
    reset_in = 1; // Assert reset
    load_unsigned_in = 0;
    branch_taken_in = 0;
    alu_src_in = 0;
    csr_wr_en_in = 0;
    rf_wr_en_in = 0;
    rd_addr_in = 5'b00000;
    csr_addr_in = 12'b000000000000;
    rs1_in = 32'h00000000;
    rs2_in = 32'h00000000;
    pc_in = 32'h00000000;
    pc_plus_4_in = 32'h00000000;
    iadder_in = 32'h00000000;
    imm_in = 32'h00000000;
    alu_opcode_in = 4'b0000;
    load_size_in = 2'b00;
    wb_mux_sel_in = 3'b000;
    csr_op_in = 3'b000;

    #10;
    reset_in = 0; // Assert reset
    load_unsigned_in = 1;
    branch_taken_in = 1;
    alu_src_in = 1;
    csr_wr_en_in = 1;
    rf_wr_en_in = 1;
    rd_addr_in = 5'b00011;
    csr_addr_in = 12'b000000100111;
    rs1_in = 32'h00000004;
    rs2_in = 32'h00000008;
    pc_in = 32'h0000000c;
    pc_plus_4_in = 32'h0000000e;
    iadder_in = 32'h00000010;
    imm_in = 32'h00000006;
    alu_opcode_in = 4'b0010;
    load_size_in = 2'b10;
    wb_mux_sel_in = 3'b011;
    csr_op_in = 3'b100;    

    // Add test cases here
    // Wait for a few clock cycles
    #20;

    // Verify the output signals
    $display("rd_addr_reg_out = %b", rd_addr_reg_out);
    $display("csr_addr_reg_out = %b", csr_addr_reg_out);
    $display("rs1_reg_out = %b", rs1_reg_out);
    $display("rs2_reg_out = %b", rs2_reg_out);
    $display("pc_reg_out = %b", pc_reg_out);
    $display("pc_plus_4_reg_out = %b", pc_plus_4_reg_out);
    $display("iadder_out_reg_out = %b", iadder_out_reg_out);
    $display("alu_opcode_reg_out = %b", alu_opcode_reg_out);
    $display("load_size_reg_out = %b", load_size_reg_out);
    $display("load_unsigned_reg_out = %b", load_unsigned_reg_out);
    $display("alu_src_reg_out = %b", alu_src_reg_out);
    $display("csr_wr_en_reg_out = %b", csr_wr_en_reg_out);
    $display("rf_wr_en_reg_out = %b", rf_wr_en_reg_out);
    $display("wb_mux_sel_reg_out = %b", wb_mux_sel_reg_out);
    $display("csr_op_reg_out = %b", csr_op_reg_out);
    $display("imm_reg_out = %b", imm_reg_out);

    // End the simulation
    $finish;
  end

endmodule
