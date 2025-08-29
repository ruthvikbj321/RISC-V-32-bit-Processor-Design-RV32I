/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:37 2025
/////////////////////////////////////////////////////////////


module mcause_reg ( clk_in, rst_in, set_cause_in, i_or_e_in, wr_en_in, 
        cause_in, data_wr_in, csr_addr_in, mcause_out, cause_out, 
        int_or_exc_out );
  input [3:0] cause_in;
  input [31:0] data_wr_in;
  input [11:0] csr_addr_in;
  output [31:0] mcause_out;
  output [3:0] cause_out;
  input clk_in, rst_in, set_cause_in, i_or_e_in, wr_en_in;
  output int_or_exc_out;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178;
  assign int_or_exc_out = mcause_out[31];
  assign cause_out[3] = mcause_out[3];
  assign cause_out[2] = mcause_out[2];
  assign cause_out[1] = mcause_out[1];
  assign cause_out[0] = mcause_out[0];

  FD1 \cause_rem_reg[26]  ( .D(n105), .CP(clk_in), .Q(mcause_out[30]) );
  FD1 \cause_rem_reg[25]  ( .D(n104), .CP(clk_in), .Q(mcause_out[29]) );
  FD1 \cause_rem_reg[24]  ( .D(n103), .CP(clk_in), .Q(mcause_out[28]) );
  FD1 \cause_rem_reg[23]  ( .D(n102), .CP(clk_in), .Q(mcause_out[27]) );
  FD1 \cause_rem_reg[22]  ( .D(n101), .CP(clk_in), .Q(mcause_out[26]) );
  FD1 \cause_rem_reg[21]  ( .D(n100), .CP(clk_in), .Q(mcause_out[25]) );
  FD1 \cause_rem_reg[20]  ( .D(n99), .CP(clk_in), .Q(mcause_out[24]) );
  FD1 \cause_rem_reg[19]  ( .D(n98), .CP(clk_in), .Q(mcause_out[23]) );
  FD1 \cause_rem_reg[18]  ( .D(n97), .CP(clk_in), .Q(mcause_out[22]) );
  FD1 \cause_rem_reg[17]  ( .D(n96), .CP(clk_in), .Q(mcause_out[21]) );
  FD1 \cause_rem_reg[16]  ( .D(n95), .CP(clk_in), .Q(mcause_out[20]) );
  FD1 \cause_rem_reg[15]  ( .D(n94), .CP(clk_in), .Q(mcause_out[19]) );
  FD1 \cause_rem_reg[14]  ( .D(n93), .CP(clk_in), .Q(mcause_out[18]) );
  FD1 \cause_rem_reg[13]  ( .D(n92), .CP(clk_in), .Q(mcause_out[17]) );
  FD1 \cause_rem_reg[12]  ( .D(n91), .CP(clk_in), .Q(mcause_out[16]) );
  FD1 \cause_rem_reg[11]  ( .D(n90), .CP(clk_in), .Q(mcause_out[15]) );
  FD1 \cause_rem_reg[10]  ( .D(n89), .CP(clk_in), .Q(mcause_out[14]) );
  FD1 \cause_rem_reg[9]  ( .D(n88), .CP(clk_in), .Q(mcause_out[13]) );
  FD1 \cause_rem_reg[8]  ( .D(n87), .CP(clk_in), .Q(mcause_out[12]) );
  FD1 \cause_rem_reg[7]  ( .D(n86), .CP(clk_in), .Q(mcause_out[11]) );
  FD1 \cause_rem_reg[6]  ( .D(n85), .CP(clk_in), .Q(mcause_out[10]) );
  FD1 \cause_rem_reg[5]  ( .D(n84), .CP(clk_in), .Q(mcause_out[9]) );
  FD1 \cause_rem_reg[4]  ( .D(n83), .CP(clk_in), .Q(mcause_out[8]) );
  FD1 \cause_rem_reg[3]  ( .D(n82), .CP(clk_in), .Q(mcause_out[7]) );
  FD1 \cause_rem_reg[2]  ( .D(n81), .CP(clk_in), .Q(mcause_out[6]) );
  FD1 \cause_rem_reg[1]  ( .D(n80), .CP(clk_in), .Q(mcause_out[5]) );
  FD1 \cause_rem_reg[0]  ( .D(n79), .CP(clk_in), .Q(mcause_out[4]) );
  FD1 int_or_exc_out_reg ( .D(n78), .CP(clk_in), .Q(mcause_out[31]) );
  FD1 \cause_out_reg[3]  ( .D(n77), .CP(clk_in), .Q(mcause_out[3]) );
  FD1 \cause_out_reg[2]  ( .D(n76), .CP(clk_in), .Q(mcause_out[2]) );
  FD1 \cause_out_reg[1]  ( .D(n75), .CP(clk_in), .Q(mcause_out[1]) );
  FD1 \cause_out_reg[0]  ( .D(n74), .CP(clk_in), .Q(mcause_out[0]) );
  ND4 U108 ( .A(csr_addr_in[8]), .B(wr_en_in), .C(csr_addr_in[6]), .D(
        csr_addr_in[1]), .Z(n110) );
  NR2 U109 ( .A(rst_in), .B(set_cause_in), .Z(n108) );
  NR4 U110 ( .A(csr_addr_in[10]), .B(csr_addr_in[0]), .C(csr_addr_in[2]), .D(
        csr_addr_in[3]), .Z(n107) );
  NR4 U111 ( .A(csr_addr_in[5]), .B(csr_addr_in[11]), .C(csr_addr_in[4]), .D(
        csr_addr_in[7]), .Z(n106) );
  ND4 U112 ( .A(n108), .B(csr_addr_in[9]), .C(n107), .D(n106), .Z(n109) );
  NR2 U113 ( .A(n110), .B(n109), .Z(n175) );
  NR3 U114 ( .A(rst_in), .B(set_cause_in), .C(n175), .Z(n176) );
  ND2 U115 ( .A(mcause_out[30]), .B(n176), .Z(n112) );
  ND2 U116 ( .A(data_wr_in[30]), .B(n175), .Z(n111) );
  ND2 U117 ( .A(n112), .B(n111), .Z(n105) );
  ND2 U118 ( .A(mcause_out[29]), .B(n176), .Z(n114) );
  ND2 U119 ( .A(data_wr_in[29]), .B(n175), .Z(n113) );
  ND2 U120 ( .A(n114), .B(n113), .Z(n104) );
  ND2 U121 ( .A(mcause_out[28]), .B(n176), .Z(n116) );
  ND2 U122 ( .A(data_wr_in[28]), .B(n175), .Z(n115) );
  ND2 U123 ( .A(n116), .B(n115), .Z(n103) );
  ND2 U124 ( .A(mcause_out[27]), .B(n176), .Z(n118) );
  ND2 U125 ( .A(data_wr_in[27]), .B(n175), .Z(n117) );
  ND2 U126 ( .A(n118), .B(n117), .Z(n102) );
  ND2 U127 ( .A(mcause_out[26]), .B(n176), .Z(n120) );
  ND2 U128 ( .A(data_wr_in[26]), .B(n175), .Z(n119) );
  ND2 U129 ( .A(n120), .B(n119), .Z(n101) );
  ND2 U130 ( .A(mcause_out[25]), .B(n176), .Z(n122) );
  ND2 U131 ( .A(data_wr_in[25]), .B(n175), .Z(n121) );
  ND2 U132 ( .A(n122), .B(n121), .Z(n100) );
  ND2 U133 ( .A(mcause_out[24]), .B(n176), .Z(n124) );
  ND2 U134 ( .A(data_wr_in[24]), .B(n175), .Z(n123) );
  ND2 U135 ( .A(n124), .B(n123), .Z(n99) );
  ND2 U136 ( .A(mcause_out[23]), .B(n176), .Z(n126) );
  ND2 U137 ( .A(data_wr_in[23]), .B(n175), .Z(n125) );
  ND2 U138 ( .A(n126), .B(n125), .Z(n98) );
  ND2 U139 ( .A(mcause_out[22]), .B(n176), .Z(n128) );
  ND2 U140 ( .A(data_wr_in[22]), .B(n175), .Z(n127) );
  ND2 U141 ( .A(n128), .B(n127), .Z(n97) );
  ND2 U142 ( .A(mcause_out[21]), .B(n176), .Z(n130) );
  ND2 U143 ( .A(data_wr_in[21]), .B(n175), .Z(n129) );
  ND2 U144 ( .A(n130), .B(n129), .Z(n96) );
  ND2 U145 ( .A(mcause_out[20]), .B(n176), .Z(n132) );
  ND2 U146 ( .A(data_wr_in[20]), .B(n175), .Z(n131) );
  ND2 U147 ( .A(n132), .B(n131), .Z(n95) );
  ND2 U148 ( .A(mcause_out[19]), .B(n176), .Z(n134) );
  ND2 U149 ( .A(data_wr_in[19]), .B(n175), .Z(n133) );
  ND2 U150 ( .A(n134), .B(n133), .Z(n94) );
  ND2 U151 ( .A(mcause_out[18]), .B(n176), .Z(n136) );
  ND2 U152 ( .A(data_wr_in[18]), .B(n175), .Z(n135) );
  ND2 U153 ( .A(n136), .B(n135), .Z(n93) );
  ND2 U154 ( .A(mcause_out[17]), .B(n176), .Z(n138) );
  ND2 U155 ( .A(data_wr_in[17]), .B(n175), .Z(n137) );
  ND2 U156 ( .A(n138), .B(n137), .Z(n92) );
  ND2 U157 ( .A(mcause_out[16]), .B(n176), .Z(n140) );
  ND2 U158 ( .A(data_wr_in[16]), .B(n175), .Z(n139) );
  ND2 U159 ( .A(n140), .B(n139), .Z(n91) );
  ND2 U160 ( .A(mcause_out[15]), .B(n176), .Z(n142) );
  ND2 U161 ( .A(data_wr_in[15]), .B(n175), .Z(n141) );
  ND2 U162 ( .A(n142), .B(n141), .Z(n90) );
  ND2 U163 ( .A(mcause_out[14]), .B(n176), .Z(n144) );
  ND2 U164 ( .A(data_wr_in[14]), .B(n175), .Z(n143) );
  ND2 U165 ( .A(n144), .B(n143), .Z(n89) );
  ND2 U166 ( .A(mcause_out[13]), .B(n176), .Z(n146) );
  ND2 U167 ( .A(data_wr_in[13]), .B(n175), .Z(n145) );
  ND2 U168 ( .A(n146), .B(n145), .Z(n88) );
  ND2 U169 ( .A(mcause_out[12]), .B(n176), .Z(n148) );
  ND2 U170 ( .A(data_wr_in[12]), .B(n175), .Z(n147) );
  ND2 U171 ( .A(n148), .B(n147), .Z(n87) );
  ND2 U172 ( .A(mcause_out[11]), .B(n176), .Z(n150) );
  ND2 U173 ( .A(data_wr_in[11]), .B(n175), .Z(n149) );
  ND2 U174 ( .A(n150), .B(n149), .Z(n86) );
  ND2 U175 ( .A(mcause_out[10]), .B(n176), .Z(n152) );
  ND2 U176 ( .A(data_wr_in[10]), .B(n175), .Z(n151) );
  ND2 U177 ( .A(n152), .B(n151), .Z(n85) );
  ND2 U178 ( .A(mcause_out[9]), .B(n176), .Z(n154) );
  ND2 U179 ( .A(data_wr_in[9]), .B(n175), .Z(n153) );
  ND2 U180 ( .A(n154), .B(n153), .Z(n84) );
  ND2 U181 ( .A(mcause_out[8]), .B(n176), .Z(n156) );
  ND2 U182 ( .A(data_wr_in[8]), .B(n175), .Z(n155) );
  ND2 U183 ( .A(n156), .B(n155), .Z(n83) );
  ND2 U184 ( .A(mcause_out[7]), .B(n176), .Z(n158) );
  ND2 U185 ( .A(data_wr_in[7]), .B(n175), .Z(n157) );
  ND2 U186 ( .A(n158), .B(n157), .Z(n82) );
  ND2 U187 ( .A(mcause_out[6]), .B(n176), .Z(n160) );
  ND2 U188 ( .A(data_wr_in[6]), .B(n175), .Z(n159) );
  ND2 U189 ( .A(n160), .B(n159), .Z(n81) );
  ND2 U190 ( .A(mcause_out[5]), .B(n176), .Z(n162) );
  ND2 U191 ( .A(data_wr_in[5]), .B(n175), .Z(n161) );
  ND2 U192 ( .A(n162), .B(n161), .Z(n80) );
  ND2 U193 ( .A(mcause_out[4]), .B(n176), .Z(n164) );
  ND2 U194 ( .A(data_wr_in[4]), .B(n175), .Z(n163) );
  ND2 U195 ( .A(n164), .B(n163), .Z(n79) );
  IVP U196 ( .A(set_cause_in), .Z(n165) );
  NR2 U197 ( .A(rst_in), .B(n165), .Z(n174) );
  AO2 U198 ( .A(n175), .B(data_wr_in[31]), .C(n174), .D(i_or_e_in), .Z(n167)
         );
  ND2 U199 ( .A(n176), .B(mcause_out[31]), .Z(n166) );
  ND2 U200 ( .A(n167), .B(n166), .Z(n78) );
  AO2 U201 ( .A(n175), .B(data_wr_in[3]), .C(n174), .D(cause_in[3]), .Z(n169)
         );
  ND2 U202 ( .A(n176), .B(mcause_out[3]), .Z(n168) );
  ND2 U203 ( .A(n169), .B(n168), .Z(n77) );
  AO2 U204 ( .A(n175), .B(data_wr_in[2]), .C(n174), .D(cause_in[2]), .Z(n171)
         );
  ND2 U205 ( .A(n176), .B(mcause_out[2]), .Z(n170) );
  ND2 U206 ( .A(n171), .B(n170), .Z(n76) );
  AO2 U207 ( .A(n175), .B(data_wr_in[1]), .C(n174), .D(cause_in[1]), .Z(n173)
         );
  ND2 U208 ( .A(n176), .B(mcause_out[1]), .Z(n172) );
  ND2 U209 ( .A(n173), .B(n172), .Z(n75) );
  AO2 U210 ( .A(n175), .B(data_wr_in[0]), .C(n174), .D(cause_in[0]), .Z(n178)
         );
  ND2 U211 ( .A(n176), .B(mcause_out[0]), .Z(n177) );
  ND2 U212 ( .A(n178), .B(n177), .Z(n74) );
endmodule

