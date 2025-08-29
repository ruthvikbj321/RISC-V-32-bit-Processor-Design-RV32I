/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:15 2025
/////////////////////////////////////////////////////////////


module msrv32_decoder ( trap_taken_in, funct7_5_in, opcode_in, funct3_in, 
        iadder_out_1_to_0_in, wb_mux_sel_out, imm_type_out, csr_op_out, 
        mem_wr_req_out, alu_opcode_out, load_size_out, load_unsigned_out, 
        alu_src_out, iadder_src_out, csr_wr_en_out, rf_wr_en_out, 
        illegal_instr_out, misaligned_load_out, misaligned_store_out );
  input [6:0] opcode_in;
  input [2:0] funct3_in;
  input [1:0] iadder_out_1_to_0_in;
  output [2:0] wb_mux_sel_out;
  output [2:0] imm_type_out;
  output [2:0] csr_op_out;
  output [3:0] alu_opcode_out;
  output [1:0] load_size_out;
  input trap_taken_in, funct7_5_in;
  output mem_wr_req_out, load_unsigned_out, alu_src_out, iadder_src_out,
         csr_wr_en_out, rf_wr_en_out, illegal_instr_out, misaligned_load_out,
         misaligned_store_out;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70;
  assign alu_src_out = opcode_in[5];
  assign load_unsigned_out = csr_op_out[2];
  assign alu_opcode_out[2] = csr_op_out[2];
  assign csr_op_out[2] = funct3_in[2];
  assign load_size_out[1] = csr_op_out[1];
  assign alu_opcode_out[1] = csr_op_out[1];
  assign csr_op_out[1] = funct3_in[1];
  assign load_size_out[0] = csr_op_out[0];
  assign alu_opcode_out[0] = csr_op_out[0];
  assign csr_op_out[0] = funct3_in[0];

  IVP U52 ( .A(opcode_in[4]), .Z(n48) );
  IVP U53 ( .A(opcode_in[2]), .Z(n38) );
  NR4 U54 ( .A(opcode_in[6]), .B(opcode_in[3]), .C(n48), .D(n38), .Z(
        wb_mux_sel_out[1]) );
  NR2 U55 ( .A(csr_op_out[1]), .B(csr_op_out[2]), .Z(n37) );
  IVP U56 ( .A(csr_op_out[0]), .Z(n62) );
  NR2 U57 ( .A(opcode_in[2]), .B(opcode_in[3]), .Z(n41) );
  ND2 U58 ( .A(n41), .B(opcode_in[5]), .Z(n69) );
  ND2 U59 ( .A(opcode_in[4]), .B(opcode_in[6]), .Z(n36) );
  AO1P U60 ( .A(n37), .B(n62), .C(n69), .D(n36), .Z(csr_wr_en_out) );
  IVP U61 ( .A(opcode_in[6]), .Z(n40) );
  ND2 U62 ( .A(n48), .B(n40), .Z(n70) );
  IVP U63 ( .A(n70), .Z(n55) );
  ND4 U64 ( .A(n48), .B(opcode_in[6]), .C(opcode_in[2]), .D(opcode_in[5]), .Z(
        n57) );
  IVP U65 ( .A(n57), .Z(n51) );
  AO6 U66 ( .A(n55), .B(n38), .C(n51), .Z(n39) );
  NR2 U67 ( .A(opcode_in[3]), .B(n39), .Z(iadder_src_out) );
  ND2 U68 ( .A(n41), .B(n40), .Z(n42) );
  NR2 U69 ( .A(wb_mux_sel_out[1]), .B(csr_wr_en_out), .Z(n53) );
  NR2 U70 ( .A(n42), .B(opcode_in[5]), .Z(n43) );
  ND2 U71 ( .A(n48), .B(n43), .Z(n66) );
  AN2P U72 ( .A(n66), .B(n57), .Z(n47) );
  AO3 U73 ( .A(n48), .B(n42), .C(n53), .D(n47), .Z(rf_wr_en_out) );
  IVP U74 ( .A(csr_op_out[1]), .Z(n61) );
  IVP U75 ( .A(n43), .Z(n58) );
  AO1P U76 ( .A(csr_op_out[0]), .B(n61), .C(n48), .D(n58), .Z(n45) );
  IVP U77 ( .A(funct7_5_in), .Z(n44) );
  NR2 U78 ( .A(n45), .B(n44), .Z(alu_opcode_out[3]) );
  IVP U79 ( .A(opcode_in[5]), .Z(n54) );
  ND2 U80 ( .A(wb_mux_sel_out[1]), .B(n54), .Z(n46) );
  ND2 U81 ( .A(n47), .B(n46), .Z(wb_mux_sel_out[0]) );
  IVP U82 ( .A(csr_wr_en_out), .Z(n50) );
  ND2 U83 ( .A(n50), .B(n57), .Z(wb_mux_sel_out[2]) );
  ND2 U84 ( .A(opcode_in[6]), .B(n48), .Z(n49) );
  AO3 U85 ( .A(n69), .B(n49), .C(n58), .D(n57), .Z(imm_type_out[0]) );
  AO7 U86 ( .A(opcode_in[4]), .B(n69), .C(n50), .Z(imm_type_out[1]) );
  ND2 U87 ( .A(opcode_in[3]), .B(n51), .Z(n52) );
  ND2 U88 ( .A(n53), .B(n52), .Z(imm_type_out[2]) );
  ND4 U89 ( .A(opcode_in[3]), .B(opcode_in[2]), .C(n55), .D(n54), .Z(n56) );
  ND4 U90 ( .A(n69), .B(n58), .C(n57), .D(n56), .Z(n59) );
  AO3 U91 ( .A(wb_mux_sel_out[1]), .B(n59), .C(opcode_in[0]), .D(opcode_in[1]), 
        .Z(illegal_instr_out) );
  NR2 U92 ( .A(csr_op_out[1]), .B(n62), .Z(n64) );
  NR2 U93 ( .A(iadder_out_1_to_0_in[0]), .B(iadder_out_1_to_0_in[1]), .Z(n60)
         );
  NR2 U94 ( .A(n61), .B(n60), .Z(n63) );
  AO2 U95 ( .A(iadder_out_1_to_0_in[0]), .B(n64), .C(n63), .D(n62), .Z(n67) );
  IVP U96 ( .A(n67), .Z(n68) );
  NR2 U97 ( .A(n69), .B(n70), .Z(n65) );
  AN2P U98 ( .A(n68), .B(n65), .Z(misaligned_store_out) );
  NR2 U99 ( .A(n67), .B(n66), .Z(misaligned_load_out) );
  NR4 U100 ( .A(trap_taken_in), .B(n70), .C(n69), .D(n68), .Z(mem_wr_req_out)
         );
endmodule

