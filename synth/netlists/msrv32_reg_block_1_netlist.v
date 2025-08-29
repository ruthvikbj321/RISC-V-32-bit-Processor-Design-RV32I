/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:28:00 2025
/////////////////////////////////////////////////////////////


module msrv32_reg_block_1 ( pc_mux_in, ms_riscv32_mp_clk_in, 
        ms_riscv32_mp_rst_in, pc_out );
  input [31:0] pc_mux_in;
  output [31:0] pc_out;
  input ms_riscv32_mp_clk_in, ms_riscv32_mp_rst_in;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64;

  FD1 \pc_out_reg[31]  ( .D(N34), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[31]) );
  FD1 \pc_out_reg[30]  ( .D(N33), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[30]) );
  FD1 \pc_out_reg[29]  ( .D(N32), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[29]) );
  FD1 \pc_out_reg[28]  ( .D(N31), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[28]) );
  FD1 \pc_out_reg[27]  ( .D(N30), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[27]) );
  FD1 \pc_out_reg[26]  ( .D(N29), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[26]) );
  FD1 \pc_out_reg[25]  ( .D(N28), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[25]) );
  FD1 \pc_out_reg[24]  ( .D(N27), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[24]) );
  FD1 \pc_out_reg[23]  ( .D(N26), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[23]) );
  FD1 \pc_out_reg[22]  ( .D(N25), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[22]) );
  FD1 \pc_out_reg[21]  ( .D(N24), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[21]) );
  FD1 \pc_out_reg[20]  ( .D(N23), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[20]) );
  FD1 \pc_out_reg[19]  ( .D(N22), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[19]) );
  FD1 \pc_out_reg[18]  ( .D(N21), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[18]) );
  FD1 \pc_out_reg[17]  ( .D(N20), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[17]) );
  FD1 \pc_out_reg[16]  ( .D(N19), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[16]) );
  FD1 \pc_out_reg[15]  ( .D(N18), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[15]) );
  FD1 \pc_out_reg[14]  ( .D(N17), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[14]) );
  FD1 \pc_out_reg[13]  ( .D(N16), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[13]) );
  FD1 \pc_out_reg[12]  ( .D(N15), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[12]) );
  FD1 \pc_out_reg[11]  ( .D(N14), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[11]) );
  FD1 \pc_out_reg[10]  ( .D(N13), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[10]) );
  FD1 \pc_out_reg[9]  ( .D(N12), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[9]) );
  FD1 \pc_out_reg[8]  ( .D(N11), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[8]) );
  FD1 \pc_out_reg[7]  ( .D(N10), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[7]) );
  FD1 \pc_out_reg[6]  ( .D(N9), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[6]) );
  FD1 \pc_out_reg[5]  ( .D(N8), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[5]) );
  FD1 \pc_out_reg[4]  ( .D(N7), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[4]) );
  FD1 \pc_out_reg[3]  ( .D(N6), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[3]) );
  FD1 \pc_out_reg[2]  ( .D(N5), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[2]) );
  FD1 \pc_out_reg[1]  ( .D(N4), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[1]) );
  FD1 \pc_out_reg[0]  ( .D(N3), .CP(ms_riscv32_mp_clk_in), .Q(pc_out[0]) );
  IVP U67 ( .A(pc_mux_in[0]), .Z(n33) );
  NR2 U68 ( .A(ms_riscv32_mp_rst_in), .B(n33), .Z(N3) );
  IVP U69 ( .A(pc_mux_in[1]), .Z(n34) );
  NR2 U70 ( .A(ms_riscv32_mp_rst_in), .B(n34), .Z(N4) );
  IVP U71 ( .A(pc_mux_in[2]), .Z(n35) );
  NR2 U72 ( .A(ms_riscv32_mp_rst_in), .B(n35), .Z(N5) );
  IVP U73 ( .A(pc_mux_in[3]), .Z(n36) );
  NR2 U74 ( .A(ms_riscv32_mp_rst_in), .B(n36), .Z(N6) );
  IVP U75 ( .A(pc_mux_in[4]), .Z(n37) );
  NR2 U76 ( .A(ms_riscv32_mp_rst_in), .B(n37), .Z(N7) );
  IVP U77 ( .A(pc_mux_in[5]), .Z(n38) );
  NR2 U78 ( .A(ms_riscv32_mp_rst_in), .B(n38), .Z(N8) );
  IVP U79 ( .A(pc_mux_in[6]), .Z(n39) );
  NR2 U80 ( .A(ms_riscv32_mp_rst_in), .B(n39), .Z(N9) );
  IVP U81 ( .A(pc_mux_in[7]), .Z(n40) );
  NR2 U82 ( .A(ms_riscv32_mp_rst_in), .B(n40), .Z(N10) );
  IVP U83 ( .A(pc_mux_in[8]), .Z(n41) );
  NR2 U84 ( .A(ms_riscv32_mp_rst_in), .B(n41), .Z(N11) );
  IVP U85 ( .A(pc_mux_in[9]), .Z(n42) );
  NR2 U86 ( .A(ms_riscv32_mp_rst_in), .B(n42), .Z(N12) );
  IVP U87 ( .A(pc_mux_in[10]), .Z(n43) );
  NR2 U88 ( .A(ms_riscv32_mp_rst_in), .B(n43), .Z(N13) );
  IVP U89 ( .A(pc_mux_in[11]), .Z(n44) );
  NR2 U90 ( .A(ms_riscv32_mp_rst_in), .B(n44), .Z(N14) );
  IVP U91 ( .A(pc_mux_in[12]), .Z(n45) );
  NR2 U92 ( .A(ms_riscv32_mp_rst_in), .B(n45), .Z(N15) );
  IVP U93 ( .A(pc_mux_in[13]), .Z(n46) );
  NR2 U94 ( .A(ms_riscv32_mp_rst_in), .B(n46), .Z(N16) );
  IVP U95 ( .A(pc_mux_in[14]), .Z(n47) );
  NR2 U96 ( .A(ms_riscv32_mp_rst_in), .B(n47), .Z(N17) );
  IVP U97 ( .A(pc_mux_in[15]), .Z(n48) );
  NR2 U98 ( .A(ms_riscv32_mp_rst_in), .B(n48), .Z(N18) );
  IVP U99 ( .A(pc_mux_in[16]), .Z(n49) );
  NR2 U100 ( .A(ms_riscv32_mp_rst_in), .B(n49), .Z(N19) );
  IVP U101 ( .A(pc_mux_in[17]), .Z(n50) );
  NR2 U102 ( .A(ms_riscv32_mp_rst_in), .B(n50), .Z(N20) );
  IVP U103 ( .A(pc_mux_in[18]), .Z(n51) );
  NR2 U104 ( .A(ms_riscv32_mp_rst_in), .B(n51), .Z(N21) );
  IVP U105 ( .A(pc_mux_in[19]), .Z(n52) );
  NR2 U106 ( .A(ms_riscv32_mp_rst_in), .B(n52), .Z(N22) );
  IVP U107 ( .A(pc_mux_in[20]), .Z(n53) );
  NR2 U108 ( .A(ms_riscv32_mp_rst_in), .B(n53), .Z(N23) );
  IVP U109 ( .A(pc_mux_in[21]), .Z(n54) );
  NR2 U110 ( .A(ms_riscv32_mp_rst_in), .B(n54), .Z(N24) );
  IVP U111 ( .A(pc_mux_in[22]), .Z(n55) );
  NR2 U112 ( .A(ms_riscv32_mp_rst_in), .B(n55), .Z(N25) );
  IVP U113 ( .A(pc_mux_in[23]), .Z(n56) );
  NR2 U114 ( .A(ms_riscv32_mp_rst_in), .B(n56), .Z(N26) );
  IVP U115 ( .A(pc_mux_in[24]), .Z(n57) );
  NR2 U116 ( .A(ms_riscv32_mp_rst_in), .B(n57), .Z(N27) );
  IVP U117 ( .A(pc_mux_in[25]), .Z(n58) );
  NR2 U118 ( .A(ms_riscv32_mp_rst_in), .B(n58), .Z(N28) );
  IVP U119 ( .A(pc_mux_in[26]), .Z(n59) );
  NR2 U120 ( .A(ms_riscv32_mp_rst_in), .B(n59), .Z(N29) );
  IVP U121 ( .A(pc_mux_in[27]), .Z(n60) );
  NR2 U122 ( .A(ms_riscv32_mp_rst_in), .B(n60), .Z(N30) );
  IVP U123 ( .A(pc_mux_in[28]), .Z(n61) );
  NR2 U124 ( .A(ms_riscv32_mp_rst_in), .B(n61), .Z(N31) );
  IVP U125 ( .A(pc_mux_in[29]), .Z(n62) );
  NR2 U126 ( .A(ms_riscv32_mp_rst_in), .B(n62), .Z(N32) );
  IVP U127 ( .A(pc_mux_in[30]), .Z(n63) );
  NR2 U128 ( .A(ms_riscv32_mp_rst_in), .B(n63), .Z(N33) );
  IVP U129 ( .A(pc_mux_in[31]), .Z(n64) );
  NR2 U130 ( .A(ms_riscv32_mp_rst_in), .B(n64), .Z(N34) );
endmodule

