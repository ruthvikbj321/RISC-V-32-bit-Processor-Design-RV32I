/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:26:51 2025
/////////////////////////////////////////////////////////////


module msrv32_imm_generator ( instr_in, imm_type_in, imm_out );
  input [31:7] instr_in;
  input [2:0] imm_type_in;
  output [31:0] imm_out;
  wire   n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118;

  IVP U81 ( .A(imm_type_in[0]), .Z(n115) );
  ND2 U82 ( .A(imm_type_in[2]), .B(n115), .Z(n87) );
  AN2P U83 ( .A(n87), .B(instr_in[25]), .Z(imm_out[5]) );
  AN2P U84 ( .A(n87), .B(instr_in[26]), .Z(imm_out[6]) );
  AN2P U85 ( .A(n87), .B(instr_in[27]), .Z(imm_out[7]) );
  AN2P U86 ( .A(n87), .B(instr_in[28]), .Z(imm_out[8]) );
  AN2P U87 ( .A(n87), .B(instr_in[29]), .Z(imm_out[9]) );
  AN2P U88 ( .A(n87), .B(instr_in[30]), .Z(imm_out[10]) );
  IVP U89 ( .A(imm_type_in[1]), .Z(n100) );
  NR2 U90 ( .A(n100), .B(n87), .Z(n84) );
  IVP U91 ( .A(instr_in[31]), .Z(n117) );
  NR2 U92 ( .A(n84), .B(n117), .Z(imm_out[31]) );
  NR2 U93 ( .A(imm_type_in[2]), .B(n100), .Z(n113) );
  ND2 U94 ( .A(n113), .B(instr_in[7]), .Z(n75) );
  ND2 U95 ( .A(imm_type_in[0]), .B(imm_type_in[1]), .Z(n73) );
  AO6 U96 ( .A(imm_type_in[2]), .B(n73), .C(n113), .Z(n112) );
  AO2 U97 ( .A(instr_in[20]), .B(n112), .C(instr_in[15]), .D(n84), .Z(n74) );
  AO7 U98 ( .A(imm_type_in[0]), .B(n75), .C(n74), .Z(imm_out[0]) );
  IVP U99 ( .A(n87), .Z(n76) );
  NR2 U100 ( .A(n113), .B(n76), .Z(n83) );
  AO2 U101 ( .A(n113), .B(instr_in[8]), .C(instr_in[21]), .D(n83), .Z(n78) );
  ND2 U102 ( .A(n84), .B(instr_in[16]), .Z(n77) );
  ND2 U103 ( .A(n78), .B(n77), .Z(imm_out[1]) );
  AO2 U104 ( .A(n113), .B(instr_in[9]), .C(n83), .D(instr_in[22]), .Z(n80) );
  ND2 U105 ( .A(n84), .B(instr_in[17]), .Z(n79) );
  ND2 U106 ( .A(n80), .B(n79), .Z(imm_out[2]) );
  AO2 U107 ( .A(n113), .B(instr_in[10]), .C(n83), .D(instr_in[23]), .Z(n82) );
  ND2 U108 ( .A(n84), .B(instr_in[18]), .Z(n81) );
  ND2 U109 ( .A(n82), .B(n81), .Z(imm_out[3]) );
  AO2 U110 ( .A(n113), .B(instr_in[11]), .C(n83), .D(instr_in[24]), .Z(n86) );
  ND2 U111 ( .A(n84), .B(instr_in[19]), .Z(n85) );
  ND2 U112 ( .A(n86), .B(n85), .Z(imm_out[4]) );
  ND2 U113 ( .A(instr_in[31]), .B(n87), .Z(n101) );
  NR2 U114 ( .A(imm_type_in[1]), .B(n87), .Z(n98) );
  ND2 U115 ( .A(instr_in[20]), .B(n98), .Z(n88) );
  ND2 U116 ( .A(n101), .B(n88), .Z(imm_out[20]) );
  ND2 U117 ( .A(instr_in[21]), .B(n98), .Z(n89) );
  ND2 U118 ( .A(n101), .B(n89), .Z(imm_out[21]) );
  ND2 U119 ( .A(instr_in[22]), .B(n98), .Z(n90) );
  ND2 U120 ( .A(n101), .B(n90), .Z(imm_out[22]) );
  ND2 U121 ( .A(instr_in[23]), .B(n98), .Z(n91) );
  ND2 U122 ( .A(n101), .B(n91), .Z(imm_out[23]) );
  ND2 U123 ( .A(instr_in[24]), .B(n98), .Z(n92) );
  ND2 U124 ( .A(n101), .B(n92), .Z(imm_out[24]) );
  ND2 U125 ( .A(n98), .B(instr_in[25]), .Z(n93) );
  ND2 U126 ( .A(n101), .B(n93), .Z(imm_out[25]) );
  ND2 U127 ( .A(n98), .B(instr_in[26]), .Z(n94) );
  ND2 U128 ( .A(n101), .B(n94), .Z(imm_out[26]) );
  ND2 U129 ( .A(n98), .B(instr_in[27]), .Z(n95) );
  ND2 U130 ( .A(n101), .B(n95), .Z(imm_out[27]) );
  ND2 U131 ( .A(n98), .B(instr_in[28]), .Z(n96) );
  ND2 U132 ( .A(n101), .B(n96), .Z(imm_out[28]) );
  ND2 U133 ( .A(n98), .B(instr_in[29]), .Z(n97) );
  ND2 U134 ( .A(n101), .B(n97), .Z(imm_out[29]) );
  ND2 U135 ( .A(n98), .B(instr_in[30]), .Z(n99) );
  ND2 U136 ( .A(n101), .B(n99), .Z(imm_out[30]) );
  AN2P U137 ( .A(n100), .B(imm_type_in[2]), .Z(n114) );
  OR2P U138 ( .A(n101), .B(n114), .Z(n110) );
  ND2 U139 ( .A(n114), .B(instr_in[12]), .Z(n102) );
  ND2 U140 ( .A(n110), .B(n102), .Z(imm_out[12]) );
  ND2 U141 ( .A(n114), .B(instr_in[13]), .Z(n103) );
  ND2 U142 ( .A(n110), .B(n103), .Z(imm_out[13]) );
  ND2 U143 ( .A(n114), .B(instr_in[14]), .Z(n104) );
  ND2 U144 ( .A(n110), .B(n104), .Z(imm_out[14]) );
  ND2 U145 ( .A(n114), .B(instr_in[15]), .Z(n105) );
  ND2 U146 ( .A(n110), .B(n105), .Z(imm_out[15]) );
  ND2 U147 ( .A(n114), .B(instr_in[16]), .Z(n106) );
  ND2 U148 ( .A(n110), .B(n106), .Z(imm_out[16]) );
  ND2 U149 ( .A(n114), .B(instr_in[17]), .Z(n107) );
  ND2 U150 ( .A(n110), .B(n107), .Z(imm_out[17]) );
  ND2 U151 ( .A(n114), .B(instr_in[18]), .Z(n108) );
  ND2 U152 ( .A(n110), .B(n108), .Z(imm_out[18]) );
  ND2 U153 ( .A(n114), .B(instr_in[19]), .Z(n109) );
  ND2 U154 ( .A(n110), .B(n109), .Z(imm_out[19]) );
  NR2 U155 ( .A(imm_type_in[2]), .B(imm_type_in[0]), .Z(n111) );
  NR2 U156 ( .A(n112), .B(n111), .Z(n118) );
  AO2 U157 ( .A(n114), .B(instr_in[20]), .C(n113), .D(instr_in[7]), .Z(n116)
         );
  AO4 U158 ( .A(n118), .B(n117), .C(n116), .D(n115), .Z(imm_out[11]) );
endmodule

