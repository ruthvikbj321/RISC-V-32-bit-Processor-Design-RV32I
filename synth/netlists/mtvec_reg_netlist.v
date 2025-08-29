/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:47 2025
/////////////////////////////////////////////////////////////


module mtvec_reg ( clk_in, rst_in, wr_en_in, int_or_exc_in, data_wr_in, 
        csr_addr_in, cause_in, mtvec_out, trap_address_out );
  input [31:0] data_wr_in;
  input [11:0] csr_addr_in;
  input [3:0] cause_in;
  output [31:0] mtvec_out;
  output [31:0] trap_address_out;
  input clk_in, rst_in, wr_en_in, int_or_exc_in;
  wire   n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246;
  assign trap_address_out[0] = 1'b0;
  assign trap_address_out[1] = 1'b0;

  FD1 \mtvec_mode_reg[1]  ( .D(n104), .CP(clk_in), .Q(mtvec_out[1]) );
  FD1 \mtvec_mode_reg[0]  ( .D(n103), .CP(clk_in), .Q(mtvec_out[0]) );
  FD1 \mtvec_base_reg[29]  ( .D(n102), .CP(clk_in), .Q(mtvec_out[31]) );
  FD1 \mtvec_base_reg[28]  ( .D(n101), .CP(clk_in), .Q(mtvec_out[30]) );
  FD1 \mtvec_base_reg[27]  ( .D(n100), .CP(clk_in), .Q(mtvec_out[29]), .QN(
        n234) );
  FD1 \mtvec_base_reg[26]  ( .D(n99), .CP(clk_in), .Q(mtvec_out[28]) );
  FD1 \mtvec_base_reg[25]  ( .D(n98), .CP(clk_in), .Q(mtvec_out[27]), .QN(n235) );
  FD1 \mtvec_base_reg[24]  ( .D(n97), .CP(clk_in), .Q(mtvec_out[26]) );
  FD1 \mtvec_base_reg[23]  ( .D(n96), .CP(clk_in), .Q(mtvec_out[25]), .QN(n236) );
  FD1 \mtvec_base_reg[22]  ( .D(n95), .CP(clk_in), .Q(mtvec_out[24]) );
  FD1 \mtvec_base_reg[21]  ( .D(n94), .CP(clk_in), .Q(mtvec_out[23]), .QN(n237) );
  FD1 \mtvec_base_reg[20]  ( .D(n93), .CP(clk_in), .Q(mtvec_out[22]) );
  FD1 \mtvec_base_reg[19]  ( .D(n92), .CP(clk_in), .Q(mtvec_out[21]), .QN(n238) );
  FD1 \mtvec_base_reg[18]  ( .D(n91), .CP(clk_in), .Q(mtvec_out[20]) );
  FD1 \mtvec_base_reg[17]  ( .D(n90), .CP(clk_in), .Q(mtvec_out[19]), .QN(n239) );
  FD1 \mtvec_base_reg[16]  ( .D(n89), .CP(clk_in), .Q(mtvec_out[18]) );
  FD1 \mtvec_base_reg[15]  ( .D(n88), .CP(clk_in), .Q(mtvec_out[17]), .QN(n240) );
  FD1 \mtvec_base_reg[14]  ( .D(n87), .CP(clk_in), .Q(mtvec_out[16]) );
  FD1 \mtvec_base_reg[13]  ( .D(n86), .CP(clk_in), .Q(mtvec_out[15]), .QN(n241) );
  FD1 \mtvec_base_reg[12]  ( .D(n85), .CP(clk_in), .Q(mtvec_out[14]) );
  FD1 \mtvec_base_reg[11]  ( .D(n84), .CP(clk_in), .Q(mtvec_out[13]), .QN(n242) );
  FD1 \mtvec_base_reg[10]  ( .D(n83), .CP(clk_in), .Q(mtvec_out[12]) );
  FD1 \mtvec_base_reg[9]  ( .D(n82), .CP(clk_in), .Q(mtvec_out[11]), .QN(n243)
         );
  FD1 \mtvec_base_reg[8]  ( .D(n81), .CP(clk_in), .Q(mtvec_out[10]) );
  FD1 \mtvec_base_reg[7]  ( .D(n80), .CP(clk_in), .Q(mtvec_out[9]), .QN(n244)
         );
  FD1 \mtvec_base_reg[6]  ( .D(n79), .CP(clk_in), .Q(mtvec_out[8]) );
  FD1 \mtvec_base_reg[5]  ( .D(n78), .CP(clk_in), .Q(mtvec_out[7]), .QN(n245)
         );
  FD1 \mtvec_base_reg[4]  ( .D(n77), .CP(clk_in), .Q(mtvec_out[6]) );
  FD1 \mtvec_base_reg[3]  ( .D(n76), .CP(clk_in), .Q(mtvec_out[5]) );
  FD1 \mtvec_base_reg[2]  ( .D(n75), .CP(clk_in), .Q(mtvec_out[4]) );
  FD1 \mtvec_base_reg[1]  ( .D(n74), .CP(clk_in), .Q(mtvec_out[3]) );
  FD1 \mtvec_base_reg[0]  ( .D(n73), .CP(clk_in), .Q(mtvec_out[2]), .QN(n246)
         );
  AN2P U107 ( .A(mtvec_out[0]), .B(int_or_exc_in), .Z(n105) );
  ND2 U108 ( .A(n105), .B(cause_in[0]), .Z(n162) );
  NR2 U109 ( .A(n246), .B(n162), .Z(n161) );
  AN2P U110 ( .A(n105), .B(cause_in[1]), .Z(n160) );
  AN2P U111 ( .A(n105), .B(cause_in[2]), .Z(n158) );
  AN2P U112 ( .A(n105), .B(cause_in[3]), .Z(n156) );
  ND2 U113 ( .A(mtvec_out[6]), .B(n153), .Z(n152) );
  NR2 U114 ( .A(n245), .B(n152), .Z(n151) );
  ND2 U115 ( .A(mtvec_out[8]), .B(n151), .Z(n148) );
  NR2 U116 ( .A(n244), .B(n148), .Z(n147) );
  ND2 U117 ( .A(mtvec_out[10]), .B(n147), .Z(n144) );
  NR2 U118 ( .A(n243), .B(n144), .Z(n143) );
  ND2 U119 ( .A(mtvec_out[12]), .B(n143), .Z(n140) );
  NR2 U120 ( .A(n242), .B(n140), .Z(n139) );
  ND2 U121 ( .A(mtvec_out[14]), .B(n139), .Z(n136) );
  NR2 U122 ( .A(n241), .B(n136), .Z(n135) );
  ND2 U123 ( .A(mtvec_out[16]), .B(n135), .Z(n132) );
  NR2 U124 ( .A(n240), .B(n132), .Z(n131) );
  ND2 U125 ( .A(mtvec_out[18]), .B(n131), .Z(n128) );
  NR2 U126 ( .A(n239), .B(n128), .Z(n127) );
  ND2 U127 ( .A(mtvec_out[20]), .B(n127), .Z(n124) );
  NR2 U128 ( .A(n238), .B(n124), .Z(n123) );
  ND2 U129 ( .A(mtvec_out[22]), .B(n123), .Z(n120) );
  NR2 U130 ( .A(n237), .B(n120), .Z(n119) );
  ND2 U131 ( .A(mtvec_out[24]), .B(n119), .Z(n116) );
  NR2 U132 ( .A(n236), .B(n116), .Z(n115) );
  ND2 U133 ( .A(mtvec_out[26]), .B(n115), .Z(n112) );
  NR2 U134 ( .A(n235), .B(n112), .Z(n111) );
  ND2 U135 ( .A(mtvec_out[28]), .B(n111), .Z(n108) );
  NR2 U136 ( .A(n234), .B(n108), .Z(n107) );
  AN2P U137 ( .A(mtvec_out[30]), .B(n107), .Z(n163) );
  NR2 U138 ( .A(mtvec_out[30]), .B(n107), .Z(n106) );
  NR2 U139 ( .A(n163), .B(n106), .Z(trap_address_out[30]) );
  AO6 U140 ( .A(n234), .B(n108), .C(n107), .Z(trap_address_out[29]) );
  IVP U141 ( .A(n108), .Z(n110) );
  NR2 U142 ( .A(mtvec_out[28]), .B(n111), .Z(n109) );
  NR2 U143 ( .A(n110), .B(n109), .Z(trap_address_out[28]) );
  AO6 U144 ( .A(n235), .B(n112), .C(n111), .Z(trap_address_out[27]) );
  IVP U145 ( .A(n112), .Z(n114) );
  NR2 U146 ( .A(mtvec_out[26]), .B(n115), .Z(n113) );
  NR2 U147 ( .A(n114), .B(n113), .Z(trap_address_out[26]) );
  AO6 U148 ( .A(n236), .B(n116), .C(n115), .Z(trap_address_out[25]) );
  IVP U149 ( .A(n116), .Z(n118) );
  NR2 U150 ( .A(mtvec_out[24]), .B(n119), .Z(n117) );
  NR2 U151 ( .A(n118), .B(n117), .Z(trap_address_out[24]) );
  AO6 U152 ( .A(n237), .B(n120), .C(n119), .Z(trap_address_out[23]) );
  IVP U153 ( .A(n120), .Z(n122) );
  NR2 U154 ( .A(mtvec_out[22]), .B(n123), .Z(n121) );
  NR2 U155 ( .A(n122), .B(n121), .Z(trap_address_out[22]) );
  AO6 U156 ( .A(n238), .B(n124), .C(n123), .Z(trap_address_out[21]) );
  IVP U157 ( .A(n124), .Z(n126) );
  NR2 U158 ( .A(mtvec_out[20]), .B(n127), .Z(n125) );
  NR2 U159 ( .A(n126), .B(n125), .Z(trap_address_out[20]) );
  AO6 U160 ( .A(n239), .B(n128), .C(n127), .Z(trap_address_out[19]) );
  IVP U161 ( .A(n128), .Z(n130) );
  NR2 U162 ( .A(mtvec_out[18]), .B(n131), .Z(n129) );
  NR2 U163 ( .A(n130), .B(n129), .Z(trap_address_out[18]) );
  AO6 U164 ( .A(n240), .B(n132), .C(n131), .Z(trap_address_out[17]) );
  IVP U165 ( .A(n132), .Z(n134) );
  NR2 U166 ( .A(mtvec_out[16]), .B(n135), .Z(n133) );
  NR2 U167 ( .A(n134), .B(n133), .Z(trap_address_out[16]) );
  AO6 U168 ( .A(n241), .B(n136), .C(n135), .Z(trap_address_out[15]) );
  IVP U169 ( .A(n136), .Z(n138) );
  NR2 U170 ( .A(mtvec_out[14]), .B(n139), .Z(n137) );
  NR2 U171 ( .A(n138), .B(n137), .Z(trap_address_out[14]) );
  AO6 U172 ( .A(n242), .B(n140), .C(n139), .Z(trap_address_out[13]) );
  IVP U173 ( .A(n140), .Z(n142) );
  NR2 U174 ( .A(mtvec_out[12]), .B(n143), .Z(n141) );
  NR2 U175 ( .A(n142), .B(n141), .Z(trap_address_out[12]) );
  AO6 U176 ( .A(n243), .B(n144), .C(n143), .Z(trap_address_out[11]) );
  IVP U177 ( .A(n144), .Z(n146) );
  NR2 U178 ( .A(mtvec_out[10]), .B(n147), .Z(n145) );
  NR2 U179 ( .A(n146), .B(n145), .Z(trap_address_out[10]) );
  AO6 U180 ( .A(n244), .B(n148), .C(n147), .Z(trap_address_out[9]) );
  IVP U181 ( .A(n148), .Z(n150) );
  NR2 U182 ( .A(mtvec_out[8]), .B(n151), .Z(n149) );
  NR2 U183 ( .A(n150), .B(n149), .Z(trap_address_out[8]) );
  AO6 U184 ( .A(n245), .B(n152), .C(n151), .Z(trap_address_out[7]) );
  IVP U185 ( .A(n152), .Z(n155) );
  NR2 U186 ( .A(mtvec_out[6]), .B(n153), .Z(n154) );
  NR2 U187 ( .A(n155), .B(n154), .Z(trap_address_out[6]) );
  FA1A U188 ( .A(mtvec_out[5]), .B(n157), .CI(n156), .CO(n153), .S(
        trap_address_out[5]) );
  FA1A U189 ( .A(mtvec_out[4]), .B(n159), .CI(n158), .CO(n157), .S(
        trap_address_out[4]) );
  FA1A U190 ( .A(mtvec_out[3]), .B(n161), .CI(n160), .CO(n159), .S(
        trap_address_out[3]) );
  AO6 U191 ( .A(n246), .B(n162), .C(n161), .Z(trap_address_out[2]) );
  EO U192 ( .A(mtvec_out[31]), .B(n163), .Z(trap_address_out[31]) );
  ND3 U194 ( .A(csr_addr_in[2]), .B(csr_addr_in[9]), .C(csr_addr_in[0]), .Z(
        n167) );
  NR4 U195 ( .A(rst_in), .B(csr_addr_in[3]), .C(csr_addr_in[6]), .D(
        csr_addr_in[1]), .Z(n165) );
  NR4 U196 ( .A(csr_addr_in[11]), .B(csr_addr_in[5]), .C(csr_addr_in[4]), .D(
        csr_addr_in[10]), .Z(n164) );
  ND4 U197 ( .A(wr_en_in), .B(csr_addr_in[8]), .C(n165), .D(n164), .Z(n166) );
  NR3 U198 ( .A(csr_addr_in[7]), .B(n167), .C(n166), .Z(n231) );
  NR2 U199 ( .A(rst_in), .B(n231), .Z(n230) );
  ND2 U200 ( .A(mtvec_out[1]), .B(n230), .Z(n169) );
  ND2 U201 ( .A(data_wr_in[1]), .B(n231), .Z(n168) );
  ND2 U202 ( .A(n169), .B(n168), .Z(n104) );
  ND2 U203 ( .A(mtvec_out[0]), .B(n230), .Z(n171) );
  ND2 U204 ( .A(data_wr_in[0]), .B(n231), .Z(n170) );
  ND2 U205 ( .A(n171), .B(n170), .Z(n103) );
  ND2 U206 ( .A(data_wr_in[31]), .B(n231), .Z(n173) );
  ND2 U207 ( .A(n230), .B(mtvec_out[31]), .Z(n172) );
  ND2 U208 ( .A(n173), .B(n172), .Z(n102) );
  ND2 U209 ( .A(data_wr_in[30]), .B(n231), .Z(n175) );
  ND2 U210 ( .A(n230), .B(mtvec_out[30]), .Z(n174) );
  ND2 U211 ( .A(n175), .B(n174), .Z(n101) );
  ND2 U212 ( .A(data_wr_in[29]), .B(n231), .Z(n177) );
  ND2 U213 ( .A(n230), .B(mtvec_out[29]), .Z(n176) );
  ND2 U214 ( .A(n177), .B(n176), .Z(n100) );
  ND2 U215 ( .A(data_wr_in[28]), .B(n231), .Z(n179) );
  ND2 U216 ( .A(n230), .B(mtvec_out[28]), .Z(n178) );
  ND2 U217 ( .A(n179), .B(n178), .Z(n99) );
  ND2 U218 ( .A(data_wr_in[27]), .B(n231), .Z(n181) );
  ND2 U219 ( .A(n230), .B(mtvec_out[27]), .Z(n180) );
  ND2 U220 ( .A(n181), .B(n180), .Z(n98) );
  ND2 U221 ( .A(data_wr_in[26]), .B(n231), .Z(n183) );
  ND2 U222 ( .A(n230), .B(mtvec_out[26]), .Z(n182) );
  ND2 U223 ( .A(n183), .B(n182), .Z(n97) );
  ND2 U224 ( .A(data_wr_in[25]), .B(n231), .Z(n185) );
  ND2 U225 ( .A(n230), .B(mtvec_out[25]), .Z(n184) );
  ND2 U226 ( .A(n185), .B(n184), .Z(n96) );
  ND2 U227 ( .A(data_wr_in[24]), .B(n231), .Z(n187) );
  ND2 U228 ( .A(n230), .B(mtvec_out[24]), .Z(n186) );
  ND2 U229 ( .A(n187), .B(n186), .Z(n95) );
  ND2 U230 ( .A(data_wr_in[23]), .B(n231), .Z(n189) );
  ND2 U231 ( .A(n230), .B(mtvec_out[23]), .Z(n188) );
  ND2 U232 ( .A(n189), .B(n188), .Z(n94) );
  ND2 U233 ( .A(data_wr_in[22]), .B(n231), .Z(n191) );
  ND2 U234 ( .A(n230), .B(mtvec_out[22]), .Z(n190) );
  ND2 U235 ( .A(n191), .B(n190), .Z(n93) );
  ND2 U236 ( .A(data_wr_in[21]), .B(n231), .Z(n193) );
  ND2 U237 ( .A(n230), .B(mtvec_out[21]), .Z(n192) );
  ND2 U238 ( .A(n193), .B(n192), .Z(n92) );
  ND2 U239 ( .A(data_wr_in[20]), .B(n231), .Z(n195) );
  ND2 U240 ( .A(n230), .B(mtvec_out[20]), .Z(n194) );
  ND2 U241 ( .A(n195), .B(n194), .Z(n91) );
  ND2 U242 ( .A(data_wr_in[19]), .B(n231), .Z(n197) );
  ND2 U243 ( .A(n230), .B(mtvec_out[19]), .Z(n196) );
  ND2 U244 ( .A(n197), .B(n196), .Z(n90) );
  ND2 U245 ( .A(data_wr_in[18]), .B(n231), .Z(n199) );
  ND2 U246 ( .A(n230), .B(mtvec_out[18]), .Z(n198) );
  ND2 U247 ( .A(n199), .B(n198), .Z(n89) );
  ND2 U248 ( .A(data_wr_in[17]), .B(n231), .Z(n201) );
  ND2 U249 ( .A(n230), .B(mtvec_out[17]), .Z(n200) );
  ND2 U250 ( .A(n201), .B(n200), .Z(n88) );
  ND2 U251 ( .A(data_wr_in[16]), .B(n231), .Z(n203) );
  ND2 U252 ( .A(n230), .B(mtvec_out[16]), .Z(n202) );
  ND2 U253 ( .A(n203), .B(n202), .Z(n87) );
  ND2 U254 ( .A(data_wr_in[15]), .B(n231), .Z(n205) );
  ND2 U255 ( .A(n230), .B(mtvec_out[15]), .Z(n204) );
  ND2 U256 ( .A(n205), .B(n204), .Z(n86) );
  ND2 U257 ( .A(data_wr_in[14]), .B(n231), .Z(n207) );
  ND2 U258 ( .A(n230), .B(mtvec_out[14]), .Z(n206) );
  ND2 U259 ( .A(n207), .B(n206), .Z(n85) );
  ND2 U260 ( .A(data_wr_in[13]), .B(n231), .Z(n209) );
  ND2 U261 ( .A(n230), .B(mtvec_out[13]), .Z(n208) );
  ND2 U262 ( .A(n209), .B(n208), .Z(n84) );
  ND2 U263 ( .A(data_wr_in[12]), .B(n231), .Z(n211) );
  ND2 U264 ( .A(n230), .B(mtvec_out[12]), .Z(n210) );
  ND2 U265 ( .A(n211), .B(n210), .Z(n83) );
  ND2 U266 ( .A(data_wr_in[11]), .B(n231), .Z(n213) );
  ND2 U267 ( .A(n230), .B(mtvec_out[11]), .Z(n212) );
  ND2 U268 ( .A(n213), .B(n212), .Z(n82) );
  ND2 U269 ( .A(data_wr_in[10]), .B(n231), .Z(n215) );
  ND2 U270 ( .A(n230), .B(mtvec_out[10]), .Z(n214) );
  ND2 U271 ( .A(n215), .B(n214), .Z(n81) );
  ND2 U272 ( .A(data_wr_in[9]), .B(n231), .Z(n217) );
  ND2 U273 ( .A(n230), .B(mtvec_out[9]), .Z(n216) );
  ND2 U274 ( .A(n217), .B(n216), .Z(n80) );
  ND2 U275 ( .A(data_wr_in[8]), .B(n231), .Z(n219) );
  ND2 U276 ( .A(n230), .B(mtvec_out[8]), .Z(n218) );
  ND2 U277 ( .A(n219), .B(n218), .Z(n79) );
  ND2 U278 ( .A(data_wr_in[7]), .B(n231), .Z(n221) );
  ND2 U279 ( .A(n230), .B(mtvec_out[7]), .Z(n220) );
  ND2 U280 ( .A(n221), .B(n220), .Z(n78) );
  ND2 U281 ( .A(data_wr_in[6]), .B(n231), .Z(n223) );
  ND2 U282 ( .A(n230), .B(mtvec_out[6]), .Z(n222) );
  ND2 U283 ( .A(n223), .B(n222), .Z(n77) );
  ND2 U284 ( .A(mtvec_out[5]), .B(n230), .Z(n225) );
  ND2 U285 ( .A(data_wr_in[5]), .B(n231), .Z(n224) );
  ND2 U286 ( .A(n225), .B(n224), .Z(n76) );
  ND2 U287 ( .A(mtvec_out[4]), .B(n230), .Z(n227) );
  ND2 U288 ( .A(data_wr_in[4]), .B(n231), .Z(n226) );
  ND2 U289 ( .A(n227), .B(n226), .Z(n75) );
  ND2 U290 ( .A(mtvec_out[3]), .B(n230), .Z(n229) );
  ND2 U291 ( .A(data_wr_in[3]), .B(n231), .Z(n228) );
  ND2 U292 ( .A(n229), .B(n228), .Z(n74) );
  ND2 U293 ( .A(mtvec_out[2]), .B(n230), .Z(n233) );
  ND2 U294 ( .A(data_wr_in[2]), .B(n231), .Z(n232) );
  ND2 U295 ( .A(n233), .B(n232), .Z(n73) );
endmodule

