/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:24:24 2025
/////////////////////////////////////////////////////////////


module msrv32_store_unit ( funct3_in, iadder_in, rs2_in, mem_wr_req_in, 
        ahb_ready_in, ms_riscv32_mp_dmaddr_out, ms_riscv32_mp_dmdata_out, 
        ms_riscv32_mp_dmwr_mask_out, ms_riscv32_mp_dmwr_req_out, 
        ahb_htrans_out );
  input [1:0] funct3_in;
  input [31:0] iadder_in;
  input [31:0] rs2_in;
  output [31:0] ms_riscv32_mp_dmaddr_out;
  output [31:0] ms_riscv32_mp_dmdata_out;
  output [3:0] ms_riscv32_mp_dmwr_mask_out;
  output [1:0] ahb_htrans_out;
  input mem_wr_req_in, ahb_ready_in;
  output ms_riscv32_mp_dmwr_req_out;
  wire   ahb_ready_in, ms_riscv32_mp_dmwr_req_out, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129;
  assign ahb_htrans_out[0] = 1'b0;
  assign ms_riscv32_mp_dmaddr_out[0] = 1'b0;
  assign ms_riscv32_mp_dmaddr_out[1] = 1'b0;
  assign ahb_htrans_out[1] = ahb_ready_in;
  assign ms_riscv32_mp_dmaddr_out[31] = iadder_in[31];
  assign ms_riscv32_mp_dmaddr_out[30] = iadder_in[30];
  assign ms_riscv32_mp_dmaddr_out[29] = iadder_in[29];
  assign ms_riscv32_mp_dmaddr_out[28] = iadder_in[28];
  assign ms_riscv32_mp_dmaddr_out[27] = iadder_in[27];
  assign ms_riscv32_mp_dmaddr_out[26] = iadder_in[26];
  assign ms_riscv32_mp_dmaddr_out[25] = iadder_in[25];
  assign ms_riscv32_mp_dmaddr_out[24] = iadder_in[24];
  assign ms_riscv32_mp_dmaddr_out[23] = iadder_in[23];
  assign ms_riscv32_mp_dmaddr_out[22] = iadder_in[22];
  assign ms_riscv32_mp_dmaddr_out[21] = iadder_in[21];
  assign ms_riscv32_mp_dmaddr_out[20] = iadder_in[20];
  assign ms_riscv32_mp_dmaddr_out[19] = iadder_in[19];
  assign ms_riscv32_mp_dmaddr_out[18] = iadder_in[18];
  assign ms_riscv32_mp_dmaddr_out[17] = iadder_in[17];
  assign ms_riscv32_mp_dmaddr_out[16] = iadder_in[16];
  assign ms_riscv32_mp_dmaddr_out[15] = iadder_in[15];
  assign ms_riscv32_mp_dmaddr_out[14] = iadder_in[14];
  assign ms_riscv32_mp_dmaddr_out[13] = iadder_in[13];
  assign ms_riscv32_mp_dmaddr_out[12] = iadder_in[12];
  assign ms_riscv32_mp_dmaddr_out[11] = iadder_in[11];
  assign ms_riscv32_mp_dmaddr_out[10] = iadder_in[10];
  assign ms_riscv32_mp_dmaddr_out[9] = iadder_in[9];
  assign ms_riscv32_mp_dmaddr_out[8] = iadder_in[8];
  assign ms_riscv32_mp_dmaddr_out[7] = iadder_in[7];
  assign ms_riscv32_mp_dmaddr_out[6] = iadder_in[6];
  assign ms_riscv32_mp_dmaddr_out[5] = iadder_in[5];
  assign ms_riscv32_mp_dmaddr_out[4] = iadder_in[4];
  assign ms_riscv32_mp_dmaddr_out[3] = iadder_in[3];
  assign ms_riscv32_mp_dmaddr_out[2] = iadder_in[2];
  assign ms_riscv32_mp_dmwr_req_out = mem_wr_req_in;

  IVP U112 ( .A(funct3_in[0]), .Z(n109) );
  NR2 U113 ( .A(iadder_in[1]), .B(n109), .Z(n74) );
  NR2 U114 ( .A(funct3_in[1]), .B(n74), .Z(n85) );
  AO7 U115 ( .A(iadder_in[1]), .B(iadder_in[0]), .C(n85), .Z(n82) );
  AN2P U116 ( .A(n82), .B(ms_riscv32_mp_dmwr_req_out), .Z(
        ms_riscv32_mp_dmwr_mask_out[0]) );
  IVP U117 ( .A(iadder_in[1]), .Z(n78) );
  ND2 U118 ( .A(iadder_in[0]), .B(n78), .Z(n75) );
  IVP U119 ( .A(ms_riscv32_mp_dmwr_req_out), .Z(n80) );
  AO6 U120 ( .A(n85), .B(n75), .C(n80), .Z(ms_riscv32_mp_dmwr_mask_out[1]) );
  ND2 U121 ( .A(iadder_in[0]), .B(n109), .Z(n108) );
  AN2P U122 ( .A(n108), .B(iadder_in[1]), .Z(n97) );
  NR2 U123 ( .A(funct3_in[1]), .B(n97), .Z(n76) );
  NR2 U124 ( .A(n80), .B(n76), .Z(ms_riscv32_mp_dmwr_mask_out[2]) );
  NR2 U125 ( .A(funct3_in[0]), .B(iadder_in[0]), .Z(n77) );
  NR2 U126 ( .A(n78), .B(n77), .Z(n79) );
  NR2 U127 ( .A(funct3_in[1]), .B(n79), .Z(n81) );
  NR2 U128 ( .A(n81), .B(n80), .Z(ms_riscv32_mp_dmwr_mask_out[3]) );
  IVP U129 ( .A(rs2_in[0]), .Z(n98) );
  ND2 U130 ( .A(ahb_ready_in), .B(n82), .Z(n83) );
  NR2 U131 ( .A(n98), .B(n83), .Z(ms_riscv32_mp_dmdata_out[0]) );
  IVP U132 ( .A(rs2_in[1]), .Z(n99) );
  NR2 U133 ( .A(n99), .B(n83), .Z(ms_riscv32_mp_dmdata_out[1]) );
  IVP U134 ( .A(rs2_in[2]), .Z(n100) );
  NR2 U135 ( .A(n100), .B(n83), .Z(ms_riscv32_mp_dmdata_out[2]) );
  IVP U136 ( .A(rs2_in[3]), .Z(n101) );
  NR2 U137 ( .A(n101), .B(n83), .Z(ms_riscv32_mp_dmdata_out[3]) );
  IVP U138 ( .A(rs2_in[4]), .Z(n102) );
  NR2 U139 ( .A(n102), .B(n83), .Z(ms_riscv32_mp_dmdata_out[4]) );
  IVP U140 ( .A(rs2_in[5]), .Z(n103) );
  NR2 U141 ( .A(n103), .B(n83), .Z(ms_riscv32_mp_dmdata_out[5]) );
  IVP U142 ( .A(rs2_in[6]), .Z(n104) );
  NR2 U143 ( .A(n104), .B(n83), .Z(ms_riscv32_mp_dmdata_out[6]) );
  IVP U144 ( .A(rs2_in[7]), .Z(n106) );
  NR2 U145 ( .A(n106), .B(n83), .Z(ms_riscv32_mp_dmdata_out[7]) );
  IVP U146 ( .A(ahb_ready_in), .Z(n86) );
  NR2 U147 ( .A(funct3_in[1]), .B(n86), .Z(n107) );
  NR2 U148 ( .A(iadder_in[1]), .B(n108), .Z(n84) );
  ND2 U149 ( .A(n107), .B(n84), .Z(n96) );
  IVP U150 ( .A(rs2_in[8]), .Z(n87) );
  OR2P U151 ( .A(n86), .B(n85), .Z(n94) );
  AO4 U152 ( .A(n98), .B(n96), .C(n87), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[8]) );
  IVP U153 ( .A(rs2_in[9]), .Z(n88) );
  AO4 U154 ( .A(n99), .B(n96), .C(n88), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[9]) );
  IVP U155 ( .A(rs2_in[10]), .Z(n89) );
  AO4 U156 ( .A(n100), .B(n96), .C(n89), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[10]) );
  IVP U157 ( .A(rs2_in[11]), .Z(n90) );
  AO4 U158 ( .A(n101), .B(n96), .C(n90), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[11]) );
  IVP U159 ( .A(rs2_in[12]), .Z(n91) );
  AO4 U160 ( .A(n102), .B(n96), .C(n91), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[12]) );
  IVP U161 ( .A(rs2_in[13]), .Z(n92) );
  AO4 U162 ( .A(n103), .B(n96), .C(n92), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[13]) );
  IVP U163 ( .A(rs2_in[14]), .Z(n93) );
  AO4 U164 ( .A(n104), .B(n96), .C(n93), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[14]) );
  IVP U165 ( .A(rs2_in[15]), .Z(n95) );
  AO4 U166 ( .A(n106), .B(n96), .C(n95), .D(n94), .Z(
        ms_riscv32_mp_dmdata_out[15]) );
  ND2 U167 ( .A(n107), .B(n97), .Z(n105) );
  AN2P U168 ( .A(ahb_ready_in), .B(funct3_in[1]), .Z(n127) );
  EON1 U169 ( .A(n98), .B(n105), .C(n127), .D(rs2_in[16]), .Z(
        ms_riscv32_mp_dmdata_out[16]) );
  EON1 U170 ( .A(n99), .B(n105), .C(n127), .D(rs2_in[17]), .Z(
        ms_riscv32_mp_dmdata_out[17]) );
  EON1 U171 ( .A(n100), .B(n105), .C(n127), .D(rs2_in[18]), .Z(
        ms_riscv32_mp_dmdata_out[18]) );
  EON1 U172 ( .A(n101), .B(n105), .C(n127), .D(rs2_in[19]), .Z(
        ms_riscv32_mp_dmdata_out[19]) );
  EON1 U173 ( .A(n102), .B(n105), .C(n127), .D(rs2_in[20]), .Z(
        ms_riscv32_mp_dmdata_out[20]) );
  EON1 U174 ( .A(n103), .B(n105), .C(n127), .D(rs2_in[21]), .Z(
        ms_riscv32_mp_dmdata_out[21]) );
  EON1 U175 ( .A(n104), .B(n105), .C(n127), .D(rs2_in[22]), .Z(
        ms_riscv32_mp_dmdata_out[22]) );
  EON1 U176 ( .A(n106), .B(n105), .C(n127), .D(rs2_in[23]), .Z(
        ms_riscv32_mp_dmdata_out[23]) );
  ND2 U177 ( .A(n107), .B(iadder_in[1]), .Z(n110) );
  NR2 U178 ( .A(n110), .B(n108), .Z(n126) );
  NR2 U179 ( .A(n110), .B(n109), .Z(n125) );
  AO2 U180 ( .A(n126), .B(rs2_in[0]), .C(n125), .D(rs2_in[8]), .Z(n112) );
  ND2 U181 ( .A(n127), .B(rs2_in[24]), .Z(n111) );
  ND2 U182 ( .A(n112), .B(n111), .Z(ms_riscv32_mp_dmdata_out[24]) );
  AO2 U183 ( .A(n126), .B(rs2_in[1]), .C(n125), .D(rs2_in[9]), .Z(n114) );
  ND2 U184 ( .A(n127), .B(rs2_in[25]), .Z(n113) );
  ND2 U185 ( .A(n114), .B(n113), .Z(ms_riscv32_mp_dmdata_out[25]) );
  AO2 U186 ( .A(n126), .B(rs2_in[2]), .C(n125), .D(rs2_in[10]), .Z(n116) );
  ND2 U187 ( .A(n127), .B(rs2_in[26]), .Z(n115) );
  ND2 U188 ( .A(n116), .B(n115), .Z(ms_riscv32_mp_dmdata_out[26]) );
  AO2 U189 ( .A(n126), .B(rs2_in[3]), .C(n125), .D(rs2_in[11]), .Z(n118) );
  ND2 U190 ( .A(n127), .B(rs2_in[27]), .Z(n117) );
  ND2 U191 ( .A(n118), .B(n117), .Z(ms_riscv32_mp_dmdata_out[27]) );
  AO2 U192 ( .A(n126), .B(rs2_in[4]), .C(n125), .D(rs2_in[12]), .Z(n120) );
  ND2 U193 ( .A(n127), .B(rs2_in[28]), .Z(n119) );
  ND2 U194 ( .A(n120), .B(n119), .Z(ms_riscv32_mp_dmdata_out[28]) );
  AO2 U195 ( .A(n126), .B(rs2_in[5]), .C(n125), .D(rs2_in[13]), .Z(n122) );
  ND2 U196 ( .A(n127), .B(rs2_in[29]), .Z(n121) );
  ND2 U197 ( .A(n122), .B(n121), .Z(ms_riscv32_mp_dmdata_out[29]) );
  AO2 U198 ( .A(n126), .B(rs2_in[6]), .C(n125), .D(rs2_in[14]), .Z(n124) );
  ND2 U199 ( .A(n127), .B(rs2_in[30]), .Z(n123) );
  ND2 U200 ( .A(n124), .B(n123), .Z(ms_riscv32_mp_dmdata_out[30]) );
  AO2 U201 ( .A(n126), .B(rs2_in[7]), .C(n125), .D(rs2_in[15]), .Z(n129) );
  ND2 U202 ( .A(n127), .B(rs2_in[31]), .Z(n128) );
  ND2 U203 ( .A(n129), .B(n128), .Z(ms_riscv32_mp_dmdata_out[31]) );
endmodule

