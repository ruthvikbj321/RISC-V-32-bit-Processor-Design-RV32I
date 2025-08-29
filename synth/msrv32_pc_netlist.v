/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:23:57 2025
/////////////////////////////////////////////////////////////


module msrv32_pc ( rst_in, pc_src_in, epc_in, trap_address_in, iaddr_in, pc_in, 
        ahb_ready_in, branch_taken_in, i_addr_out, pc_mux_out, pc_plus_4_out, 
        misaligned_instr_logic_out );
  input [1:0] pc_src_in;
  input [31:0] epc_in;
  input [31:0] trap_address_in;
  input [31:1] iaddr_in;
  input [31:0] pc_in;
  output [31:0] i_addr_out;
  output [31:0] pc_mux_out;
  output [31:0] pc_plus_4_out;
  input rst_in, ahb_ready_in, branch_taken_in;
  output misaligned_instr_logic_out;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, n137, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312;
  assign pc_plus_4_out[1] = pc_in[1];
  assign pc_plus_4_out[0] = pc_in[0];

  LD1 \i_addr_out_reg[31]  ( .G(n137), .D(N49), .Q(i_addr_out[31]) );
  LD1 \i_addr_out_reg[30]  ( .G(n137), .D(N48), .Q(i_addr_out[30]) );
  LD1 \i_addr_out_reg[29]  ( .G(n137), .D(N47), .Q(i_addr_out[29]) );
  LD1 \i_addr_out_reg[28]  ( .G(n137), .D(N46), .Q(i_addr_out[28]) );
  LD1 \i_addr_out_reg[27]  ( .G(n137), .D(N45), .Q(i_addr_out[27]) );
  LD1 \i_addr_out_reg[26]  ( .G(n137), .D(N44), .Q(i_addr_out[26]) );
  LD1 \i_addr_out_reg[25]  ( .G(n137), .D(N43), .Q(i_addr_out[25]) );
  LD1 \i_addr_out_reg[24]  ( .G(n137), .D(N42), .Q(i_addr_out[24]) );
  LD1 \i_addr_out_reg[23]  ( .G(n137), .D(N41), .Q(i_addr_out[23]) );
  LD1 \i_addr_out_reg[22]  ( .G(n137), .D(N40), .Q(i_addr_out[22]) );
  LD1 \i_addr_out_reg[21]  ( .G(n137), .D(N39), .Q(i_addr_out[21]) );
  LD1 \i_addr_out_reg[20]  ( .G(n137), .D(N38), .Q(i_addr_out[20]) );
  LD1 \i_addr_out_reg[19]  ( .G(n137), .D(N37), .Q(i_addr_out[19]) );
  LD1 \i_addr_out_reg[18]  ( .G(n137), .D(N36), .Q(i_addr_out[18]) );
  LD1 \i_addr_out_reg[17]  ( .G(n137), .D(N35), .Q(i_addr_out[17]) );
  LD1 \i_addr_out_reg[16]  ( .G(n137), .D(N34), .Q(i_addr_out[16]) );
  LD1 \i_addr_out_reg[15]  ( .G(n137), .D(N33), .Q(i_addr_out[15]) );
  LD1 \i_addr_out_reg[14]  ( .G(n137), .D(N32), .Q(i_addr_out[14]) );
  LD1 \i_addr_out_reg[13]  ( .G(n137), .D(N31), .Q(i_addr_out[13]) );
  LD1 \i_addr_out_reg[12]  ( .G(n137), .D(N30), .Q(i_addr_out[12]) );
  LD1 \i_addr_out_reg[11]  ( .G(n137), .D(N29), .Q(i_addr_out[11]) );
  LD1 \i_addr_out_reg[10]  ( .G(n137), .D(N28), .Q(i_addr_out[10]) );
  LD1 \i_addr_out_reg[9]  ( .G(n137), .D(N27), .Q(i_addr_out[9]) );
  LD1 \i_addr_out_reg[8]  ( .G(n137), .D(N26), .Q(i_addr_out[8]) );
  LD1 \i_addr_out_reg[7]  ( .G(n137), .D(N25), .Q(i_addr_out[7]) );
  LD1 \i_addr_out_reg[6]  ( .G(n137), .D(N24), .Q(i_addr_out[6]) );
  LD1 \i_addr_out_reg[5]  ( .G(n137), .D(N23), .Q(i_addr_out[5]) );
  LD1 \i_addr_out_reg[4]  ( .G(n137), .D(N22), .Q(i_addr_out[4]) );
  LD1 \i_addr_out_reg[3]  ( .G(n137), .D(N21), .Q(i_addr_out[3]) );
  LD1 \i_addr_out_reg[2]  ( .G(n137), .D(N20), .Q(i_addr_out[2]) );
  LD1 \i_addr_out_reg[1]  ( .G(n137), .D(N19), .Q(i_addr_out[1]) );
  LD1 \i_addr_out_reg[0]  ( .G(n137), .D(N18), .Q(i_addr_out[0]) );
  IVP U175 ( .A(pc_in[2]), .Z(pc_plus_4_out[2]) );
  IVP U176 ( .A(pc_in[3]), .Z(n267) );
  NR2 U177 ( .A(pc_plus_4_out[2]), .B(n267), .Z(n266) );
  ND2 U178 ( .A(n266), .B(pc_in[4]), .Z(n261) );
  IVP U179 ( .A(pc_in[5]), .Z(n258) );
  NR2 U180 ( .A(n261), .B(n258), .Z(n257) );
  ND2 U181 ( .A(n257), .B(pc_in[6]), .Z(n252) );
  IVP U182 ( .A(pc_in[7]), .Z(n249) );
  NR2 U183 ( .A(n252), .B(n249), .Z(n248) );
  ND2 U184 ( .A(n248), .B(pc_in[8]), .Z(n243) );
  IVP U185 ( .A(pc_in[9]), .Z(n240) );
  NR2 U186 ( .A(n243), .B(n240), .Z(n239) );
  ND2 U187 ( .A(n239), .B(pc_in[10]), .Z(n234) );
  IVP U188 ( .A(pc_in[11]), .Z(n231) );
  NR2 U189 ( .A(n234), .B(n231), .Z(n230) );
  ND2 U190 ( .A(n230), .B(pc_in[12]), .Z(n225) );
  IVP U191 ( .A(pc_in[13]), .Z(n222) );
  NR2 U192 ( .A(n225), .B(n222), .Z(n221) );
  ND2 U193 ( .A(n221), .B(pc_in[14]), .Z(n216) );
  IVP U194 ( .A(pc_in[15]), .Z(n213) );
  NR2 U195 ( .A(n216), .B(n213), .Z(n212) );
  ND2 U196 ( .A(n212), .B(pc_in[16]), .Z(n207) );
  IVP U197 ( .A(pc_in[17]), .Z(n204) );
  NR2 U198 ( .A(n207), .B(n204), .Z(n203) );
  ND2 U199 ( .A(n203), .B(pc_in[18]), .Z(n198) );
  IVP U200 ( .A(pc_in[19]), .Z(n195) );
  NR2 U201 ( .A(n198), .B(n195), .Z(n194) );
  ND2 U202 ( .A(n194), .B(pc_in[20]), .Z(n189) );
  IVP U203 ( .A(pc_in[21]), .Z(n184) );
  NR2 U204 ( .A(n189), .B(n184), .Z(n183) );
  ND2 U205 ( .A(n183), .B(pc_in[22]), .Z(n178) );
  IVP U206 ( .A(pc_in[23]), .Z(n160) );
  NR2 U207 ( .A(n178), .B(n160), .Z(n159) );
  ND2 U208 ( .A(n159), .B(pc_in[24]), .Z(n154) );
  IVP U209 ( .A(pc_in[25]), .Z(n151) );
  NR2 U210 ( .A(n154), .B(n151), .Z(n173) );
  ND2 U211 ( .A(n173), .B(pc_in[26]), .Z(n172) );
  IVP U212 ( .A(pc_in[27]), .Z(n169) );
  NR2 U213 ( .A(n172), .B(n169), .Z(n168) );
  ND2 U214 ( .A(n168), .B(pc_in[28]), .Z(n163) );
  IVP U215 ( .A(pc_in[29]), .Z(n148) );
  NR2 U216 ( .A(n163), .B(n148), .Z(n147) );
  AN2P U217 ( .A(n147), .B(pc_in[30]), .Z(n144) );
  EO U218 ( .A(pc_in[31]), .B(n144), .Z(pc_plus_4_out[31]) );
  IVP U219 ( .A(pc_src_in[0]), .Z(n140) );
  NR2 U220 ( .A(pc_src_in[1]), .B(n140), .Z(n275) );
  ND2 U221 ( .A(pc_src_in[1]), .B(pc_src_in[0]), .Z(n139) );
  NR2 U222 ( .A(branch_taken_in), .B(n139), .Z(n273) );
  AO2 U223 ( .A(n275), .B(epc_in[31]), .C(pc_plus_4_out[31]), .D(n273), .Z(
        n142) );
  IVP U224 ( .A(n139), .Z(n274) );
  AN2P U225 ( .A(branch_taken_in), .B(n274), .Z(n270) );
  AN2P U226 ( .A(n140), .B(pc_src_in[1]), .Z(n276) );
  AO2 U227 ( .A(n270), .B(iaddr_in[31]), .C(n276), .D(trap_address_in[31]), 
        .Z(n141) );
  ND2 U228 ( .A(n142), .B(n141), .Z(pc_mux_out[31]) );
  NR2 U229 ( .A(n147), .B(pc_in[30]), .Z(n143) );
  NR2 U230 ( .A(n144), .B(n143), .Z(pc_plus_4_out[30]) );
  AO2 U231 ( .A(n275), .B(epc_in[30]), .C(n273), .D(pc_plus_4_out[30]), .Z(
        n146) );
  AO2 U232 ( .A(n270), .B(iaddr_in[30]), .C(n276), .D(trap_address_in[30]), 
        .Z(n145) );
  ND2 U233 ( .A(n146), .B(n145), .Z(pc_mux_out[30]) );
  AO6 U234 ( .A(n163), .B(n148), .C(n147), .Z(pc_plus_4_out[29]) );
  AO2 U235 ( .A(n275), .B(epc_in[29]), .C(n273), .D(pc_plus_4_out[29]), .Z(
        n150) );
  AO2 U236 ( .A(n270), .B(iaddr_in[29]), .C(n276), .D(trap_address_in[29]), 
        .Z(n149) );
  ND2 U237 ( .A(n150), .B(n149), .Z(pc_mux_out[29]) );
  AO6 U238 ( .A(n154), .B(n151), .C(n173), .Z(pc_plus_4_out[25]) );
  AO2 U239 ( .A(n275), .B(epc_in[25]), .C(n273), .D(pc_plus_4_out[25]), .Z(
        n153) );
  AO2 U240 ( .A(n270), .B(iaddr_in[25]), .C(n276), .D(trap_address_in[25]), 
        .Z(n152) );
  ND2 U241 ( .A(n153), .B(n152), .Z(pc_mux_out[25]) );
  IVP U242 ( .A(n154), .Z(n156) );
  NR2 U243 ( .A(n159), .B(pc_in[24]), .Z(n155) );
  NR2 U244 ( .A(n156), .B(n155), .Z(pc_plus_4_out[24]) );
  AO2 U245 ( .A(n275), .B(epc_in[24]), .C(n273), .D(pc_plus_4_out[24]), .Z(
        n158) );
  AO2 U246 ( .A(n270), .B(iaddr_in[24]), .C(n276), .D(trap_address_in[24]), 
        .Z(n157) );
  ND2 U247 ( .A(n158), .B(n157), .Z(pc_mux_out[24]) );
  AO6 U248 ( .A(n178), .B(n160), .C(n159), .Z(pc_plus_4_out[23]) );
  AO2 U249 ( .A(n275), .B(epc_in[23]), .C(n273), .D(pc_plus_4_out[23]), .Z(
        n162) );
  AO2 U250 ( .A(n270), .B(iaddr_in[23]), .C(n276), .D(trap_address_in[23]), 
        .Z(n161) );
  ND2 U251 ( .A(n162), .B(n161), .Z(pc_mux_out[23]) );
  IVP U252 ( .A(n163), .Z(n165) );
  NR2 U253 ( .A(n168), .B(pc_in[28]), .Z(n164) );
  NR2 U254 ( .A(n165), .B(n164), .Z(pc_plus_4_out[28]) );
  AO2 U255 ( .A(n275), .B(epc_in[28]), .C(n273), .D(pc_plus_4_out[28]), .Z(
        n167) );
  AO2 U256 ( .A(n270), .B(iaddr_in[28]), .C(n276), .D(trap_address_in[28]), 
        .Z(n166) );
  ND2 U257 ( .A(n167), .B(n166), .Z(pc_mux_out[28]) );
  AO6 U258 ( .A(n172), .B(n169), .C(n168), .Z(pc_plus_4_out[27]) );
  AO2 U259 ( .A(n275), .B(epc_in[27]), .C(n273), .D(pc_plus_4_out[27]), .Z(
        n171) );
  AO2 U260 ( .A(n270), .B(iaddr_in[27]), .C(n276), .D(trap_address_in[27]), 
        .Z(n170) );
  ND2 U261 ( .A(n171), .B(n170), .Z(pc_mux_out[27]) );
  IVP U262 ( .A(n172), .Z(n175) );
  NR2 U263 ( .A(n173), .B(pc_in[26]), .Z(n174) );
  NR2 U264 ( .A(n175), .B(n174), .Z(pc_plus_4_out[26]) );
  AO2 U265 ( .A(n275), .B(epc_in[26]), .C(n273), .D(pc_plus_4_out[26]), .Z(
        n177) );
  AO2 U266 ( .A(n270), .B(iaddr_in[26]), .C(n276), .D(trap_address_in[26]), 
        .Z(n176) );
  ND2 U267 ( .A(n177), .B(n176), .Z(pc_mux_out[26]) );
  IVP U268 ( .A(n178), .Z(n180) );
  NR2 U269 ( .A(n183), .B(pc_in[22]), .Z(n179) );
  NR2 U270 ( .A(n180), .B(n179), .Z(pc_plus_4_out[22]) );
  AO2 U271 ( .A(n275), .B(epc_in[22]), .C(n273), .D(pc_plus_4_out[22]), .Z(
        n182) );
  AO2 U272 ( .A(n270), .B(iaddr_in[22]), .C(n276), .D(trap_address_in[22]), 
        .Z(n181) );
  ND2 U273 ( .A(n182), .B(n181), .Z(pc_mux_out[22]) );
  AO6 U274 ( .A(n189), .B(n184), .C(n183), .Z(pc_plus_4_out[21]) );
  AO2 U275 ( .A(n275), .B(epc_in[21]), .C(n273), .D(pc_plus_4_out[21]), .Z(
        n186) );
  AO2 U276 ( .A(n270), .B(iaddr_in[21]), .C(n276), .D(trap_address_in[21]), 
        .Z(n185) );
  ND2 U277 ( .A(n186), .B(n185), .Z(pc_mux_out[21]) );
  AO2 U278 ( .A(n276), .B(trap_address_in[0]), .C(n275), .D(epc_in[0]), .Z(
        n188) );
  ND2 U279 ( .A(n273), .B(pc_plus_4_out[0]), .Z(n187) );
  ND2 U280 ( .A(n188), .B(n187), .Z(pc_mux_out[0]) );
  IVP U281 ( .A(n189), .Z(n191) );
  NR2 U282 ( .A(n194), .B(pc_in[20]), .Z(n190) );
  NR2 U283 ( .A(n191), .B(n190), .Z(pc_plus_4_out[20]) );
  AO2 U284 ( .A(n275), .B(epc_in[20]), .C(n273), .D(pc_plus_4_out[20]), .Z(
        n193) );
  AO2 U285 ( .A(n270), .B(iaddr_in[20]), .C(n276), .D(trap_address_in[20]), 
        .Z(n192) );
  ND2 U286 ( .A(n193), .B(n192), .Z(pc_mux_out[20]) );
  AO6 U287 ( .A(n198), .B(n195), .C(n194), .Z(pc_plus_4_out[19]) );
  AO2 U288 ( .A(n275), .B(epc_in[19]), .C(n273), .D(pc_plus_4_out[19]), .Z(
        n197) );
  AO2 U289 ( .A(n270), .B(iaddr_in[19]), .C(n276), .D(trap_address_in[19]), 
        .Z(n196) );
  ND2 U290 ( .A(n197), .B(n196), .Z(pc_mux_out[19]) );
  IVP U291 ( .A(n198), .Z(n200) );
  NR2 U292 ( .A(n203), .B(pc_in[18]), .Z(n199) );
  NR2 U293 ( .A(n200), .B(n199), .Z(pc_plus_4_out[18]) );
  AO2 U294 ( .A(n275), .B(epc_in[18]), .C(n273), .D(pc_plus_4_out[18]), .Z(
        n202) );
  AO2 U295 ( .A(n270), .B(iaddr_in[18]), .C(n276), .D(trap_address_in[18]), 
        .Z(n201) );
  ND2 U296 ( .A(n202), .B(n201), .Z(pc_mux_out[18]) );
  AO6 U297 ( .A(n207), .B(n204), .C(n203), .Z(pc_plus_4_out[17]) );
  AO2 U298 ( .A(n275), .B(epc_in[17]), .C(n273), .D(pc_plus_4_out[17]), .Z(
        n206) );
  AO2 U299 ( .A(n270), .B(iaddr_in[17]), .C(n276), .D(trap_address_in[17]), 
        .Z(n205) );
  ND2 U300 ( .A(n206), .B(n205), .Z(pc_mux_out[17]) );
  IVP U301 ( .A(n207), .Z(n209) );
  NR2 U302 ( .A(n212), .B(pc_in[16]), .Z(n208) );
  NR2 U303 ( .A(n209), .B(n208), .Z(pc_plus_4_out[16]) );
  AO2 U304 ( .A(n275), .B(epc_in[16]), .C(n273), .D(pc_plus_4_out[16]), .Z(
        n211) );
  AO2 U305 ( .A(n270), .B(iaddr_in[16]), .C(n276), .D(trap_address_in[16]), 
        .Z(n210) );
  ND2 U306 ( .A(n211), .B(n210), .Z(pc_mux_out[16]) );
  AO6 U307 ( .A(n216), .B(n213), .C(n212), .Z(pc_plus_4_out[15]) );
  AO2 U308 ( .A(n275), .B(epc_in[15]), .C(n273), .D(pc_plus_4_out[15]), .Z(
        n215) );
  AO2 U309 ( .A(n270), .B(iaddr_in[15]), .C(n276), .D(trap_address_in[15]), 
        .Z(n214) );
  ND2 U310 ( .A(n215), .B(n214), .Z(pc_mux_out[15]) );
  IVP U311 ( .A(n216), .Z(n218) );
  NR2 U312 ( .A(n221), .B(pc_in[14]), .Z(n217) );
  NR2 U313 ( .A(n218), .B(n217), .Z(pc_plus_4_out[14]) );
  AO2 U314 ( .A(n275), .B(epc_in[14]), .C(n273), .D(pc_plus_4_out[14]), .Z(
        n220) );
  AO2 U315 ( .A(n270), .B(iaddr_in[14]), .C(n276), .D(trap_address_in[14]), 
        .Z(n219) );
  ND2 U316 ( .A(n220), .B(n219), .Z(pc_mux_out[14]) );
  AO6 U317 ( .A(n225), .B(n222), .C(n221), .Z(pc_plus_4_out[13]) );
  AO2 U318 ( .A(n275), .B(epc_in[13]), .C(n273), .D(pc_plus_4_out[13]), .Z(
        n224) );
  AO2 U319 ( .A(n270), .B(iaddr_in[13]), .C(n276), .D(trap_address_in[13]), 
        .Z(n223) );
  ND2 U320 ( .A(n224), .B(n223), .Z(pc_mux_out[13]) );
  IVP U321 ( .A(n225), .Z(n227) );
  NR2 U322 ( .A(n230), .B(pc_in[12]), .Z(n226) );
  NR2 U323 ( .A(n227), .B(n226), .Z(pc_plus_4_out[12]) );
  AO2 U324 ( .A(n275), .B(epc_in[12]), .C(n273), .D(pc_plus_4_out[12]), .Z(
        n229) );
  AO2 U325 ( .A(n270), .B(iaddr_in[12]), .C(n276), .D(trap_address_in[12]), 
        .Z(n228) );
  ND2 U326 ( .A(n229), .B(n228), .Z(pc_mux_out[12]) );
  AO6 U327 ( .A(n234), .B(n231), .C(n230), .Z(pc_plus_4_out[11]) );
  AO2 U328 ( .A(n275), .B(epc_in[11]), .C(n273), .D(pc_plus_4_out[11]), .Z(
        n233) );
  AO2 U329 ( .A(n270), .B(iaddr_in[11]), .C(n276), .D(trap_address_in[11]), 
        .Z(n232) );
  ND2 U330 ( .A(n233), .B(n232), .Z(pc_mux_out[11]) );
  IVP U331 ( .A(n234), .Z(n236) );
  NR2 U332 ( .A(n239), .B(pc_in[10]), .Z(n235) );
  NR2 U333 ( .A(n236), .B(n235), .Z(pc_plus_4_out[10]) );
  AO2 U334 ( .A(n275), .B(epc_in[10]), .C(n273), .D(pc_plus_4_out[10]), .Z(
        n238) );
  AO2 U335 ( .A(n270), .B(iaddr_in[10]), .C(n276), .D(trap_address_in[10]), 
        .Z(n237) );
  ND2 U336 ( .A(n238), .B(n237), .Z(pc_mux_out[10]) );
  AO6 U337 ( .A(n243), .B(n240), .C(n239), .Z(pc_plus_4_out[9]) );
  AO2 U338 ( .A(n275), .B(epc_in[9]), .C(n273), .D(pc_plus_4_out[9]), .Z(n242)
         );
  AO2 U339 ( .A(n270), .B(iaddr_in[9]), .C(n276), .D(trap_address_in[9]), .Z(
        n241) );
  ND2 U340 ( .A(n242), .B(n241), .Z(pc_mux_out[9]) );
  IVP U341 ( .A(n243), .Z(n245) );
  NR2 U342 ( .A(n248), .B(pc_in[8]), .Z(n244) );
  NR2 U343 ( .A(n245), .B(n244), .Z(pc_plus_4_out[8]) );
  AO2 U344 ( .A(n275), .B(epc_in[8]), .C(n273), .D(pc_plus_4_out[8]), .Z(n247)
         );
  AO2 U345 ( .A(n270), .B(iaddr_in[8]), .C(n276), .D(trap_address_in[8]), .Z(
        n246) );
  ND2 U346 ( .A(n247), .B(n246), .Z(pc_mux_out[8]) );
  AO6 U347 ( .A(n252), .B(n249), .C(n248), .Z(pc_plus_4_out[7]) );
  AO2 U348 ( .A(n275), .B(epc_in[7]), .C(n273), .D(pc_plus_4_out[7]), .Z(n251)
         );
  AO2 U349 ( .A(n270), .B(iaddr_in[7]), .C(n276), .D(trap_address_in[7]), .Z(
        n250) );
  ND2 U350 ( .A(n251), .B(n250), .Z(pc_mux_out[7]) );
  IVP U351 ( .A(n252), .Z(n254) );
  NR2 U352 ( .A(n257), .B(pc_in[6]), .Z(n253) );
  NR2 U353 ( .A(n254), .B(n253), .Z(pc_plus_4_out[6]) );
  AO2 U354 ( .A(n275), .B(epc_in[6]), .C(n273), .D(pc_plus_4_out[6]), .Z(n256)
         );
  AO2 U355 ( .A(n270), .B(iaddr_in[6]), .C(n276), .D(trap_address_in[6]), .Z(
        n255) );
  ND2 U356 ( .A(n256), .B(n255), .Z(pc_mux_out[6]) );
  AO6 U357 ( .A(n261), .B(n258), .C(n257), .Z(pc_plus_4_out[5]) );
  AO2 U358 ( .A(n275), .B(epc_in[5]), .C(n273), .D(pc_plus_4_out[5]), .Z(n260)
         );
  AO2 U359 ( .A(n270), .B(iaddr_in[5]), .C(n276), .D(trap_address_in[5]), .Z(
        n259) );
  ND2 U360 ( .A(n260), .B(n259), .Z(pc_mux_out[5]) );
  IVP U361 ( .A(n261), .Z(n263) );
  NR2 U362 ( .A(n266), .B(pc_in[4]), .Z(n262) );
  NR2 U363 ( .A(n263), .B(n262), .Z(pc_plus_4_out[4]) );
  AO2 U364 ( .A(n275), .B(epc_in[4]), .C(n273), .D(pc_plus_4_out[4]), .Z(n265)
         );
  AO2 U365 ( .A(n270), .B(iaddr_in[4]), .C(n276), .D(trap_address_in[4]), .Z(
        n264) );
  ND2 U366 ( .A(n265), .B(n264), .Z(pc_mux_out[4]) );
  AO6 U367 ( .A(pc_plus_4_out[2]), .B(n267), .C(n266), .Z(pc_plus_4_out[3]) );
  AO2 U368 ( .A(n275), .B(epc_in[3]), .C(n273), .D(pc_plus_4_out[3]), .Z(n269)
         );
  AO2 U369 ( .A(n270), .B(iaddr_in[3]), .C(n276), .D(trap_address_in[3]), .Z(
        n268) );
  ND2 U370 ( .A(n269), .B(n268), .Z(pc_mux_out[3]) );
  AO2 U371 ( .A(n275), .B(epc_in[2]), .C(n273), .D(pc_plus_4_out[2]), .Z(n272)
         );
  AO2 U372 ( .A(n270), .B(iaddr_in[2]), .C(n276), .D(trap_address_in[2]), .Z(
        n271) );
  ND2 U373 ( .A(n272), .B(n271), .Z(pc_mux_out[2]) );
  AN2P U374 ( .A(branch_taken_in), .B(iaddr_in[1]), .Z(
        misaligned_instr_logic_out) );
  AO2 U375 ( .A(n274), .B(misaligned_instr_logic_out), .C(n273), .D(
        pc_plus_4_out[1]), .Z(n278) );
  AO2 U376 ( .A(n276), .B(trap_address_in[1]), .C(n275), .D(epc_in[1]), .Z(
        n277) );
  ND2 U377 ( .A(n278), .B(n277), .Z(pc_mux_out[1]) );
  IVP U378 ( .A(pc_mux_out[0]), .Z(n280) );
  IVP U379 ( .A(rst_in), .Z(n279) );
  ND2 U380 ( .A(ahb_ready_in), .B(n279), .Z(n311) );
  NR2 U381 ( .A(n280), .B(n311), .Z(N18) );
  IVP U382 ( .A(pc_mux_out[1]), .Z(n281) );
  NR2 U383 ( .A(n281), .B(n311), .Z(N19) );
  IVP U384 ( .A(pc_mux_out[2]), .Z(n282) );
  NR2 U385 ( .A(n282), .B(n311), .Z(N20) );
  IVP U386 ( .A(pc_mux_out[3]), .Z(n283) );
  NR2 U387 ( .A(n283), .B(n311), .Z(N21) );
  IVP U388 ( .A(pc_mux_out[4]), .Z(n284) );
  NR2 U389 ( .A(n284), .B(n311), .Z(N22) );
  IVP U390 ( .A(pc_mux_out[5]), .Z(n285) );
  NR2 U391 ( .A(n285), .B(n311), .Z(N23) );
  IVP U392 ( .A(pc_mux_out[6]), .Z(n286) );
  NR2 U393 ( .A(n286), .B(n311), .Z(N24) );
  IVP U394 ( .A(pc_mux_out[7]), .Z(n287) );
  NR2 U395 ( .A(n287), .B(n311), .Z(N25) );
  IVP U396 ( .A(pc_mux_out[8]), .Z(n288) );
  NR2 U397 ( .A(n288), .B(n311), .Z(N26) );
  IVP U398 ( .A(pc_mux_out[9]), .Z(n289) );
  NR2 U399 ( .A(n289), .B(n311), .Z(N27) );
  IVP U400 ( .A(pc_mux_out[10]), .Z(n290) );
  NR2 U401 ( .A(n290), .B(n311), .Z(N28) );
  IVP U402 ( .A(pc_mux_out[11]), .Z(n291) );
  NR2 U403 ( .A(n291), .B(n311), .Z(N29) );
  IVP U404 ( .A(pc_mux_out[12]), .Z(n292) );
  NR2 U405 ( .A(n292), .B(n311), .Z(N30) );
  IVP U406 ( .A(pc_mux_out[13]), .Z(n293) );
  NR2 U407 ( .A(n293), .B(n311), .Z(N31) );
  IVP U408 ( .A(pc_mux_out[14]), .Z(n294) );
  NR2 U409 ( .A(n294), .B(n311), .Z(N32) );
  IVP U410 ( .A(pc_mux_out[15]), .Z(n295) );
  NR2 U411 ( .A(n295), .B(n311), .Z(N33) );
  IVP U412 ( .A(pc_mux_out[16]), .Z(n296) );
  NR2 U413 ( .A(n296), .B(n311), .Z(N34) );
  IVP U414 ( .A(pc_mux_out[17]), .Z(n297) );
  NR2 U415 ( .A(n297), .B(n311), .Z(N35) );
  IVP U416 ( .A(pc_mux_out[18]), .Z(n298) );
  NR2 U417 ( .A(n298), .B(n311), .Z(N36) );
  IVP U418 ( .A(pc_mux_out[19]), .Z(n299) );
  NR2 U419 ( .A(n299), .B(n311), .Z(N37) );
  IVP U420 ( .A(pc_mux_out[20]), .Z(n300) );
  NR2 U421 ( .A(n300), .B(n311), .Z(N38) );
  IVP U422 ( .A(pc_mux_out[21]), .Z(n301) );
  NR2 U423 ( .A(n301), .B(n311), .Z(N39) );
  IVP U424 ( .A(pc_mux_out[22]), .Z(n302) );
  NR2 U425 ( .A(n302), .B(n311), .Z(N40) );
  IVP U426 ( .A(pc_mux_out[23]), .Z(n303) );
  NR2 U427 ( .A(n303), .B(n311), .Z(N41) );
  IVP U428 ( .A(pc_mux_out[24]), .Z(n304) );
  NR2 U429 ( .A(n304), .B(n311), .Z(N42) );
  IVP U430 ( .A(pc_mux_out[25]), .Z(n305) );
  NR2 U431 ( .A(n305), .B(n311), .Z(N43) );
  IVP U432 ( .A(pc_mux_out[26]), .Z(n306) );
  NR2 U433 ( .A(n306), .B(n311), .Z(N44) );
  IVP U434 ( .A(pc_mux_out[27]), .Z(n307) );
  NR2 U435 ( .A(n307), .B(n311), .Z(N45) );
  IVP U436 ( .A(pc_mux_out[28]), .Z(n308) );
  NR2 U437 ( .A(n308), .B(n311), .Z(N46) );
  IVP U438 ( .A(pc_mux_out[29]), .Z(n309) );
  NR2 U439 ( .A(n309), .B(n311), .Z(N47) );
  IVP U440 ( .A(pc_mux_out[30]), .Z(n310) );
  NR2 U441 ( .A(n310), .B(n311), .Z(N48) );
  IVP U442 ( .A(pc_mux_out[31]), .Z(n312) );
  NR2 U443 ( .A(n312), .B(n311), .Z(N49) );
  OR2P U444 ( .A(rst_in), .B(ahb_ready_in), .Z(n137) );
endmodule

