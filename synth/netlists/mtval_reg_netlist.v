/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:41 2025
/////////////////////////////////////////////////////////////


module mtval_reg ( clk_in, rst_in, wr_en_in, set_cause_in, 
        misaligned_exception_in, iadder_in, data_wr_in, csr_addr_in, mtval_out
 );
  input [31:0] iadder_in;
  input [31:0] data_wr_in;
  input [11:0] csr_addr_in;
  output [31:0] mtval_out;
  input clk_in, rst_in, wr_en_in, set_cause_in, misaligned_exception_in;
  wire   n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  FD1 \mtval_out_reg[31]  ( .D(n106), .CP(clk_in), .Q(mtval_out[31]) );
  FD1 \mtval_out_reg[30]  ( .D(n105), .CP(clk_in), .Q(mtval_out[30]) );
  FD1 \mtval_out_reg[29]  ( .D(n104), .CP(clk_in), .Q(mtval_out[29]) );
  FD1 \mtval_out_reg[28]  ( .D(n103), .CP(clk_in), .Q(mtval_out[28]) );
  FD1 \mtval_out_reg[27]  ( .D(n102), .CP(clk_in), .Q(mtval_out[27]) );
  FD1 \mtval_out_reg[26]  ( .D(n101), .CP(clk_in), .Q(mtval_out[26]) );
  FD1 \mtval_out_reg[25]  ( .D(n100), .CP(clk_in), .Q(mtval_out[25]) );
  FD1 \mtval_out_reg[24]  ( .D(n99), .CP(clk_in), .Q(mtval_out[24]) );
  FD1 \mtval_out_reg[23]  ( .D(n98), .CP(clk_in), .Q(mtval_out[23]) );
  FD1 \mtval_out_reg[22]  ( .D(n97), .CP(clk_in), .Q(mtval_out[22]) );
  FD1 \mtval_out_reg[21]  ( .D(n96), .CP(clk_in), .Q(mtval_out[21]) );
  FD1 \mtval_out_reg[20]  ( .D(n95), .CP(clk_in), .Q(mtval_out[20]) );
  FD1 \mtval_out_reg[19]  ( .D(n94), .CP(clk_in), .Q(mtval_out[19]) );
  FD1 \mtval_out_reg[18]  ( .D(n93), .CP(clk_in), .Q(mtval_out[18]) );
  FD1 \mtval_out_reg[17]  ( .D(n92), .CP(clk_in), .Q(mtval_out[17]) );
  FD1 \mtval_out_reg[16]  ( .D(n91), .CP(clk_in), .Q(mtval_out[16]) );
  FD1 \mtval_out_reg[15]  ( .D(n90), .CP(clk_in), .Q(mtval_out[15]) );
  FD1 \mtval_out_reg[14]  ( .D(n89), .CP(clk_in), .Q(mtval_out[14]) );
  FD1 \mtval_out_reg[13]  ( .D(n88), .CP(clk_in), .Q(mtval_out[13]) );
  FD1 \mtval_out_reg[12]  ( .D(n87), .CP(clk_in), .Q(mtval_out[12]) );
  FD1 \mtval_out_reg[11]  ( .D(n86), .CP(clk_in), .Q(mtval_out[11]) );
  FD1 \mtval_out_reg[10]  ( .D(n85), .CP(clk_in), .Q(mtval_out[10]) );
  FD1 \mtval_out_reg[9]  ( .D(n84), .CP(clk_in), .Q(mtval_out[9]) );
  FD1 \mtval_out_reg[8]  ( .D(n83), .CP(clk_in), .Q(mtval_out[8]) );
  FD1 \mtval_out_reg[7]  ( .D(n82), .CP(clk_in), .Q(mtval_out[7]) );
  FD1 \mtval_out_reg[6]  ( .D(n81), .CP(clk_in), .Q(mtval_out[6]) );
  FD1 \mtval_out_reg[5]  ( .D(n80), .CP(clk_in), .Q(mtval_out[5]) );
  FD1 \mtval_out_reg[4]  ( .D(n79), .CP(clk_in), .Q(mtval_out[4]) );
  FD1 \mtval_out_reg[3]  ( .D(n78), .CP(clk_in), .Q(mtval_out[3]) );
  FD1 \mtval_out_reg[2]  ( .D(n77), .CP(clk_in), .Q(mtval_out[2]) );
  FD1 \mtval_out_reg[1]  ( .D(n76), .CP(clk_in), .Q(mtval_out[1]) );
  FD1 \mtval_out_reg[0]  ( .D(n75), .CP(clk_in), .Q(mtval_out[0]) );
  OR3 U109 ( .A(csr_addr_in[3]), .B(csr_addr_in[5]), .C(csr_addr_in[7]), .Z(
        n110) );
  ND4 U110 ( .A(csr_addr_in[6]), .B(csr_addr_in[0]), .C(csr_addr_in[8]), .D(
        wr_en_in), .Z(n109) );
  NR2 U111 ( .A(rst_in), .B(set_cause_in), .Z(n112) );
  NR3 U112 ( .A(csr_addr_in[10]), .B(csr_addr_in[4]), .C(csr_addr_in[2]), .Z(
        n107) );
  ND4 U113 ( .A(csr_addr_in[1]), .B(n112), .C(csr_addr_in[9]), .D(n107), .Z(
        n108) );
  NR4 U114 ( .A(csr_addr_in[11]), .B(n110), .C(n109), .D(n108), .Z(n177) );
  ND2 U115 ( .A(set_cause_in), .B(misaligned_exception_in), .Z(n111) );
  NR2 U116 ( .A(rst_in), .B(n111), .Z(n176) );
  AO2 U117 ( .A(n177), .B(data_wr_in[31]), .C(n176), .D(iadder_in[31]), .Z(
        n115) );
  IVP U118 ( .A(n112), .Z(n113) );
  NR2 U119 ( .A(n177), .B(n113), .Z(n178) );
  ND2 U120 ( .A(n178), .B(mtval_out[31]), .Z(n114) );
  ND2 U121 ( .A(n115), .B(n114), .Z(n106) );
  AO2 U122 ( .A(n177), .B(data_wr_in[30]), .C(n176), .D(iadder_in[30]), .Z(
        n117) );
  ND2 U123 ( .A(n178), .B(mtval_out[30]), .Z(n116) );
  ND2 U124 ( .A(n117), .B(n116), .Z(n105) );
  AO2 U125 ( .A(n177), .B(data_wr_in[29]), .C(n176), .D(iadder_in[29]), .Z(
        n119) );
  ND2 U126 ( .A(n178), .B(mtval_out[29]), .Z(n118) );
  ND2 U127 ( .A(n119), .B(n118), .Z(n104) );
  AO2 U128 ( .A(n177), .B(data_wr_in[28]), .C(n176), .D(iadder_in[28]), .Z(
        n121) );
  ND2 U129 ( .A(n178), .B(mtval_out[28]), .Z(n120) );
  ND2 U130 ( .A(n121), .B(n120), .Z(n103) );
  AO2 U131 ( .A(n177), .B(data_wr_in[27]), .C(n176), .D(iadder_in[27]), .Z(
        n123) );
  ND2 U132 ( .A(n178), .B(mtval_out[27]), .Z(n122) );
  ND2 U133 ( .A(n123), .B(n122), .Z(n102) );
  AO2 U134 ( .A(n177), .B(data_wr_in[26]), .C(n176), .D(iadder_in[26]), .Z(
        n125) );
  ND2 U135 ( .A(n178), .B(mtval_out[26]), .Z(n124) );
  ND2 U136 ( .A(n125), .B(n124), .Z(n101) );
  AO2 U137 ( .A(n177), .B(data_wr_in[25]), .C(n176), .D(iadder_in[25]), .Z(
        n127) );
  ND2 U138 ( .A(n178), .B(mtval_out[25]), .Z(n126) );
  ND2 U139 ( .A(n127), .B(n126), .Z(n100) );
  AO2 U140 ( .A(n177), .B(data_wr_in[24]), .C(n176), .D(iadder_in[24]), .Z(
        n129) );
  ND2 U141 ( .A(n178), .B(mtval_out[24]), .Z(n128) );
  ND2 U142 ( .A(n129), .B(n128), .Z(n99) );
  AO2 U143 ( .A(n177), .B(data_wr_in[23]), .C(n176), .D(iadder_in[23]), .Z(
        n131) );
  ND2 U144 ( .A(n178), .B(mtval_out[23]), .Z(n130) );
  ND2 U145 ( .A(n131), .B(n130), .Z(n98) );
  AO2 U146 ( .A(n177), .B(data_wr_in[22]), .C(n176), .D(iadder_in[22]), .Z(
        n133) );
  ND2 U147 ( .A(n178), .B(mtval_out[22]), .Z(n132) );
  ND2 U148 ( .A(n133), .B(n132), .Z(n97) );
  AO2 U149 ( .A(n177), .B(data_wr_in[21]), .C(n176), .D(iadder_in[21]), .Z(
        n135) );
  ND2 U150 ( .A(n178), .B(mtval_out[21]), .Z(n134) );
  ND2 U151 ( .A(n135), .B(n134), .Z(n96) );
  AO2 U152 ( .A(n177), .B(data_wr_in[20]), .C(n176), .D(iadder_in[20]), .Z(
        n137) );
  ND2 U153 ( .A(n178), .B(mtval_out[20]), .Z(n136) );
  ND2 U154 ( .A(n137), .B(n136), .Z(n95) );
  AO2 U155 ( .A(n177), .B(data_wr_in[19]), .C(n176), .D(iadder_in[19]), .Z(
        n139) );
  ND2 U156 ( .A(n178), .B(mtval_out[19]), .Z(n138) );
  ND2 U157 ( .A(n139), .B(n138), .Z(n94) );
  AO2 U158 ( .A(n177), .B(data_wr_in[18]), .C(n176), .D(iadder_in[18]), .Z(
        n141) );
  ND2 U159 ( .A(n178), .B(mtval_out[18]), .Z(n140) );
  ND2 U160 ( .A(n141), .B(n140), .Z(n93) );
  AO2 U161 ( .A(n177), .B(data_wr_in[17]), .C(n176), .D(iadder_in[17]), .Z(
        n143) );
  ND2 U162 ( .A(n178), .B(mtval_out[17]), .Z(n142) );
  ND2 U163 ( .A(n143), .B(n142), .Z(n92) );
  AO2 U164 ( .A(n177), .B(data_wr_in[16]), .C(n176), .D(iadder_in[16]), .Z(
        n145) );
  ND2 U165 ( .A(n178), .B(mtval_out[16]), .Z(n144) );
  ND2 U166 ( .A(n145), .B(n144), .Z(n91) );
  AO2 U167 ( .A(n177), .B(data_wr_in[15]), .C(n176), .D(iadder_in[15]), .Z(
        n147) );
  ND2 U168 ( .A(n178), .B(mtval_out[15]), .Z(n146) );
  ND2 U169 ( .A(n147), .B(n146), .Z(n90) );
  AO2 U170 ( .A(n177), .B(data_wr_in[14]), .C(n176), .D(iadder_in[14]), .Z(
        n149) );
  ND2 U171 ( .A(n178), .B(mtval_out[14]), .Z(n148) );
  ND2 U172 ( .A(n149), .B(n148), .Z(n89) );
  AO2 U173 ( .A(n177), .B(data_wr_in[13]), .C(n176), .D(iadder_in[13]), .Z(
        n151) );
  ND2 U174 ( .A(n178), .B(mtval_out[13]), .Z(n150) );
  ND2 U175 ( .A(n151), .B(n150), .Z(n88) );
  AO2 U176 ( .A(n177), .B(data_wr_in[12]), .C(n176), .D(iadder_in[12]), .Z(
        n153) );
  ND2 U177 ( .A(n178), .B(mtval_out[12]), .Z(n152) );
  ND2 U178 ( .A(n153), .B(n152), .Z(n87) );
  AO2 U179 ( .A(n177), .B(data_wr_in[11]), .C(n176), .D(iadder_in[11]), .Z(
        n155) );
  ND2 U180 ( .A(n178), .B(mtval_out[11]), .Z(n154) );
  ND2 U181 ( .A(n155), .B(n154), .Z(n86) );
  AO2 U182 ( .A(n177), .B(data_wr_in[10]), .C(n176), .D(iadder_in[10]), .Z(
        n157) );
  ND2 U183 ( .A(n178), .B(mtval_out[10]), .Z(n156) );
  ND2 U184 ( .A(n157), .B(n156), .Z(n85) );
  AO2 U185 ( .A(n177), .B(data_wr_in[9]), .C(n176), .D(iadder_in[9]), .Z(n159)
         );
  ND2 U186 ( .A(n178), .B(mtval_out[9]), .Z(n158) );
  ND2 U187 ( .A(n159), .B(n158), .Z(n84) );
  AO2 U188 ( .A(n177), .B(data_wr_in[8]), .C(n176), .D(iadder_in[8]), .Z(n161)
         );
  ND2 U189 ( .A(n178), .B(mtval_out[8]), .Z(n160) );
  ND2 U190 ( .A(n161), .B(n160), .Z(n83) );
  AO2 U191 ( .A(n177), .B(data_wr_in[7]), .C(n176), .D(iadder_in[7]), .Z(n163)
         );
  ND2 U192 ( .A(n178), .B(mtval_out[7]), .Z(n162) );
  ND2 U193 ( .A(n163), .B(n162), .Z(n82) );
  AO2 U194 ( .A(n177), .B(data_wr_in[6]), .C(n176), .D(iadder_in[6]), .Z(n165)
         );
  ND2 U195 ( .A(n178), .B(mtval_out[6]), .Z(n164) );
  ND2 U196 ( .A(n165), .B(n164), .Z(n81) );
  AO2 U197 ( .A(n177), .B(data_wr_in[5]), .C(n176), .D(iadder_in[5]), .Z(n167)
         );
  ND2 U198 ( .A(n178), .B(mtval_out[5]), .Z(n166) );
  ND2 U199 ( .A(n167), .B(n166), .Z(n80) );
  AO2 U200 ( .A(n177), .B(data_wr_in[4]), .C(n176), .D(iadder_in[4]), .Z(n169)
         );
  ND2 U201 ( .A(n178), .B(mtval_out[4]), .Z(n168) );
  ND2 U202 ( .A(n169), .B(n168), .Z(n79) );
  AO2 U203 ( .A(n177), .B(data_wr_in[3]), .C(n176), .D(iadder_in[3]), .Z(n171)
         );
  ND2 U204 ( .A(n178), .B(mtval_out[3]), .Z(n170) );
  ND2 U205 ( .A(n171), .B(n170), .Z(n78) );
  AO2 U206 ( .A(n177), .B(data_wr_in[2]), .C(n176), .D(iadder_in[2]), .Z(n173)
         );
  ND2 U207 ( .A(n178), .B(mtval_out[2]), .Z(n172) );
  ND2 U208 ( .A(n173), .B(n172), .Z(n77) );
  AO2 U209 ( .A(n177), .B(data_wr_in[1]), .C(n176), .D(iadder_in[1]), .Z(n175)
         );
  ND2 U210 ( .A(n178), .B(mtval_out[1]), .Z(n174) );
  ND2 U211 ( .A(n175), .B(n174), .Z(n76) );
  AO2 U212 ( .A(n177), .B(data_wr_in[0]), .C(n176), .D(iadder_in[0]), .Z(n180)
         );
  ND2 U213 ( .A(n178), .B(mtval_out[0]), .Z(n179) );
  ND2 U214 ( .A(n180), .B(n179), .Z(n75) );
endmodule

