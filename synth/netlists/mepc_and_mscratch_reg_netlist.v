/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:45 2025
/////////////////////////////////////////////////////////////


module mepc_and_mscratch_reg ( clk_in, rst_in, wr_en_in, set_epc_in, pc_in, 
        data_wr_in, csr_addr_in, mscratch_out, mepc_out, epc_out );
  input [31:0] pc_in;
  input [31:0] data_wr_in;
  input [11:0] csr_addr_in;
  output [31:0] mscratch_out;
  output [31:0] mepc_out;
  output [31:0] epc_out;
  input clk_in, rst_in, wr_en_in, set_epc_in;
  wire   n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348;
  assign mepc_out[31] = epc_out[31];
  assign mepc_out[30] = epc_out[30];
  assign mepc_out[29] = epc_out[29];
  assign mepc_out[28] = epc_out[28];
  assign mepc_out[27] = epc_out[27];
  assign mepc_out[26] = epc_out[26];
  assign mepc_out[25] = epc_out[25];
  assign mepc_out[24] = epc_out[24];
  assign mepc_out[23] = epc_out[23];
  assign mepc_out[22] = epc_out[22];
  assign mepc_out[21] = epc_out[21];
  assign mepc_out[20] = epc_out[20];
  assign mepc_out[19] = epc_out[19];
  assign mepc_out[18] = epc_out[18];
  assign mepc_out[17] = epc_out[17];
  assign mepc_out[16] = epc_out[16];
  assign mepc_out[15] = epc_out[15];
  assign mepc_out[14] = epc_out[14];
  assign mepc_out[13] = epc_out[13];
  assign mepc_out[12] = epc_out[12];
  assign mepc_out[11] = epc_out[11];
  assign mepc_out[10] = epc_out[10];
  assign mepc_out[9] = epc_out[9];
  assign mepc_out[8] = epc_out[8];
  assign mepc_out[7] = epc_out[7];
  assign mepc_out[6] = epc_out[6];
  assign mepc_out[5] = epc_out[5];
  assign mepc_out[4] = epc_out[4];
  assign mepc_out[3] = epc_out[3];
  assign mepc_out[2] = epc_out[2];
  assign mepc_out[1] = epc_out[1];
  assign mepc_out[0] = epc_out[0];

  FD1 \mscratch_out_reg[31]  ( .D(n205), .CP(clk_in), .Q(mscratch_out[31]) );
  FD1 \mscratch_out_reg[30]  ( .D(n204), .CP(clk_in), .Q(mscratch_out[30]) );
  FD1 \mscratch_out_reg[29]  ( .D(n203), .CP(clk_in), .Q(mscratch_out[29]) );
  FD1 \mscratch_out_reg[28]  ( .D(n202), .CP(clk_in), .Q(mscratch_out[28]) );
  FD1 \mscratch_out_reg[27]  ( .D(n201), .CP(clk_in), .Q(mscratch_out[27]) );
  FD1 \mscratch_out_reg[26]  ( .D(n200), .CP(clk_in), .Q(mscratch_out[26]) );
  FD1 \mscratch_out_reg[25]  ( .D(n199), .CP(clk_in), .Q(mscratch_out[25]) );
  FD1 \mscratch_out_reg[24]  ( .D(n198), .CP(clk_in), .Q(mscratch_out[24]) );
  FD1 \mscratch_out_reg[23]  ( .D(n197), .CP(clk_in), .Q(mscratch_out[23]) );
  FD1 \mscratch_out_reg[22]  ( .D(n196), .CP(clk_in), .Q(mscratch_out[22]) );
  FD1 \mscratch_out_reg[21]  ( .D(n195), .CP(clk_in), .Q(mscratch_out[21]) );
  FD1 \mscratch_out_reg[20]  ( .D(n194), .CP(clk_in), .Q(mscratch_out[20]) );
  FD1 \mscratch_out_reg[19]  ( .D(n193), .CP(clk_in), .Q(mscratch_out[19]) );
  FD1 \mscratch_out_reg[18]  ( .D(n192), .CP(clk_in), .Q(mscratch_out[18]) );
  FD1 \mscratch_out_reg[17]  ( .D(n191), .CP(clk_in), .Q(mscratch_out[17]) );
  FD1 \mscratch_out_reg[16]  ( .D(n190), .CP(clk_in), .Q(mscratch_out[16]) );
  FD1 \mscratch_out_reg[15]  ( .D(n189), .CP(clk_in), .Q(mscratch_out[15]) );
  FD1 \mscratch_out_reg[14]  ( .D(n188), .CP(clk_in), .Q(mscratch_out[14]) );
  FD1 \mscratch_out_reg[13]  ( .D(n187), .CP(clk_in), .Q(mscratch_out[13]) );
  FD1 \mscratch_out_reg[12]  ( .D(n186), .CP(clk_in), .Q(mscratch_out[12]) );
  FD1 \mscratch_out_reg[11]  ( .D(n185), .CP(clk_in), .Q(mscratch_out[11]) );
  FD1 \mscratch_out_reg[10]  ( .D(n184), .CP(clk_in), .Q(mscratch_out[10]) );
  FD1 \mscratch_out_reg[9]  ( .D(n183), .CP(clk_in), .Q(mscratch_out[9]) );
  FD1 \mscratch_out_reg[8]  ( .D(n182), .CP(clk_in), .Q(mscratch_out[8]) );
  FD1 \mscratch_out_reg[7]  ( .D(n181), .CP(clk_in), .Q(mscratch_out[7]) );
  FD1 \mscratch_out_reg[6]  ( .D(n180), .CP(clk_in), .Q(mscratch_out[6]) );
  FD1 \mscratch_out_reg[5]  ( .D(n179), .CP(clk_in), .Q(mscratch_out[5]) );
  FD1 \mscratch_out_reg[4]  ( .D(n178), .CP(clk_in), .Q(mscratch_out[4]) );
  FD1 \mscratch_out_reg[3]  ( .D(n177), .CP(clk_in), .Q(mscratch_out[3]) );
  FD1 \mscratch_out_reg[2]  ( .D(n176), .CP(clk_in), .Q(mscratch_out[2]) );
  FD1 \mscratch_out_reg[1]  ( .D(n175), .CP(clk_in), .Q(mscratch_out[1]) );
  FD1 \mscratch_out_reg[0]  ( .D(n174), .CP(clk_in), .Q(mscratch_out[0]) );
  FD1 \mepc_out_reg[31]  ( .D(n173), .CP(clk_in), .Q(epc_out[31]) );
  FD1 \mepc_out_reg[30]  ( .D(n172), .CP(clk_in), .Q(epc_out[30]) );
  FD1 \mepc_out_reg[29]  ( .D(n171), .CP(clk_in), .Q(epc_out[29]) );
  FD1 \mepc_out_reg[28]  ( .D(n170), .CP(clk_in), .Q(epc_out[28]) );
  FD1 \mepc_out_reg[27]  ( .D(n169), .CP(clk_in), .Q(epc_out[27]) );
  FD1 \mepc_out_reg[26]  ( .D(n168), .CP(clk_in), .Q(epc_out[26]) );
  FD1 \mepc_out_reg[25]  ( .D(n167), .CP(clk_in), .Q(epc_out[25]) );
  FD1 \mepc_out_reg[24]  ( .D(n166), .CP(clk_in), .Q(epc_out[24]) );
  FD1 \mepc_out_reg[23]  ( .D(n165), .CP(clk_in), .Q(epc_out[23]) );
  FD1 \mepc_out_reg[22]  ( .D(n164), .CP(clk_in), .Q(epc_out[22]) );
  FD1 \mepc_out_reg[21]  ( .D(n163), .CP(clk_in), .Q(epc_out[21]) );
  FD1 \mepc_out_reg[20]  ( .D(n162), .CP(clk_in), .Q(epc_out[20]) );
  FD1 \mepc_out_reg[19]  ( .D(n161), .CP(clk_in), .Q(epc_out[19]) );
  FD1 \mepc_out_reg[18]  ( .D(n160), .CP(clk_in), .Q(epc_out[18]) );
  FD1 \mepc_out_reg[17]  ( .D(n159), .CP(clk_in), .Q(epc_out[17]) );
  FD1 \mepc_out_reg[16]  ( .D(n158), .CP(clk_in), .Q(epc_out[16]) );
  FD1 \mepc_out_reg[15]  ( .D(n157), .CP(clk_in), .Q(epc_out[15]) );
  FD1 \mepc_out_reg[14]  ( .D(n156), .CP(clk_in), .Q(epc_out[14]) );
  FD1 \mepc_out_reg[13]  ( .D(n155), .CP(clk_in), .Q(epc_out[13]) );
  FD1 \mepc_out_reg[12]  ( .D(n154), .CP(clk_in), .Q(epc_out[12]) );
  FD1 \mepc_out_reg[11]  ( .D(n153), .CP(clk_in), .Q(epc_out[11]) );
  FD1 \mepc_out_reg[10]  ( .D(n152), .CP(clk_in), .Q(epc_out[10]) );
  FD1 \mepc_out_reg[9]  ( .D(n151), .CP(clk_in), .Q(epc_out[9]) );
  FD1 \mepc_out_reg[8]  ( .D(n150), .CP(clk_in), .Q(epc_out[8]) );
  FD1 \mepc_out_reg[7]  ( .D(n149), .CP(clk_in), .Q(epc_out[7]) );
  FD1 \mepc_out_reg[6]  ( .D(n148), .CP(clk_in), .Q(epc_out[6]) );
  FD1 \mepc_out_reg[5]  ( .D(n147), .CP(clk_in), .Q(epc_out[5]) );
  FD1 \mepc_out_reg[4]  ( .D(n146), .CP(clk_in), .Q(epc_out[4]) );
  FD1 \mepc_out_reg[3]  ( .D(n145), .CP(clk_in), .Q(epc_out[3]) );
  FD1 \mepc_out_reg[2]  ( .D(n144), .CP(clk_in), .Q(epc_out[2]) );
  FD1 \mepc_out_reg[1]  ( .D(n143), .CP(clk_in), .Q(epc_out[1]) );
  FD1 \mepc_out_reg[0]  ( .D(n142), .CP(clk_in), .Q(epc_out[0]) );
  NR4 U208 ( .A(csr_addr_in[5]), .B(csr_addr_in[7]), .C(csr_addr_in[10]), .D(
        csr_addr_in[2]), .Z(n211) );
  IVP U209 ( .A(rst_in), .Z(n206) );
  ND2 U210 ( .A(csr_addr_in[9]), .B(n206), .Z(n209) );
  NR2 U211 ( .A(csr_addr_in[4]), .B(csr_addr_in[11]), .Z(n207) );
  ND2 U212 ( .A(csr_addr_in[8]), .B(n207), .Z(n208) );
  NR4 U213 ( .A(csr_addr_in[3]), .B(csr_addr_in[1]), .C(n209), .D(n208), .Z(
        n210) );
  ND4 U214 ( .A(wr_en_in), .B(csr_addr_in[6]), .C(n211), .D(n210), .Z(n279) );
  NR2 U215 ( .A(csr_addr_in[0]), .B(n279), .Z(n275) );
  NR2 U216 ( .A(rst_in), .B(n275), .Z(n274) );
  ND2 U217 ( .A(mscratch_out[31]), .B(n274), .Z(n213) );
  ND2 U218 ( .A(data_wr_in[31]), .B(n275), .Z(n212) );
  ND2 U219 ( .A(n213), .B(n212), .Z(n205) );
  ND2 U220 ( .A(mscratch_out[30]), .B(n274), .Z(n215) );
  ND2 U221 ( .A(data_wr_in[30]), .B(n275), .Z(n214) );
  ND2 U222 ( .A(n215), .B(n214), .Z(n204) );
  ND2 U223 ( .A(mscratch_out[29]), .B(n274), .Z(n217) );
  ND2 U224 ( .A(data_wr_in[29]), .B(n275), .Z(n216) );
  ND2 U225 ( .A(n217), .B(n216), .Z(n203) );
  ND2 U226 ( .A(mscratch_out[28]), .B(n274), .Z(n219) );
  ND2 U227 ( .A(data_wr_in[28]), .B(n275), .Z(n218) );
  ND2 U228 ( .A(n219), .B(n218), .Z(n202) );
  ND2 U229 ( .A(mscratch_out[27]), .B(n274), .Z(n221) );
  ND2 U230 ( .A(data_wr_in[27]), .B(n275), .Z(n220) );
  ND2 U231 ( .A(n221), .B(n220), .Z(n201) );
  ND2 U232 ( .A(mscratch_out[26]), .B(n274), .Z(n223) );
  ND2 U233 ( .A(data_wr_in[26]), .B(n275), .Z(n222) );
  ND2 U234 ( .A(n223), .B(n222), .Z(n200) );
  ND2 U235 ( .A(mscratch_out[25]), .B(n274), .Z(n225) );
  ND2 U236 ( .A(data_wr_in[25]), .B(n275), .Z(n224) );
  ND2 U237 ( .A(n225), .B(n224), .Z(n199) );
  ND2 U238 ( .A(mscratch_out[24]), .B(n274), .Z(n227) );
  ND2 U239 ( .A(data_wr_in[24]), .B(n275), .Z(n226) );
  ND2 U240 ( .A(n227), .B(n226), .Z(n198) );
  ND2 U241 ( .A(mscratch_out[23]), .B(n274), .Z(n229) );
  ND2 U242 ( .A(data_wr_in[23]), .B(n275), .Z(n228) );
  ND2 U243 ( .A(n229), .B(n228), .Z(n197) );
  ND2 U244 ( .A(mscratch_out[22]), .B(n274), .Z(n231) );
  ND2 U245 ( .A(data_wr_in[22]), .B(n275), .Z(n230) );
  ND2 U246 ( .A(n231), .B(n230), .Z(n196) );
  ND2 U247 ( .A(mscratch_out[21]), .B(n274), .Z(n233) );
  ND2 U248 ( .A(data_wr_in[21]), .B(n275), .Z(n232) );
  ND2 U249 ( .A(n233), .B(n232), .Z(n195) );
  ND2 U250 ( .A(mscratch_out[20]), .B(n274), .Z(n235) );
  ND2 U251 ( .A(data_wr_in[20]), .B(n275), .Z(n234) );
  ND2 U252 ( .A(n235), .B(n234), .Z(n194) );
  ND2 U253 ( .A(mscratch_out[19]), .B(n274), .Z(n237) );
  ND2 U254 ( .A(data_wr_in[19]), .B(n275), .Z(n236) );
  ND2 U255 ( .A(n237), .B(n236), .Z(n193) );
  ND2 U256 ( .A(mscratch_out[18]), .B(n274), .Z(n239) );
  ND2 U257 ( .A(data_wr_in[18]), .B(n275), .Z(n238) );
  ND2 U258 ( .A(n239), .B(n238), .Z(n192) );
  ND2 U259 ( .A(mscratch_out[17]), .B(n274), .Z(n241) );
  ND2 U260 ( .A(data_wr_in[17]), .B(n275), .Z(n240) );
  ND2 U261 ( .A(n241), .B(n240), .Z(n191) );
  ND2 U262 ( .A(mscratch_out[16]), .B(n274), .Z(n243) );
  ND2 U263 ( .A(data_wr_in[16]), .B(n275), .Z(n242) );
  ND2 U264 ( .A(n243), .B(n242), .Z(n190) );
  ND2 U265 ( .A(mscratch_out[15]), .B(n274), .Z(n245) );
  ND2 U266 ( .A(data_wr_in[15]), .B(n275), .Z(n244) );
  ND2 U267 ( .A(n245), .B(n244), .Z(n189) );
  ND2 U268 ( .A(mscratch_out[14]), .B(n274), .Z(n247) );
  ND2 U269 ( .A(data_wr_in[14]), .B(n275), .Z(n246) );
  ND2 U270 ( .A(n247), .B(n246), .Z(n188) );
  ND2 U271 ( .A(mscratch_out[13]), .B(n274), .Z(n249) );
  ND2 U272 ( .A(data_wr_in[13]), .B(n275), .Z(n248) );
  ND2 U273 ( .A(n249), .B(n248), .Z(n187) );
  ND2 U274 ( .A(mscratch_out[12]), .B(n274), .Z(n251) );
  ND2 U275 ( .A(data_wr_in[12]), .B(n275), .Z(n250) );
  ND2 U276 ( .A(n251), .B(n250), .Z(n186) );
  ND2 U277 ( .A(mscratch_out[11]), .B(n274), .Z(n253) );
  ND2 U278 ( .A(data_wr_in[11]), .B(n275), .Z(n252) );
  ND2 U279 ( .A(n253), .B(n252), .Z(n185) );
  ND2 U280 ( .A(mscratch_out[10]), .B(n274), .Z(n255) );
  ND2 U281 ( .A(data_wr_in[10]), .B(n275), .Z(n254) );
  ND2 U282 ( .A(n255), .B(n254), .Z(n184) );
  ND2 U283 ( .A(mscratch_out[9]), .B(n274), .Z(n257) );
  ND2 U284 ( .A(data_wr_in[9]), .B(n275), .Z(n256) );
  ND2 U285 ( .A(n257), .B(n256), .Z(n183) );
  ND2 U286 ( .A(mscratch_out[8]), .B(n274), .Z(n259) );
  ND2 U287 ( .A(data_wr_in[8]), .B(n275), .Z(n258) );
  ND2 U288 ( .A(n259), .B(n258), .Z(n182) );
  ND2 U289 ( .A(mscratch_out[7]), .B(n274), .Z(n261) );
  ND2 U290 ( .A(data_wr_in[7]), .B(n275), .Z(n260) );
  ND2 U291 ( .A(n261), .B(n260), .Z(n181) );
  ND2 U292 ( .A(mscratch_out[6]), .B(n274), .Z(n263) );
  ND2 U293 ( .A(data_wr_in[6]), .B(n275), .Z(n262) );
  ND2 U294 ( .A(n263), .B(n262), .Z(n180) );
  ND2 U295 ( .A(mscratch_out[5]), .B(n274), .Z(n265) );
  ND2 U296 ( .A(data_wr_in[5]), .B(n275), .Z(n264) );
  ND2 U297 ( .A(n265), .B(n264), .Z(n179) );
  ND2 U298 ( .A(mscratch_out[4]), .B(n274), .Z(n267) );
  ND2 U299 ( .A(data_wr_in[4]), .B(n275), .Z(n266) );
  ND2 U300 ( .A(n267), .B(n266), .Z(n178) );
  ND2 U301 ( .A(mscratch_out[3]), .B(n274), .Z(n269) );
  ND2 U302 ( .A(data_wr_in[3]), .B(n275), .Z(n268) );
  ND2 U303 ( .A(n269), .B(n268), .Z(n177) );
  ND2 U304 ( .A(mscratch_out[2]), .B(n274), .Z(n271) );
  ND2 U305 ( .A(data_wr_in[2]), .B(n275), .Z(n270) );
  ND2 U306 ( .A(n271), .B(n270), .Z(n176) );
  ND2 U307 ( .A(mscratch_out[1]), .B(n274), .Z(n273) );
  ND2 U308 ( .A(data_wr_in[1]), .B(n275), .Z(n272) );
  ND2 U309 ( .A(n273), .B(n272), .Z(n175) );
  ND2 U310 ( .A(mscratch_out[0]), .B(n274), .Z(n277) );
  ND2 U311 ( .A(data_wr_in[0]), .B(n275), .Z(n276) );
  ND2 U312 ( .A(n277), .B(n276), .Z(n174) );
  IVP U313 ( .A(set_epc_in), .Z(n281) );
  ND2 U314 ( .A(csr_addr_in[0]), .B(n281), .Z(n278) );
  NR2 U315 ( .A(n279), .B(n278), .Z(n340) );
  NR2 U316 ( .A(rst_in), .B(n281), .Z(n345) );
  AO2 U317 ( .A(data_wr_in[31]), .B(n340), .C(n345), .D(pc_in[31]), .Z(n283)
         );
  NR2 U318 ( .A(rst_in), .B(n340), .Z(n280) );
  AN2P U319 ( .A(n281), .B(n280), .Z(n346) );
  ND2 U320 ( .A(n346), .B(epc_out[31]), .Z(n282) );
  ND2 U321 ( .A(n283), .B(n282), .Z(n173) );
  AO2 U322 ( .A(data_wr_in[30]), .B(n340), .C(n345), .D(pc_in[30]), .Z(n285)
         );
  ND2 U323 ( .A(n346), .B(epc_out[30]), .Z(n284) );
  ND2 U324 ( .A(n285), .B(n284), .Z(n172) );
  AO2 U325 ( .A(data_wr_in[29]), .B(n340), .C(n345), .D(pc_in[29]), .Z(n287)
         );
  ND2 U326 ( .A(n346), .B(epc_out[29]), .Z(n286) );
  ND2 U327 ( .A(n287), .B(n286), .Z(n171) );
  AO2 U328 ( .A(data_wr_in[28]), .B(n340), .C(n345), .D(pc_in[28]), .Z(n289)
         );
  ND2 U329 ( .A(n346), .B(epc_out[28]), .Z(n288) );
  ND2 U330 ( .A(n289), .B(n288), .Z(n170) );
  AO2 U331 ( .A(data_wr_in[27]), .B(n340), .C(n345), .D(pc_in[27]), .Z(n291)
         );
  ND2 U332 ( .A(n346), .B(epc_out[27]), .Z(n290) );
  ND2 U333 ( .A(n291), .B(n290), .Z(n169) );
  AO2 U334 ( .A(data_wr_in[26]), .B(n340), .C(n345), .D(pc_in[26]), .Z(n293)
         );
  ND2 U335 ( .A(n346), .B(epc_out[26]), .Z(n292) );
  ND2 U336 ( .A(n293), .B(n292), .Z(n168) );
  AO2 U337 ( .A(data_wr_in[25]), .B(n340), .C(n345), .D(pc_in[25]), .Z(n295)
         );
  ND2 U338 ( .A(n346), .B(epc_out[25]), .Z(n294) );
  ND2 U339 ( .A(n295), .B(n294), .Z(n167) );
  AO2 U340 ( .A(data_wr_in[24]), .B(n340), .C(n345), .D(pc_in[24]), .Z(n297)
         );
  ND2 U341 ( .A(n346), .B(epc_out[24]), .Z(n296) );
  ND2 U342 ( .A(n297), .B(n296), .Z(n166) );
  AO2 U343 ( .A(data_wr_in[23]), .B(n340), .C(n345), .D(pc_in[23]), .Z(n299)
         );
  ND2 U344 ( .A(n346), .B(epc_out[23]), .Z(n298) );
  ND2 U345 ( .A(n299), .B(n298), .Z(n165) );
  AO2 U346 ( .A(data_wr_in[22]), .B(n340), .C(n345), .D(pc_in[22]), .Z(n301)
         );
  ND2 U347 ( .A(n346), .B(epc_out[22]), .Z(n300) );
  ND2 U348 ( .A(n301), .B(n300), .Z(n164) );
  AO2 U349 ( .A(data_wr_in[21]), .B(n340), .C(n345), .D(pc_in[21]), .Z(n303)
         );
  ND2 U350 ( .A(n346), .B(epc_out[21]), .Z(n302) );
  ND2 U351 ( .A(n303), .B(n302), .Z(n163) );
  AO2 U352 ( .A(data_wr_in[20]), .B(n340), .C(n345), .D(pc_in[20]), .Z(n305)
         );
  ND2 U353 ( .A(n346), .B(epc_out[20]), .Z(n304) );
  ND2 U354 ( .A(n305), .B(n304), .Z(n162) );
  AO2 U355 ( .A(data_wr_in[19]), .B(n340), .C(n345), .D(pc_in[19]), .Z(n307)
         );
  ND2 U356 ( .A(n346), .B(epc_out[19]), .Z(n306) );
  ND2 U357 ( .A(n307), .B(n306), .Z(n161) );
  AO2 U358 ( .A(data_wr_in[18]), .B(n340), .C(n345), .D(pc_in[18]), .Z(n309)
         );
  ND2 U359 ( .A(n346), .B(epc_out[18]), .Z(n308) );
  ND2 U360 ( .A(n309), .B(n308), .Z(n160) );
  AO2 U361 ( .A(data_wr_in[17]), .B(n340), .C(n345), .D(pc_in[17]), .Z(n311)
         );
  ND2 U362 ( .A(n346), .B(epc_out[17]), .Z(n310) );
  ND2 U363 ( .A(n311), .B(n310), .Z(n159) );
  AO2 U364 ( .A(data_wr_in[16]), .B(n340), .C(n345), .D(pc_in[16]), .Z(n313)
         );
  ND2 U365 ( .A(n346), .B(epc_out[16]), .Z(n312) );
  ND2 U366 ( .A(n313), .B(n312), .Z(n158) );
  AO2 U367 ( .A(data_wr_in[15]), .B(n340), .C(n345), .D(pc_in[15]), .Z(n315)
         );
  ND2 U368 ( .A(n346), .B(epc_out[15]), .Z(n314) );
  ND2 U369 ( .A(n315), .B(n314), .Z(n157) );
  AO2 U370 ( .A(data_wr_in[14]), .B(n340), .C(n345), .D(pc_in[14]), .Z(n317)
         );
  ND2 U371 ( .A(n346), .B(epc_out[14]), .Z(n316) );
  ND2 U372 ( .A(n317), .B(n316), .Z(n156) );
  AO2 U373 ( .A(data_wr_in[13]), .B(n340), .C(n345), .D(pc_in[13]), .Z(n319)
         );
  ND2 U374 ( .A(n346), .B(epc_out[13]), .Z(n318) );
  ND2 U375 ( .A(n319), .B(n318), .Z(n155) );
  AO2 U376 ( .A(data_wr_in[12]), .B(n340), .C(n345), .D(pc_in[12]), .Z(n321)
         );
  ND2 U377 ( .A(n346), .B(epc_out[12]), .Z(n320) );
  ND2 U378 ( .A(n321), .B(n320), .Z(n154) );
  AO2 U379 ( .A(data_wr_in[11]), .B(n340), .C(n345), .D(pc_in[11]), .Z(n323)
         );
  ND2 U380 ( .A(n346), .B(epc_out[11]), .Z(n322) );
  ND2 U381 ( .A(n323), .B(n322), .Z(n153) );
  AO2 U382 ( .A(data_wr_in[10]), .B(n340), .C(n345), .D(pc_in[10]), .Z(n325)
         );
  ND2 U383 ( .A(n346), .B(epc_out[10]), .Z(n324) );
  ND2 U384 ( .A(n325), .B(n324), .Z(n152) );
  AO2 U385 ( .A(data_wr_in[9]), .B(n340), .C(n345), .D(pc_in[9]), .Z(n327) );
  ND2 U386 ( .A(n346), .B(epc_out[9]), .Z(n326) );
  ND2 U387 ( .A(n327), .B(n326), .Z(n151) );
  AO2 U388 ( .A(data_wr_in[8]), .B(n340), .C(n345), .D(pc_in[8]), .Z(n329) );
  ND2 U389 ( .A(n346), .B(epc_out[8]), .Z(n328) );
  ND2 U390 ( .A(n329), .B(n328), .Z(n150) );
  AO2 U391 ( .A(data_wr_in[7]), .B(n340), .C(n345), .D(pc_in[7]), .Z(n331) );
  ND2 U392 ( .A(n346), .B(epc_out[7]), .Z(n330) );
  ND2 U393 ( .A(n331), .B(n330), .Z(n149) );
  AO2 U394 ( .A(data_wr_in[6]), .B(n340), .C(n345), .D(pc_in[6]), .Z(n333) );
  ND2 U395 ( .A(n346), .B(epc_out[6]), .Z(n332) );
  ND2 U396 ( .A(n333), .B(n332), .Z(n148) );
  AO2 U397 ( .A(data_wr_in[5]), .B(n340), .C(n345), .D(pc_in[5]), .Z(n335) );
  ND2 U398 ( .A(n346), .B(epc_out[5]), .Z(n334) );
  ND2 U399 ( .A(n335), .B(n334), .Z(n147) );
  AO2 U400 ( .A(data_wr_in[4]), .B(n340), .C(n345), .D(pc_in[4]), .Z(n337) );
  ND2 U401 ( .A(n346), .B(epc_out[4]), .Z(n336) );
  ND2 U402 ( .A(n337), .B(n336), .Z(n146) );
  AO2 U403 ( .A(data_wr_in[3]), .B(n340), .C(n345), .D(pc_in[3]), .Z(n339) );
  ND2 U404 ( .A(n346), .B(epc_out[3]), .Z(n338) );
  ND2 U405 ( .A(n339), .B(n338), .Z(n145) );
  AO2 U406 ( .A(data_wr_in[2]), .B(n340), .C(n345), .D(pc_in[2]), .Z(n342) );
  ND2 U407 ( .A(n346), .B(epc_out[2]), .Z(n341) );
  ND2 U408 ( .A(n342), .B(n341), .Z(n144) );
  ND2 U409 ( .A(pc_in[1]), .B(n345), .Z(n344) );
  ND2 U410 ( .A(epc_out[1]), .B(n346), .Z(n343) );
  ND2 U411 ( .A(n344), .B(n343), .Z(n143) );
  ND2 U412 ( .A(pc_in[0]), .B(n345), .Z(n348) );
  ND2 U413 ( .A(epc_out[0]), .B(n346), .Z(n347) );
  ND2 U414 ( .A(n348), .B(n347), .Z(n142) );
endmodule

