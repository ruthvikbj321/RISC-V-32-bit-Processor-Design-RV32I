/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:28:06 2025
/////////////////////////////////////////////////////////////


module msrv32_machine_control ( clk_in, reset_in, illegal_instr_in, 
        misaligned_load_in, misaligned_store_in, misaligned_instr_in, 
        opcode_6_to_2_in, funct3_in, funct7_in, rs1_addr_in, rs2_addr_in, 
        rd_addr_in, e_irq_in, t_irq_in, s_irq_in, mie_in, meie_in, mtie_in, 
        msie_in, meip_in, mtip_in, msip_in, i_or_e_out, set_epc_out, 
        set_cause_out, cause_out, instret_inc_out, mie_clear_out, mie_set_out, 
        misaligned_exception_out, pc_src_out, flush_out, trap_taken_out );
  input [6:2] opcode_6_to_2_in;
  input [2:0] funct3_in;
  input [6:0] funct7_in;
  input [4:0] rs1_addr_in;
  input [4:0] rs2_addr_in;
  input [4:0] rd_addr_in;
  output [3:0] cause_out;
  output [1:0] pc_src_out;
  input clk_in, reset_in, illegal_instr_in, misaligned_load_in,
         misaligned_store_in, misaligned_instr_in, e_irq_in, t_irq_in,
         s_irq_in, mie_in, meie_in, mtie_in, msie_in, meip_in, mtip_in,
         msip_in;
  output i_or_e_out, set_epc_out, set_cause_out, instret_inc_out,
         mie_clear_out, mie_set_out, misaligned_exception_out, flush_out,
         trap_taken_out;
  wire   mie_clear_out, N62, N63, N64, N66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;
  wire   [3:0] curr_state;
  assign set_cause_out = mie_clear_out;
  assign set_epc_out = mie_clear_out;

  FD1 \curr_state_reg[0]  ( .D(reset_in), .CP(clk_in), .Q(curr_state[0]), .QN(
        n133) );
  FD1 \curr_state_reg[1]  ( .D(N62), .CP(clk_in), .Q(curr_state[1]), .QN(n134)
         );
  FD1 \curr_state_reg[2]  ( .D(N63), .CP(clk_in), .Q(curr_state[2]) );
  FD1 \curr_state_reg[3]  ( .D(N64), .CP(clk_in), .Q(curr_state[3]), .QN(n132)
         );
  FD1 misaligned_exception_out_reg ( .D(N66), .CP(clk_in), .Q(
        misaligned_exception_out) );
  FD1 \cause_out_reg[3]  ( .D(n71), .CP(clk_in), .Q(cause_out[3]) );
  FD1 \cause_out_reg[2]  ( .D(n70), .CP(clk_in), .Q(cause_out[2]) );
  FD1 \cause_out_reg[1]  ( .D(n69), .CP(clk_in), .Q(cause_out[1]) );
  FD1 \cause_out_reg[0]  ( .D(n68), .CP(clk_in), .Q(cause_out[0]) );
  FD1 i_or_e_out_reg ( .D(n67), .CP(clk_in), .Q(i_or_e_out) );
  NR4 U85 ( .A(curr_state[0]), .B(curr_state[2]), .C(curr_state[1]), .D(n132), 
        .Z(mie_set_out) );
  NR2 U86 ( .A(curr_state[3]), .B(curr_state[2]), .Z(n73) );
  ND2 U87 ( .A(n73), .B(curr_state[0]), .Z(n72) );
  ND4 U88 ( .A(n132), .B(n133), .C(n134), .D(curr_state[2]), .Z(n99) );
  IVP U89 ( .A(mie_set_out), .Z(n98) );
  AO3 U90 ( .A(curr_state[1]), .B(n72), .C(n99), .D(n98), .Z(flush_out) );
  AO3 U91 ( .A(s_irq_in), .B(msip_in), .C(msie_in), .D(mie_in), .Z(n76) );
  ND3 U92 ( .A(n73), .B(curr_state[1]), .C(n133), .Z(n75) );
  IVP U93 ( .A(n75), .Z(n74) );
  NR2 U94 ( .A(reset_in), .B(n74), .Z(n77) );
  IVP U95 ( .A(n77), .Z(n112) );
  NR2 U96 ( .A(n76), .B(n112), .Z(n95) );
  NR2 U97 ( .A(misaligned_instr_in), .B(illegal_instr_in), .Z(n80) );
  AO3 U98 ( .A(t_irq_in), .B(mtip_in), .C(mie_in), .D(mtie_in), .Z(n79) );
  AN2P U99 ( .A(n76), .B(n79), .Z(n107) );
  ND2 U100 ( .A(n77), .B(n107), .Z(n123) );
  AO3 U101 ( .A(e_irq_in), .B(meip_in), .C(mie_in), .D(meie_in), .Z(n104) );
  NR2 U102 ( .A(reset_in), .B(n75), .Z(n117) );
  IVP U103 ( .A(n117), .Z(n114) );
  AO4 U104 ( .A(n80), .B(n123), .C(n104), .D(n114), .Z(n94) );
  ND2 U105 ( .A(n77), .B(n76), .Z(n78) );
  NR2 U106 ( .A(n79), .B(n78), .Z(n96) );
  NR2 U107 ( .A(misaligned_load_in), .B(misaligned_store_in), .Z(n100) );
  IVP U108 ( .A(n80), .Z(n102) );
  NR2 U109 ( .A(n102), .B(n123), .Z(n91) );
  NR4 U110 ( .A(rd_addr_in[3]), .B(funct7_in[6]), .C(opcode_6_to_2_in[2]), .D(
        opcode_6_to_2_in[3]), .Z(n89) );
  NR3 U111 ( .A(rs1_addr_in[3]), .B(rs1_addr_in[2]), .C(rd_addr_in[1]), .Z(n81) );
  ND2 U112 ( .A(opcode_6_to_2_in[6]), .B(n81), .Z(n87) );
  NR4 U113 ( .A(funct7_in[2]), .B(rs1_addr_in[1]), .C(rs2_addr_in[3]), .D(
        funct7_in[0]), .Z(n85) );
  NR4 U114 ( .A(rs1_addr_in[0]), .B(funct3_in[1]), .C(funct3_in[2]), .D(
        funct7_in[5]), .Z(n84) );
  NR4 U115 ( .A(rd_addr_in[4]), .B(rs1_addr_in[4]), .C(funct3_in[0]), .D(
        rd_addr_in[0]), .Z(n83) );
  NR4 U116 ( .A(funct7_in[1]), .B(rs2_addr_in[2]), .C(rs2_addr_in[4]), .D(
        rd_addr_in[2]), .Z(n82) );
  ND4 U117 ( .A(n85), .B(n84), .C(n83), .D(n82), .Z(n86) );
  NR2 U118 ( .A(n87), .B(n86), .Z(n88) );
  ND4 U119 ( .A(opcode_6_to_2_in[5]), .B(opcode_6_to_2_in[4]), .C(n89), .D(n88), .Z(n108) );
  NR4 U120 ( .A(rs2_addr_in[1]), .B(funct7_in[4]), .C(funct7_in[3]), .D(n108), 
        .Z(n92) );
  IVP U121 ( .A(n92), .Z(n105) );
  ND2 U122 ( .A(n91), .B(n105), .Z(n122) );
  NR2 U123 ( .A(n100), .B(n122), .Z(n90) );
  NR2 U124 ( .A(n96), .B(n90), .Z(n121) );
  ND2 U125 ( .A(n92), .B(n91), .Z(n115) );
  ND2 U126 ( .A(n121), .B(n115), .Z(n93) );
  NR4 U127 ( .A(reset_in), .B(n95), .C(n94), .D(n93), .Z(n127) );
  NR3 U128 ( .A(n96), .B(n95), .C(n117), .Z(n131) );
  ND2 U129 ( .A(n131), .B(n115), .Z(n126) );
  IVP U130 ( .A(n127), .Z(n130) );
  AO2 U131 ( .A(n127), .B(cause_out[0]), .C(n126), .D(n130), .Z(n97) );
  IVP U132 ( .A(n97), .Z(n68) );
  IVP U133 ( .A(flush_out), .Z(instret_inc_out) );
  IVP U134 ( .A(n99), .Z(mie_clear_out) );
  ND2 U135 ( .A(n98), .B(flush_out), .Z(pc_src_out[0]) );
  ND2 U136 ( .A(n99), .B(flush_out), .Z(pc_src_out[1]) );
  IVP U137 ( .A(n100), .Z(n103) );
  NR2 U138 ( .A(misaligned_instr_in), .B(n103), .Z(n101) );
  NR2 U139 ( .A(reset_in), .B(n101), .Z(N66) );
  NR2 U140 ( .A(n103), .B(n102), .Z(n106) );
  ND4 U141 ( .A(n107), .B(n106), .C(n105), .D(n104), .Z(trap_taken_out) );
  NR2 U142 ( .A(reset_in), .B(trap_taken_out), .Z(n110) );
  NR2 U143 ( .A(rs2_addr_in[0]), .B(n108), .Z(n109) );
  ND4 U144 ( .A(funct7_in[4]), .B(rs2_addr_in[1]), .C(funct7_in[3]), .D(n109), 
        .Z(n113) );
  ND2 U145 ( .A(n110), .B(n113), .Z(n111) );
  ND2 U146 ( .A(n112), .B(n111), .Z(N62) );
  AN2P U147 ( .A(trap_taken_out), .B(n117), .Z(N63) );
  NR3 U148 ( .A(n114), .B(trap_taken_out), .C(n113), .Z(N64) );
  NR2 U149 ( .A(rs2_addr_in[0]), .B(n115), .Z(n116) );
  NR2 U150 ( .A(n117), .B(n116), .Z(n119) );
  ND2 U151 ( .A(cause_out[3]), .B(n127), .Z(n118) );
  AO7 U152 ( .A(n127), .B(n119), .C(n118), .Z(n71) );
  ND2 U153 ( .A(n127), .B(cause_out[2]), .Z(n120) );
  ND2 U154 ( .A(n121), .B(n120), .Z(n70) );
  IVP U155 ( .A(n122), .Z(n125) );
  IVP U156 ( .A(n123), .Z(n124) );
  AO2 U157 ( .A(misaligned_store_in), .B(n125), .C(illegal_instr_in), .D(n124), 
        .Z(n129) );
  NR2 U158 ( .A(n127), .B(n126), .Z(n128) );
  EO1 U159 ( .A(n129), .B(n128), .C(cause_out[1]), .D(n130), .Z(n69) );
  EO1 U160 ( .A(n131), .B(n130), .C(n130), .D(i_or_e_out), .Z(n67) );
endmodule

