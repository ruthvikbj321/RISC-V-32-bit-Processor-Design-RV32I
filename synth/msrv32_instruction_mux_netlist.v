/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:24:21 2025
/////////////////////////////////////////////////////////////


module msrv32_instruction_mux ( flush_in, ms_riscv32_mp_instr_in, opcode_out, 
        funct3_out, funct7_out, rs1addr_out, rs2addr_out, rdaddr_out, 
        csr_addr_out, instr_out );
  input [31:0] ms_riscv32_mp_instr_in;
  output [6:0] opcode_out;
  output [2:0] funct3_out;
  output [6:0] funct7_out;
  output [4:0] rs1addr_out;
  output [4:0] rs2addr_out;
  output [4:0] rdaddr_out;
  output [11:0] csr_addr_out;
  output [24:0] instr_out;
  input flush_in;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58;
  assign instr_out[7] = funct3_out[2];
  assign instr_out[6] = funct3_out[1];
  assign instr_out[5] = funct3_out[0];
  assign instr_out[24] = funct7_out[6];
  assign csr_addr_out[11] = funct7_out[6];
  assign instr_out[23] = funct7_out[5];
  assign csr_addr_out[10] = funct7_out[5];
  assign instr_out[22] = funct7_out[4];
  assign csr_addr_out[9] = funct7_out[4];
  assign instr_out[21] = funct7_out[3];
  assign csr_addr_out[8] = funct7_out[3];
  assign instr_out[20] = funct7_out[2];
  assign csr_addr_out[7] = funct7_out[2];
  assign instr_out[19] = funct7_out[1];
  assign csr_addr_out[6] = funct7_out[1];
  assign instr_out[18] = funct7_out[0];
  assign csr_addr_out[5] = funct7_out[0];
  assign instr_out[12] = rs1addr_out[4];
  assign instr_out[11] = rs1addr_out[3];
  assign instr_out[10] = rs1addr_out[2];
  assign instr_out[9] = rs1addr_out[1];
  assign instr_out[8] = rs1addr_out[0];
  assign instr_out[4] = rdaddr_out[4];
  assign instr_out[3] = rdaddr_out[3];
  assign instr_out[2] = rdaddr_out[2];
  assign instr_out[1] = rdaddr_out[1];
  assign instr_out[0] = rdaddr_out[0];
  assign instr_out[17] = csr_addr_out[4];
  assign rs2addr_out[4] = csr_addr_out[4];
  assign instr_out[16] = csr_addr_out[3];
  assign rs2addr_out[3] = csr_addr_out[3];
  assign instr_out[15] = csr_addr_out[2];
  assign rs2addr_out[2] = csr_addr_out[2];
  assign instr_out[14] = csr_addr_out[1];
  assign rs2addr_out[1] = csr_addr_out[1];
  assign instr_out[13] = csr_addr_out[0];
  assign rs2addr_out[0] = csr_addr_out[0];

  OR2P U64 ( .A(flush_in), .B(ms_riscv32_mp_instr_in[0]), .Z(opcode_out[0]) );
  OR2P U65 ( .A(flush_in), .B(ms_riscv32_mp_instr_in[1]), .Z(opcode_out[1]) );
  IVP U66 ( .A(ms_riscv32_mp_instr_in[2]), .Z(n30) );
  NR2 U67 ( .A(flush_in), .B(n30), .Z(opcode_out[2]) );
  IVP U68 ( .A(ms_riscv32_mp_instr_in[3]), .Z(n31) );
  NR2 U69 ( .A(flush_in), .B(n31), .Z(opcode_out[3]) );
  OR2P U70 ( .A(flush_in), .B(ms_riscv32_mp_instr_in[4]), .Z(opcode_out[4]) );
  IVP U71 ( .A(ms_riscv32_mp_instr_in[5]), .Z(n32) );
  NR2 U72 ( .A(flush_in), .B(n32), .Z(opcode_out[5]) );
  IVP U73 ( .A(ms_riscv32_mp_instr_in[6]), .Z(n33) );
  NR2 U74 ( .A(flush_in), .B(n33), .Z(opcode_out[6]) );
  IVP U75 ( .A(ms_riscv32_mp_instr_in[7]), .Z(n34) );
  NR2 U76 ( .A(flush_in), .B(n34), .Z(rdaddr_out[0]) );
  IVP U77 ( .A(ms_riscv32_mp_instr_in[8]), .Z(n35) );
  NR2 U78 ( .A(flush_in), .B(n35), .Z(rdaddr_out[1]) );
  IVP U79 ( .A(ms_riscv32_mp_instr_in[9]), .Z(n36) );
  NR2 U80 ( .A(flush_in), .B(n36), .Z(rdaddr_out[2]) );
  IVP U81 ( .A(ms_riscv32_mp_instr_in[10]), .Z(n37) );
  NR2 U82 ( .A(flush_in), .B(n37), .Z(rdaddr_out[3]) );
  IVP U83 ( .A(ms_riscv32_mp_instr_in[11]), .Z(n38) );
  NR2 U84 ( .A(flush_in), .B(n38), .Z(rdaddr_out[4]) );
  IVP U85 ( .A(ms_riscv32_mp_instr_in[12]), .Z(n39) );
  NR2 U86 ( .A(flush_in), .B(n39), .Z(funct3_out[0]) );
  IVP U87 ( .A(ms_riscv32_mp_instr_in[13]), .Z(n40) );
  NR2 U88 ( .A(flush_in), .B(n40), .Z(funct3_out[1]) );
  IVP U89 ( .A(ms_riscv32_mp_instr_in[14]), .Z(n41) );
  NR2 U90 ( .A(flush_in), .B(n41), .Z(funct3_out[2]) );
  IVP U91 ( .A(ms_riscv32_mp_instr_in[15]), .Z(n42) );
  NR2 U92 ( .A(flush_in), .B(n42), .Z(rs1addr_out[0]) );
  IVP U93 ( .A(ms_riscv32_mp_instr_in[16]), .Z(n43) );
  NR2 U94 ( .A(flush_in), .B(n43), .Z(rs1addr_out[1]) );
  IVP U95 ( .A(ms_riscv32_mp_instr_in[17]), .Z(n44) );
  NR2 U96 ( .A(flush_in), .B(n44), .Z(rs1addr_out[2]) );
  IVP U97 ( .A(ms_riscv32_mp_instr_in[18]), .Z(n45) );
  NR2 U98 ( .A(flush_in), .B(n45), .Z(rs1addr_out[3]) );
  IVP U99 ( .A(ms_riscv32_mp_instr_in[19]), .Z(n46) );
  NR2 U100 ( .A(flush_in), .B(n46), .Z(rs1addr_out[4]) );
  IVP U101 ( .A(ms_riscv32_mp_instr_in[20]), .Z(n47) );
  NR2 U102 ( .A(flush_in), .B(n47), .Z(csr_addr_out[0]) );
  IVP U103 ( .A(ms_riscv32_mp_instr_in[21]), .Z(n48) );
  NR2 U104 ( .A(flush_in), .B(n48), .Z(csr_addr_out[1]) );
  IVP U105 ( .A(ms_riscv32_mp_instr_in[22]), .Z(n49) );
  NR2 U106 ( .A(flush_in), .B(n49), .Z(csr_addr_out[2]) );
  IVP U107 ( .A(ms_riscv32_mp_instr_in[23]), .Z(n50) );
  NR2 U108 ( .A(flush_in), .B(n50), .Z(csr_addr_out[3]) );
  IVP U109 ( .A(ms_riscv32_mp_instr_in[24]), .Z(n51) );
  NR2 U110 ( .A(flush_in), .B(n51), .Z(csr_addr_out[4]) );
  IVP U111 ( .A(ms_riscv32_mp_instr_in[25]), .Z(n52) );
  NR2 U112 ( .A(flush_in), .B(n52), .Z(funct7_out[0]) );
  IVP U113 ( .A(ms_riscv32_mp_instr_in[26]), .Z(n53) );
  NR2 U114 ( .A(flush_in), .B(n53), .Z(funct7_out[1]) );
  IVP U115 ( .A(ms_riscv32_mp_instr_in[27]), .Z(n54) );
  NR2 U116 ( .A(flush_in), .B(n54), .Z(funct7_out[2]) );
  IVP U117 ( .A(ms_riscv32_mp_instr_in[28]), .Z(n55) );
  NR2 U118 ( .A(flush_in), .B(n55), .Z(funct7_out[3]) );
  IVP U119 ( .A(ms_riscv32_mp_instr_in[29]), .Z(n56) );
  NR2 U120 ( .A(flush_in), .B(n56), .Z(funct7_out[4]) );
  IVP U121 ( .A(ms_riscv32_mp_instr_in[30]), .Z(n57) );
  NR2 U122 ( .A(flush_in), .B(n57), .Z(funct7_out[5]) );
  IVP U123 ( .A(ms_riscv32_mp_instr_in[31]), .Z(n58) );
  NR2 U124 ( .A(flush_in), .B(n58), .Z(funct7_out[6]) );
endmodule

