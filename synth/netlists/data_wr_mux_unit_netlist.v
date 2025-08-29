/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:42 2025
/////////////////////////////////////////////////////////////


module data_wr_mux_unit ( csr_op_1_0_in, csr_data_out_in, pre_data_in, 
        data_wr_out );
  input [1:0] csr_op_1_0_in;
  input [31:0] csr_data_out_in;
  input [31:0] pre_data_in;
  output [31:0] data_wr_out;
  wire   n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228;

  EO1 U131 ( .A(csr_op_1_0_in[0]), .B(csr_op_1_0_in[1]), .C(csr_op_1_0_in[1]), 
        .D(csr_op_1_0_in[0]), .Z(n224) );
  ND2 U132 ( .A(pre_data_in[31]), .B(n224), .Z(n133) );
  IVP U133 ( .A(csr_op_1_0_in[1]), .Z(n225) );
  AO7 U134 ( .A(pre_data_in[31]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n131) );
  ND2 U135 ( .A(csr_data_out_in[31]), .B(n131), .Z(n132) );
  ND2 U136 ( .A(n133), .B(n132), .Z(data_wr_out[31]) );
  ND2 U137 ( .A(n224), .B(pre_data_in[30]), .Z(n136) );
  AO7 U138 ( .A(pre_data_in[30]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n134) );
  ND2 U139 ( .A(csr_data_out_in[30]), .B(n134), .Z(n135) );
  ND2 U140 ( .A(n136), .B(n135), .Z(data_wr_out[30]) );
  ND2 U141 ( .A(n224), .B(pre_data_in[29]), .Z(n139) );
  AO7 U142 ( .A(pre_data_in[29]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n137) );
  ND2 U143 ( .A(csr_data_out_in[29]), .B(n137), .Z(n138) );
  ND2 U144 ( .A(n139), .B(n138), .Z(data_wr_out[29]) );
  ND2 U145 ( .A(n224), .B(pre_data_in[28]), .Z(n142) );
  AO7 U146 ( .A(pre_data_in[28]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n140) );
  ND2 U147 ( .A(csr_data_out_in[28]), .B(n140), .Z(n141) );
  ND2 U148 ( .A(n142), .B(n141), .Z(data_wr_out[28]) );
  ND2 U149 ( .A(n224), .B(pre_data_in[27]), .Z(n145) );
  AO7 U150 ( .A(pre_data_in[27]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n143) );
  ND2 U151 ( .A(csr_data_out_in[27]), .B(n143), .Z(n144) );
  ND2 U152 ( .A(n145), .B(n144), .Z(data_wr_out[27]) );
  ND2 U153 ( .A(n224), .B(pre_data_in[26]), .Z(n148) );
  AO7 U154 ( .A(pre_data_in[26]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n146) );
  ND2 U155 ( .A(csr_data_out_in[26]), .B(n146), .Z(n147) );
  ND2 U156 ( .A(n148), .B(n147), .Z(data_wr_out[26]) );
  ND2 U157 ( .A(n224), .B(pre_data_in[25]), .Z(n151) );
  AO7 U158 ( .A(pre_data_in[25]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n149) );
  ND2 U159 ( .A(csr_data_out_in[25]), .B(n149), .Z(n150) );
  ND2 U160 ( .A(n151), .B(n150), .Z(data_wr_out[25]) );
  ND2 U161 ( .A(n224), .B(pre_data_in[24]), .Z(n154) );
  AO7 U162 ( .A(pre_data_in[24]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n152) );
  ND2 U163 ( .A(csr_data_out_in[24]), .B(n152), .Z(n153) );
  ND2 U164 ( .A(n154), .B(n153), .Z(data_wr_out[24]) );
  ND2 U165 ( .A(n224), .B(pre_data_in[23]), .Z(n157) );
  AO7 U166 ( .A(pre_data_in[23]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n155) );
  ND2 U167 ( .A(csr_data_out_in[23]), .B(n155), .Z(n156) );
  ND2 U168 ( .A(n157), .B(n156), .Z(data_wr_out[23]) );
  ND2 U169 ( .A(n224), .B(pre_data_in[22]), .Z(n160) );
  AO7 U170 ( .A(pre_data_in[22]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n158) );
  ND2 U171 ( .A(csr_data_out_in[22]), .B(n158), .Z(n159) );
  ND2 U172 ( .A(n160), .B(n159), .Z(data_wr_out[22]) );
  ND2 U173 ( .A(n224), .B(pre_data_in[21]), .Z(n163) );
  AO7 U174 ( .A(pre_data_in[21]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n161) );
  ND2 U175 ( .A(csr_data_out_in[21]), .B(n161), .Z(n162) );
  ND2 U176 ( .A(n163), .B(n162), .Z(data_wr_out[21]) );
  ND2 U177 ( .A(n224), .B(pre_data_in[20]), .Z(n166) );
  AO7 U178 ( .A(pre_data_in[20]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n164) );
  ND2 U179 ( .A(csr_data_out_in[20]), .B(n164), .Z(n165) );
  ND2 U180 ( .A(n166), .B(n165), .Z(data_wr_out[20]) );
  ND2 U181 ( .A(n224), .B(pre_data_in[19]), .Z(n169) );
  AO7 U182 ( .A(pre_data_in[19]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n167) );
  ND2 U183 ( .A(csr_data_out_in[19]), .B(n167), .Z(n168) );
  ND2 U184 ( .A(n169), .B(n168), .Z(data_wr_out[19]) );
  ND2 U185 ( .A(n224), .B(pre_data_in[18]), .Z(n172) );
  AO7 U186 ( .A(pre_data_in[18]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n170) );
  ND2 U187 ( .A(csr_data_out_in[18]), .B(n170), .Z(n171) );
  ND2 U188 ( .A(n172), .B(n171), .Z(data_wr_out[18]) );
  ND2 U189 ( .A(n224), .B(pre_data_in[17]), .Z(n175) );
  AO7 U190 ( .A(pre_data_in[17]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n173) );
  ND2 U191 ( .A(csr_data_out_in[17]), .B(n173), .Z(n174) );
  ND2 U192 ( .A(n175), .B(n174), .Z(data_wr_out[17]) );
  ND2 U193 ( .A(n224), .B(pre_data_in[16]), .Z(n178) );
  AO7 U194 ( .A(pre_data_in[16]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n176) );
  ND2 U195 ( .A(csr_data_out_in[16]), .B(n176), .Z(n177) );
  ND2 U196 ( .A(n178), .B(n177), .Z(data_wr_out[16]) );
  ND2 U197 ( .A(n224), .B(pre_data_in[15]), .Z(n181) );
  AO7 U198 ( .A(pre_data_in[15]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n179) );
  ND2 U199 ( .A(csr_data_out_in[15]), .B(n179), .Z(n180) );
  ND2 U200 ( .A(n181), .B(n180), .Z(data_wr_out[15]) );
  ND2 U201 ( .A(n224), .B(pre_data_in[14]), .Z(n184) );
  AO7 U202 ( .A(pre_data_in[14]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n182) );
  ND2 U203 ( .A(csr_data_out_in[14]), .B(n182), .Z(n183) );
  ND2 U204 ( .A(n184), .B(n183), .Z(data_wr_out[14]) );
  ND2 U205 ( .A(n224), .B(pre_data_in[13]), .Z(n187) );
  AO7 U206 ( .A(pre_data_in[13]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n185) );
  ND2 U207 ( .A(csr_data_out_in[13]), .B(n185), .Z(n186) );
  ND2 U208 ( .A(n187), .B(n186), .Z(data_wr_out[13]) );
  ND2 U209 ( .A(n224), .B(pre_data_in[12]), .Z(n190) );
  AO7 U210 ( .A(pre_data_in[12]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n188) );
  ND2 U211 ( .A(csr_data_out_in[12]), .B(n188), .Z(n189) );
  ND2 U212 ( .A(n190), .B(n189), .Z(data_wr_out[12]) );
  ND2 U213 ( .A(n224), .B(pre_data_in[11]), .Z(n193) );
  AO7 U214 ( .A(pre_data_in[11]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n191) );
  ND2 U215 ( .A(csr_data_out_in[11]), .B(n191), .Z(n192) );
  ND2 U216 ( .A(n193), .B(n192), .Z(data_wr_out[11]) );
  ND2 U217 ( .A(n224), .B(pre_data_in[10]), .Z(n196) );
  AO7 U218 ( .A(pre_data_in[10]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n194) );
  ND2 U219 ( .A(csr_data_out_in[10]), .B(n194), .Z(n195) );
  ND2 U220 ( .A(n196), .B(n195), .Z(data_wr_out[10]) );
  ND2 U221 ( .A(n224), .B(pre_data_in[9]), .Z(n199) );
  AO7 U222 ( .A(pre_data_in[9]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n197) );
  ND2 U223 ( .A(csr_data_out_in[9]), .B(n197), .Z(n198) );
  ND2 U224 ( .A(n199), .B(n198), .Z(data_wr_out[9]) );
  ND2 U225 ( .A(n224), .B(pre_data_in[8]), .Z(n202) );
  AO7 U226 ( .A(pre_data_in[8]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n200) );
  ND2 U227 ( .A(csr_data_out_in[8]), .B(n200), .Z(n201) );
  ND2 U228 ( .A(n202), .B(n201), .Z(data_wr_out[8]) );
  ND2 U229 ( .A(n224), .B(pre_data_in[7]), .Z(n205) );
  AO7 U230 ( .A(pre_data_in[7]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n203) );
  ND2 U231 ( .A(csr_data_out_in[7]), .B(n203), .Z(n204) );
  ND2 U232 ( .A(n205), .B(n204), .Z(data_wr_out[7]) );
  ND2 U233 ( .A(n224), .B(pre_data_in[6]), .Z(n208) );
  AO7 U234 ( .A(pre_data_in[6]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n206) );
  ND2 U235 ( .A(csr_data_out_in[6]), .B(n206), .Z(n207) );
  ND2 U236 ( .A(n208), .B(n207), .Z(data_wr_out[6]) );
  ND2 U237 ( .A(n224), .B(pre_data_in[5]), .Z(n211) );
  AO7 U238 ( .A(pre_data_in[5]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n209) );
  ND2 U239 ( .A(csr_data_out_in[5]), .B(n209), .Z(n210) );
  ND2 U240 ( .A(n211), .B(n210), .Z(data_wr_out[5]) );
  ND2 U241 ( .A(n224), .B(pre_data_in[4]), .Z(n214) );
  AO7 U242 ( .A(pre_data_in[4]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n212) );
  ND2 U243 ( .A(csr_data_out_in[4]), .B(n212), .Z(n213) );
  ND2 U244 ( .A(n214), .B(n213), .Z(data_wr_out[4]) );
  ND2 U245 ( .A(n224), .B(pre_data_in[3]), .Z(n217) );
  AO7 U246 ( .A(pre_data_in[3]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n215) );
  ND2 U247 ( .A(csr_data_out_in[3]), .B(n215), .Z(n216) );
  ND2 U248 ( .A(n217), .B(n216), .Z(data_wr_out[3]) );
  ND2 U249 ( .A(n224), .B(pre_data_in[2]), .Z(n220) );
  AO7 U250 ( .A(pre_data_in[2]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n218) );
  ND2 U251 ( .A(csr_data_out_in[2]), .B(n218), .Z(n219) );
  ND2 U252 ( .A(n220), .B(n219), .Z(data_wr_out[2]) );
  ND2 U253 ( .A(n224), .B(pre_data_in[1]), .Z(n223) );
  AO7 U254 ( .A(pre_data_in[1]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n221) );
  ND2 U255 ( .A(csr_data_out_in[1]), .B(n221), .Z(n222) );
  ND2 U256 ( .A(n223), .B(n222), .Z(data_wr_out[1]) );
  ND2 U257 ( .A(n224), .B(pre_data_in[0]), .Z(n228) );
  AO7 U258 ( .A(pre_data_in[0]), .B(n225), .C(csr_op_1_0_in[0]), .Z(n226) );
  ND2 U259 ( .A(csr_data_out_in[0]), .B(n226), .Z(n227) );
  ND2 U260 ( .A(n228), .B(n227), .Z(data_wr_out[0]) );
endmodule

