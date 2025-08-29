/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:28:02 2025
/////////////////////////////////////////////////////////////


module msrv32_reg_block2 ( clk_in, reset_in, load_unsigned_in, branch_taken_in, 
        alu_src_in, csr_wr_en_in, rf_wr_en_in, rd_addr_in, csr_addr_in, rs1_in, 
        rs2_in, pc_in, pc_plus_4_in, iadder_in, imm_in, alu_opcode_in, 
        load_size_in, wb_mux_sel_in, csr_op_in, rd_addr_reg_out, 
        csr_addr_reg_out, rs1_reg_out, rs2_reg_out, pc_reg_out, 
        pc_plus_4_reg_out, iadder_out_reg_out, imm_reg_out, alu_opcode_reg_out, 
        load_size_reg_out, load_unsigned_reg_out, alu_src_reg_out, 
        csr_wr_en_reg_out, rf_wr_en_reg_out, wb_mux_sel_reg_out, 
        csr_op_reg_out );
  input [4:0] rd_addr_in;
  input [11:0] csr_addr_in;
  input [31:0] rs1_in;
  input [31:0] rs2_in;
  input [31:0] pc_in;
  input [31:0] pc_plus_4_in;
  input [31:0] iadder_in;
  input [31:0] imm_in;
  input [3:0] alu_opcode_in;
  input [1:0] load_size_in;
  input [2:0] wb_mux_sel_in;
  input [2:0] csr_op_in;
  output [4:0] rd_addr_reg_out;
  output [11:0] csr_addr_reg_out;
  output [31:0] rs1_reg_out;
  output [31:0] rs2_reg_out;
  output [31:0] pc_reg_out;
  output [31:0] pc_plus_4_reg_out;
  output [31:0] iadder_out_reg_out;
  output [31:0] imm_reg_out;
  output [3:0] alu_opcode_reg_out;
  output [1:0] load_size_reg_out;
  output [2:0] wb_mux_sel_reg_out;
  output [2:0] csr_op_reg_out;
  input clk_in, reset_in, load_unsigned_in, branch_taken_in, alu_src_in,
         csr_wr_en_in, rf_wr_en_in;
  output load_unsigned_reg_out, alu_src_reg_out, csr_wr_en_reg_out,
         rf_wr_en_reg_out;
  wire   N3, n3, n4;

  FD2 rf_wr_en_reg_out_reg ( .D(rf_wr_en_in), .CP(clk_in), .CD(n3), .Q(
        rf_wr_en_reg_out) );
  FD2 \csr_op_reg_out_reg[2]  ( .D(csr_op_in[2]), .CP(clk_in), .CD(n3), .Q(
        csr_op_reg_out[2]) );
  FD2 \csr_op_reg_out_reg[1]  ( .D(csr_op_in[1]), .CP(clk_in), .CD(n3), .Q(
        csr_op_reg_out[1]) );
  FD2 \csr_op_reg_out_reg[0]  ( .D(csr_op_in[0]), .CP(clk_in), .CD(n3), .Q(
        csr_op_reg_out[0]) );
  FD2 \wb_mux_sel_reg_out_reg[2]  ( .D(wb_mux_sel_in[2]), .CP(clk_in), .CD(n3), 
        .Q(wb_mux_sel_reg_out[2]) );
  FD2 \wb_mux_sel_reg_out_reg[1]  ( .D(wb_mux_sel_in[1]), .CP(clk_in), .CD(n3), 
        .Q(wb_mux_sel_reg_out[1]) );
  FD2 \wb_mux_sel_reg_out_reg[0]  ( .D(wb_mux_sel_in[0]), .CP(clk_in), .CD(n3), 
        .Q(wb_mux_sel_reg_out[0]) );
  FD2 \imm_reg_out_reg[31]  ( .D(imm_in[31]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[31]) );
  FD2 \imm_reg_out_reg[30]  ( .D(imm_in[30]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[30]) );
  FD2 \imm_reg_out_reg[29]  ( .D(imm_in[29]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[29]) );
  FD2 \imm_reg_out_reg[28]  ( .D(imm_in[28]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[28]) );
  FD2 \imm_reg_out_reg[27]  ( .D(imm_in[27]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[27]) );
  FD2 \imm_reg_out_reg[26]  ( .D(imm_in[26]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[26]) );
  FD2 \imm_reg_out_reg[25]  ( .D(imm_in[25]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[25]) );
  FD2 \imm_reg_out_reg[24]  ( .D(imm_in[24]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[24]) );
  FD2 \imm_reg_out_reg[23]  ( .D(imm_in[23]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[23]) );
  FD2 \imm_reg_out_reg[22]  ( .D(imm_in[22]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[22]) );
  FD2 \imm_reg_out_reg[21]  ( .D(imm_in[21]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[21]) );
  FD2 \imm_reg_out_reg[20]  ( .D(imm_in[20]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[20]) );
  FD2 \imm_reg_out_reg[19]  ( .D(imm_in[19]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[19]) );
  FD2 \imm_reg_out_reg[18]  ( .D(imm_in[18]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[18]) );
  FD2 \imm_reg_out_reg[17]  ( .D(imm_in[17]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[17]) );
  FD2 \imm_reg_out_reg[16]  ( .D(imm_in[16]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[16]) );
  FD2 \imm_reg_out_reg[15]  ( .D(imm_in[15]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[15]) );
  FD2 \imm_reg_out_reg[14]  ( .D(imm_in[14]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[14]) );
  FD2 \imm_reg_out_reg[13]  ( .D(imm_in[13]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[13]) );
  FD2 \imm_reg_out_reg[12]  ( .D(imm_in[12]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[12]) );
  FD2 \imm_reg_out_reg[11]  ( .D(imm_in[11]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[11]) );
  FD2 \imm_reg_out_reg[10]  ( .D(imm_in[10]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[10]) );
  FD2 \imm_reg_out_reg[9]  ( .D(imm_in[9]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[9]) );
  FD2 \imm_reg_out_reg[8]  ( .D(imm_in[8]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[8]) );
  FD2 \imm_reg_out_reg[7]  ( .D(imm_in[7]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[7]) );
  FD2 \imm_reg_out_reg[6]  ( .D(imm_in[6]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[6]) );
  FD2 \imm_reg_out_reg[5]  ( .D(imm_in[5]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[5]) );
  FD2 \imm_reg_out_reg[4]  ( .D(imm_in[4]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[4]) );
  FD2 \imm_reg_out_reg[3]  ( .D(imm_in[3]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[3]) );
  FD2 \imm_reg_out_reg[2]  ( .D(imm_in[2]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[2]) );
  FD2 \imm_reg_out_reg[1]  ( .D(imm_in[1]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[1]) );
  FD2 \imm_reg_out_reg[0]  ( .D(imm_in[0]), .CP(clk_in), .CD(n3), .Q(
        imm_reg_out[0]) );
  FD2 \rd_addr_reg_out_reg[4]  ( .D(rd_addr_in[4]), .CP(clk_in), .CD(n3), .Q(
        rd_addr_reg_out[4]) );
  FD2 \rd_addr_reg_out_reg[3]  ( .D(rd_addr_in[3]), .CP(clk_in), .CD(n3), .Q(
        rd_addr_reg_out[3]) );
  FD2 \rd_addr_reg_out_reg[2]  ( .D(rd_addr_in[2]), .CP(clk_in), .CD(n3), .Q(
        rd_addr_reg_out[2]) );
  FD2 \rd_addr_reg_out_reg[1]  ( .D(rd_addr_in[1]), .CP(clk_in), .CD(n3), .Q(
        rd_addr_reg_out[1]) );
  FD2 \rd_addr_reg_out_reg[0]  ( .D(rd_addr_in[0]), .CP(clk_in), .CD(n3), .Q(
        rd_addr_reg_out[0]) );
  FD2 \csr_addr_reg_out_reg[11]  ( .D(csr_addr_in[11]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[11]) );
  FD2 \csr_addr_reg_out_reg[10]  ( .D(csr_addr_in[10]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[10]) );
  FD2 \csr_addr_reg_out_reg[9]  ( .D(csr_addr_in[9]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[9]) );
  FD2 \csr_addr_reg_out_reg[8]  ( .D(csr_addr_in[8]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[8]) );
  FD2 \csr_addr_reg_out_reg[7]  ( .D(csr_addr_in[7]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[7]) );
  FD2 \csr_addr_reg_out_reg[6]  ( .D(csr_addr_in[6]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[6]) );
  FD2 \csr_addr_reg_out_reg[5]  ( .D(csr_addr_in[5]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[5]) );
  FD2 \csr_addr_reg_out_reg[4]  ( .D(csr_addr_in[4]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[4]) );
  FD2 \csr_addr_reg_out_reg[3]  ( .D(csr_addr_in[3]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[3]) );
  FD2 \csr_addr_reg_out_reg[2]  ( .D(csr_addr_in[2]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[2]) );
  FD2 \csr_addr_reg_out_reg[1]  ( .D(csr_addr_in[1]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[1]) );
  FD2 \csr_addr_reg_out_reg[0]  ( .D(csr_addr_in[0]), .CP(clk_in), .CD(n3), 
        .Q(csr_addr_reg_out[0]) );
  FD2 \rs1_reg_out_reg[31]  ( .D(rs1_in[31]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[31]) );
  FD2 \rs1_reg_out_reg[30]  ( .D(rs1_in[30]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[30]) );
  FD2 \rs1_reg_out_reg[29]  ( .D(rs1_in[29]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[29]) );
  FD2 \rs1_reg_out_reg[28]  ( .D(rs1_in[28]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[28]) );
  FD2 \rs1_reg_out_reg[27]  ( .D(rs1_in[27]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[27]) );
  FD2 \rs1_reg_out_reg[26]  ( .D(rs1_in[26]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[26]) );
  FD2 \rs1_reg_out_reg[25]  ( .D(rs1_in[25]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[25]) );
  FD2 \rs1_reg_out_reg[24]  ( .D(rs1_in[24]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[24]) );
  FD2 \rs1_reg_out_reg[23]  ( .D(rs1_in[23]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[23]) );
  FD2 \rs1_reg_out_reg[22]  ( .D(rs1_in[22]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[22]) );
  FD2 \rs1_reg_out_reg[21]  ( .D(rs1_in[21]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[21]) );
  FD2 \rs1_reg_out_reg[20]  ( .D(rs1_in[20]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[20]) );
  FD2 \rs1_reg_out_reg[19]  ( .D(rs1_in[19]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[19]) );
  FD2 \rs1_reg_out_reg[18]  ( .D(rs1_in[18]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[18]) );
  FD2 \rs1_reg_out_reg[17]  ( .D(rs1_in[17]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[17]) );
  FD2 \rs1_reg_out_reg[16]  ( .D(rs1_in[16]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[16]) );
  FD2 \rs1_reg_out_reg[15]  ( .D(rs1_in[15]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[15]) );
  FD2 \rs1_reg_out_reg[14]  ( .D(rs1_in[14]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[14]) );
  FD2 \rs1_reg_out_reg[13]  ( .D(rs1_in[13]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[13]) );
  FD2 \rs1_reg_out_reg[12]  ( .D(rs1_in[12]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[12]) );
  FD2 \rs1_reg_out_reg[11]  ( .D(rs1_in[11]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[11]) );
  FD2 \rs1_reg_out_reg[10]  ( .D(rs1_in[10]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[10]) );
  FD2 \rs1_reg_out_reg[9]  ( .D(rs1_in[9]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[9]) );
  FD2 \rs1_reg_out_reg[8]  ( .D(rs1_in[8]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[8]) );
  FD2 \rs1_reg_out_reg[7]  ( .D(rs1_in[7]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[7]) );
  FD2 \rs1_reg_out_reg[6]  ( .D(rs1_in[6]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[6]) );
  FD2 \rs1_reg_out_reg[5]  ( .D(rs1_in[5]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[5]) );
  FD2 \rs1_reg_out_reg[4]  ( .D(rs1_in[4]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[4]) );
  FD2 \rs1_reg_out_reg[3]  ( .D(rs1_in[3]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[3]) );
  FD2 \rs1_reg_out_reg[2]  ( .D(rs1_in[2]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[2]) );
  FD2 \rs1_reg_out_reg[1]  ( .D(rs1_in[1]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[1]) );
  FD2 \rs1_reg_out_reg[0]  ( .D(rs1_in[0]), .CP(clk_in), .CD(n3), .Q(
        rs1_reg_out[0]) );
  FD2 \rs2_reg_out_reg[31]  ( .D(rs2_in[31]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[31]) );
  FD2 \rs2_reg_out_reg[30]  ( .D(rs2_in[30]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[30]) );
  FD2 \rs2_reg_out_reg[29]  ( .D(rs2_in[29]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[29]) );
  FD2 \rs2_reg_out_reg[28]  ( .D(rs2_in[28]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[28]) );
  FD2 \rs2_reg_out_reg[27]  ( .D(rs2_in[27]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[27]) );
  FD2 \rs2_reg_out_reg[26]  ( .D(rs2_in[26]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[26]) );
  FD2 \rs2_reg_out_reg[25]  ( .D(rs2_in[25]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[25]) );
  FD2 \rs2_reg_out_reg[24]  ( .D(rs2_in[24]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[24]) );
  FD2 \rs2_reg_out_reg[23]  ( .D(rs2_in[23]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[23]) );
  FD2 \rs2_reg_out_reg[22]  ( .D(rs2_in[22]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[22]) );
  FD2 \rs2_reg_out_reg[21]  ( .D(rs2_in[21]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[21]) );
  FD2 \rs2_reg_out_reg[20]  ( .D(rs2_in[20]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[20]) );
  FD2 \rs2_reg_out_reg[19]  ( .D(rs2_in[19]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[19]) );
  FD2 \rs2_reg_out_reg[18]  ( .D(rs2_in[18]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[18]) );
  FD2 \rs2_reg_out_reg[17]  ( .D(rs2_in[17]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[17]) );
  FD2 \rs2_reg_out_reg[16]  ( .D(rs2_in[16]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[16]) );
  FD2 \rs2_reg_out_reg[15]  ( .D(rs2_in[15]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[15]) );
  FD2 \rs2_reg_out_reg[14]  ( .D(rs2_in[14]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[14]) );
  FD2 \rs2_reg_out_reg[13]  ( .D(rs2_in[13]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[13]) );
  FD2 \rs2_reg_out_reg[12]  ( .D(rs2_in[12]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[12]) );
  FD2 \rs2_reg_out_reg[11]  ( .D(rs2_in[11]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[11]) );
  FD2 \rs2_reg_out_reg[10]  ( .D(rs2_in[10]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[10]) );
  FD2 \rs2_reg_out_reg[9]  ( .D(rs2_in[9]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[9]) );
  FD2 \rs2_reg_out_reg[8]  ( .D(rs2_in[8]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[8]) );
  FD2 \rs2_reg_out_reg[7]  ( .D(rs2_in[7]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[7]) );
  FD2 \rs2_reg_out_reg[6]  ( .D(rs2_in[6]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[6]) );
  FD2 \rs2_reg_out_reg[5]  ( .D(rs2_in[5]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[5]) );
  FD2 \rs2_reg_out_reg[4]  ( .D(rs2_in[4]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[4]) );
  FD2 \rs2_reg_out_reg[3]  ( .D(rs2_in[3]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[3]) );
  FD2 \rs2_reg_out_reg[2]  ( .D(rs2_in[2]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[2]) );
  FD2 \rs2_reg_out_reg[1]  ( .D(rs2_in[1]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[1]) );
  FD2 \rs2_reg_out_reg[0]  ( .D(rs2_in[0]), .CP(clk_in), .CD(n3), .Q(
        rs2_reg_out[0]) );
  FD2 \pc_reg_out_reg[31]  ( .D(pc_in[31]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[31]) );
  FD2 \pc_reg_out_reg[30]  ( .D(pc_in[30]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[30]) );
  FD2 \pc_reg_out_reg[29]  ( .D(pc_in[29]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[29]) );
  FD2 \pc_reg_out_reg[28]  ( .D(pc_in[28]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[28]) );
  FD2 \pc_reg_out_reg[27]  ( .D(pc_in[27]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[27]) );
  FD2 \pc_reg_out_reg[26]  ( .D(pc_in[26]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[26]) );
  FD2 \pc_reg_out_reg[25]  ( .D(pc_in[25]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[25]) );
  FD2 \pc_reg_out_reg[24]  ( .D(pc_in[24]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[24]) );
  FD2 \pc_reg_out_reg[23]  ( .D(pc_in[23]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[23]) );
  FD2 \pc_reg_out_reg[22]  ( .D(pc_in[22]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[22]) );
  FD2 \pc_reg_out_reg[21]  ( .D(pc_in[21]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[21]) );
  FD2 \pc_reg_out_reg[20]  ( .D(pc_in[20]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[20]) );
  FD2 \pc_reg_out_reg[19]  ( .D(pc_in[19]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[19]) );
  FD2 \pc_reg_out_reg[18]  ( .D(pc_in[18]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[18]) );
  FD2 \pc_reg_out_reg[17]  ( .D(pc_in[17]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[17]) );
  FD2 \pc_reg_out_reg[16]  ( .D(pc_in[16]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[16]) );
  FD2 \pc_reg_out_reg[15]  ( .D(pc_in[15]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[15]) );
  FD2 \pc_reg_out_reg[14]  ( .D(pc_in[14]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[14]) );
  FD2 \pc_reg_out_reg[13]  ( .D(pc_in[13]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[13]) );
  FD2 \pc_reg_out_reg[12]  ( .D(pc_in[12]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[12]) );
  FD2 \pc_reg_out_reg[11]  ( .D(pc_in[11]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[11]) );
  FD2 \pc_reg_out_reg[10]  ( .D(pc_in[10]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[10]) );
  FD2 \pc_reg_out_reg[9]  ( .D(pc_in[9]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[9]) );
  FD2 \pc_reg_out_reg[8]  ( .D(pc_in[8]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[8]) );
  FD2 \pc_reg_out_reg[7]  ( .D(pc_in[7]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[7]) );
  FD2 \pc_reg_out_reg[6]  ( .D(pc_in[6]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[6]) );
  FD2 \pc_reg_out_reg[5]  ( .D(pc_in[5]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[5]) );
  FD2 \pc_reg_out_reg[4]  ( .D(pc_in[4]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[4]) );
  FD2 \pc_reg_out_reg[3]  ( .D(pc_in[3]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[3]) );
  FD2 \pc_reg_out_reg[2]  ( .D(pc_in[2]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[2]) );
  FD2 \pc_reg_out_reg[1]  ( .D(pc_in[1]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[1]) );
  FD2 \pc_reg_out_reg[0]  ( .D(pc_in[0]), .CP(clk_in), .CD(n3), .Q(
        pc_reg_out[0]) );
  FD2 \pc_plus_4_reg_out_reg[31]  ( .D(pc_plus_4_in[31]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[31]) );
  FD2 \pc_plus_4_reg_out_reg[30]  ( .D(pc_plus_4_in[30]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[30]) );
  FD2 \pc_plus_4_reg_out_reg[29]  ( .D(pc_plus_4_in[29]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[29]) );
  FD2 \pc_plus_4_reg_out_reg[28]  ( .D(pc_plus_4_in[28]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[28]) );
  FD2 \pc_plus_4_reg_out_reg[27]  ( .D(pc_plus_4_in[27]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[27]) );
  FD2 \pc_plus_4_reg_out_reg[26]  ( .D(pc_plus_4_in[26]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[26]) );
  FD2 \pc_plus_4_reg_out_reg[25]  ( .D(pc_plus_4_in[25]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[25]) );
  FD2 \pc_plus_4_reg_out_reg[24]  ( .D(pc_plus_4_in[24]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[24]) );
  FD2 \pc_plus_4_reg_out_reg[23]  ( .D(pc_plus_4_in[23]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[23]) );
  FD2 \pc_plus_4_reg_out_reg[22]  ( .D(pc_plus_4_in[22]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[22]) );
  FD2 \pc_plus_4_reg_out_reg[21]  ( .D(pc_plus_4_in[21]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[21]) );
  FD2 \pc_plus_4_reg_out_reg[20]  ( .D(pc_plus_4_in[20]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[20]) );
  FD2 \pc_plus_4_reg_out_reg[19]  ( .D(pc_plus_4_in[19]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[19]) );
  FD2 \pc_plus_4_reg_out_reg[18]  ( .D(pc_plus_4_in[18]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[18]) );
  FD2 \pc_plus_4_reg_out_reg[17]  ( .D(pc_plus_4_in[17]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[17]) );
  FD2 \pc_plus_4_reg_out_reg[16]  ( .D(pc_plus_4_in[16]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[16]) );
  FD2 \pc_plus_4_reg_out_reg[15]  ( .D(pc_plus_4_in[15]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[15]) );
  FD2 \pc_plus_4_reg_out_reg[14]  ( .D(pc_plus_4_in[14]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[14]) );
  FD2 \pc_plus_4_reg_out_reg[13]  ( .D(pc_plus_4_in[13]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[13]) );
  FD2 \pc_plus_4_reg_out_reg[12]  ( .D(pc_plus_4_in[12]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[12]) );
  FD2 \pc_plus_4_reg_out_reg[11]  ( .D(pc_plus_4_in[11]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[11]) );
  FD2 \pc_plus_4_reg_out_reg[10]  ( .D(pc_plus_4_in[10]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[10]) );
  FD2 \pc_plus_4_reg_out_reg[9]  ( .D(pc_plus_4_in[9]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[9]) );
  FD2 \pc_plus_4_reg_out_reg[8]  ( .D(pc_plus_4_in[8]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[8]) );
  FD2 \pc_plus_4_reg_out_reg[7]  ( .D(pc_plus_4_in[7]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[7]) );
  FD2 \pc_plus_4_reg_out_reg[6]  ( .D(pc_plus_4_in[6]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[6]) );
  FD2 \pc_plus_4_reg_out_reg[5]  ( .D(pc_plus_4_in[5]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[5]) );
  FD2 \pc_plus_4_reg_out_reg[4]  ( .D(pc_plus_4_in[4]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[4]) );
  FD2 \pc_plus_4_reg_out_reg[3]  ( .D(pc_plus_4_in[3]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[3]) );
  FD2 \pc_plus_4_reg_out_reg[2]  ( .D(pc_plus_4_in[2]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[2]) );
  FD2 \pc_plus_4_reg_out_reg[1]  ( .D(pc_plus_4_in[1]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[1]) );
  FD2 \pc_plus_4_reg_out_reg[0]  ( .D(pc_plus_4_in[0]), .CP(clk_in), .CD(n3), 
        .Q(pc_plus_4_reg_out[0]) );
  FD2 \iadder_out_reg_out_reg[31]  ( .D(iadder_in[31]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[31]) );
  FD2 \iadder_out_reg_out_reg[30]  ( .D(iadder_in[30]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[30]) );
  FD2 \iadder_out_reg_out_reg[29]  ( .D(iadder_in[29]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[29]) );
  FD2 \iadder_out_reg_out_reg[28]  ( .D(iadder_in[28]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[28]) );
  FD2 \iadder_out_reg_out_reg[27]  ( .D(iadder_in[27]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[27]) );
  FD2 \iadder_out_reg_out_reg[26]  ( .D(iadder_in[26]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[26]) );
  FD2 \iadder_out_reg_out_reg[25]  ( .D(iadder_in[25]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[25]) );
  FD2 \iadder_out_reg_out_reg[24]  ( .D(iadder_in[24]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[24]) );
  FD2 \iadder_out_reg_out_reg[23]  ( .D(iadder_in[23]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[23]) );
  FD2 \iadder_out_reg_out_reg[22]  ( .D(iadder_in[22]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[22]) );
  FD2 \iadder_out_reg_out_reg[21]  ( .D(iadder_in[21]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[21]) );
  FD2 \iadder_out_reg_out_reg[20]  ( .D(iadder_in[20]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[20]) );
  FD2 \iadder_out_reg_out_reg[19]  ( .D(iadder_in[19]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[19]) );
  FD2 \iadder_out_reg_out_reg[18]  ( .D(iadder_in[18]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[18]) );
  FD2 \iadder_out_reg_out_reg[17]  ( .D(iadder_in[17]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[17]) );
  FD2 \iadder_out_reg_out_reg[16]  ( .D(iadder_in[16]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[16]) );
  FD2 \iadder_out_reg_out_reg[15]  ( .D(iadder_in[15]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[15]) );
  FD2 \iadder_out_reg_out_reg[14]  ( .D(iadder_in[14]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[14]) );
  FD2 \iadder_out_reg_out_reg[13]  ( .D(iadder_in[13]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[13]) );
  FD2 \iadder_out_reg_out_reg[12]  ( .D(iadder_in[12]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[12]) );
  FD2 \iadder_out_reg_out_reg[11]  ( .D(iadder_in[11]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[11]) );
  FD2 \iadder_out_reg_out_reg[10]  ( .D(iadder_in[10]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[10]) );
  FD2 \iadder_out_reg_out_reg[9]  ( .D(iadder_in[9]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[9]) );
  FD2 \iadder_out_reg_out_reg[8]  ( .D(iadder_in[8]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[8]) );
  FD2 \iadder_out_reg_out_reg[7]  ( .D(iadder_in[7]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[7]) );
  FD2 \iadder_out_reg_out_reg[6]  ( .D(iadder_in[6]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[6]) );
  FD2 \iadder_out_reg_out_reg[5]  ( .D(iadder_in[5]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[5]) );
  FD2 \iadder_out_reg_out_reg[4]  ( .D(iadder_in[4]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[4]) );
  FD2 \iadder_out_reg_out_reg[3]  ( .D(iadder_in[3]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[3]) );
  FD2 \iadder_out_reg_out_reg[2]  ( .D(iadder_in[2]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[2]) );
  FD2 \iadder_out_reg_out_reg[1]  ( .D(iadder_in[1]), .CP(clk_in), .CD(n3), 
        .Q(iadder_out_reg_out[1]) );
  FD2 \iadder_out_reg_out_reg[0]  ( .D(N3), .CP(clk_in), .CD(n3), .Q(
        iadder_out_reg_out[0]) );
  FD2 \alu_opcode_reg_out_reg[3]  ( .D(alu_opcode_in[3]), .CP(clk_in), .CD(n3), 
        .Q(alu_opcode_reg_out[3]) );
  FD2 \alu_opcode_reg_out_reg[2]  ( .D(alu_opcode_in[2]), .CP(clk_in), .CD(n3), 
        .Q(alu_opcode_reg_out[2]) );
  FD2 \alu_opcode_reg_out_reg[1]  ( .D(alu_opcode_in[1]), .CP(clk_in), .CD(n3), 
        .Q(alu_opcode_reg_out[1]) );
  FD2 \alu_opcode_reg_out_reg[0]  ( .D(alu_opcode_in[0]), .CP(clk_in), .CD(n3), 
        .Q(alu_opcode_reg_out[0]) );
  FD2 \load_size_reg_out_reg[1]  ( .D(load_size_in[1]), .CP(clk_in), .CD(n3), 
        .Q(load_size_reg_out[1]) );
  FD2 \load_size_reg_out_reg[0]  ( .D(load_size_in[0]), .CP(clk_in), .CD(n3), 
        .Q(load_size_reg_out[0]) );
  FD2 load_unsigned_reg_out_reg ( .D(load_unsigned_in), .CP(clk_in), .CD(n3), 
        .Q(load_unsigned_reg_out) );
  FD2 alu_src_reg_out_reg ( .D(alu_src_in), .CP(clk_in), .CD(n3), .Q(
        alu_src_reg_out) );
  FD2 csr_wr_en_reg_out_reg ( .D(csr_wr_en_in), .CP(clk_in), .CD(n3), .Q(
        csr_wr_en_reg_out) );
  IVP U6 ( .A(reset_in), .Z(n3) );
  IVP U7 ( .A(iadder_in[0]), .Z(n4) );
  NR2 U8 ( .A(branch_taken_in), .B(n4), .Z(N3) );
endmodule

