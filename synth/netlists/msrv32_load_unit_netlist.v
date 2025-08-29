/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:26 2025
/////////////////////////////////////////////////////////////


module msrv32_load_unit ( ahb_resp_in, ms_riscv32_mp_dmdata_in, 
        iadder_out_1_to_0_in, load_unsigned_in, load_size_in, lu_output_out );
  input [31:0] ms_riscv32_mp_dmdata_in;
  input [1:0] iadder_out_1_to_0_in;
  input [1:0] load_size_in;
  output [31:0] lu_output_out;
  input ahb_resp_in, load_unsigned_in;
  wire   n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130;

  IVP U99 ( .A(iadder_out_1_to_0_in[0]), .Z(n87) );
  NR2 U100 ( .A(load_size_in[0]), .B(n87), .Z(n66) );
  IVP U101 ( .A(load_size_in[1]), .Z(n106) );
  ND2 U102 ( .A(iadder_out_1_to_0_in[1]), .B(n106), .Z(n91) );
  NR2 U103 ( .A(n66), .B(n91), .Z(n81) );
  AO7 U104 ( .A(iadder_out_1_to_0_in[1]), .B(n66), .C(n106), .Z(n80) );
  AO2 U105 ( .A(ms_riscv32_mp_dmdata_in[16]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[0]), .D(n80), .Z(n69) );
  IVP U106 ( .A(n66), .Z(n67) );
  NR2 U107 ( .A(n91), .B(n67), .Z(n83) );
  NR4 U108 ( .A(load_size_in[1]), .B(iadder_out_1_to_0_in[1]), .C(
        load_size_in[0]), .D(n87), .Z(n82) );
  AO2 U109 ( .A(ms_riscv32_mp_dmdata_in[24]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[8]), .D(n82), .Z(n68) );
  AO6 U110 ( .A(n69), .B(n68), .C(ahb_resp_in), .Z(lu_output_out[0]) );
  AO2 U111 ( .A(ms_riscv32_mp_dmdata_in[17]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[1]), .D(n80), .Z(n71) );
  AO2 U112 ( .A(ms_riscv32_mp_dmdata_in[25]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[9]), .D(n82), .Z(n70) );
  AO6 U113 ( .A(n71), .B(n70), .C(ahb_resp_in), .Z(lu_output_out[1]) );
  AO2 U114 ( .A(ms_riscv32_mp_dmdata_in[18]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[2]), .D(n80), .Z(n73) );
  AO2 U115 ( .A(ms_riscv32_mp_dmdata_in[26]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[10]), .D(n82), .Z(n72) );
  AO6 U116 ( .A(n73), .B(n72), .C(ahb_resp_in), .Z(lu_output_out[2]) );
  AO2 U117 ( .A(ms_riscv32_mp_dmdata_in[19]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[3]), .D(n80), .Z(n75) );
  AO2 U118 ( .A(ms_riscv32_mp_dmdata_in[27]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[11]), .D(n82), .Z(n74) );
  AO6 U119 ( .A(n75), .B(n74), .C(ahb_resp_in), .Z(lu_output_out[3]) );
  AO2 U120 ( .A(ms_riscv32_mp_dmdata_in[20]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[4]), .D(n80), .Z(n77) );
  AO2 U121 ( .A(ms_riscv32_mp_dmdata_in[28]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[12]), .D(n82), .Z(n76) );
  AO6 U122 ( .A(n77), .B(n76), .C(ahb_resp_in), .Z(lu_output_out[4]) );
  AO2 U123 ( .A(ms_riscv32_mp_dmdata_in[21]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[5]), .D(n80), .Z(n79) );
  AO2 U124 ( .A(ms_riscv32_mp_dmdata_in[29]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[13]), .D(n82), .Z(n78) );
  AO6 U125 ( .A(n79), .B(n78), .C(ahb_resp_in), .Z(lu_output_out[5]) );
  AO2 U126 ( .A(ms_riscv32_mp_dmdata_in[22]), .B(n81), .C(
        ms_riscv32_mp_dmdata_in[6]), .D(n80), .Z(n85) );
  AO2 U127 ( .A(ms_riscv32_mp_dmdata_in[30]), .B(n83), .C(
        ms_riscv32_mp_dmdata_in[14]), .D(n82), .Z(n84) );
  AO6 U128 ( .A(n85), .B(n84), .C(ahb_resp_in), .Z(lu_output_out[6]) );
  IVP U129 ( .A(iadder_out_1_to_0_in[1]), .Z(n86) );
  AO2 U130 ( .A(iadder_out_1_to_0_in[1]), .B(ms_riscv32_mp_dmdata_in[31]), .C(
        ms_riscv32_mp_dmdata_in[15]), .D(n86), .Z(n104) );
  AO2 U131 ( .A(iadder_out_1_to_0_in[1]), .B(ms_riscv32_mp_dmdata_in[23]), .C(
        ms_riscv32_mp_dmdata_in[7]), .D(n86), .Z(n88) );
  AO2 U132 ( .A(iadder_out_1_to_0_in[0]), .B(n104), .C(n88), .D(n87), .Z(n90)
         );
  NR2 U133 ( .A(load_size_in[1]), .B(load_size_in[0]), .Z(n89) );
  ND2 U134 ( .A(n90), .B(n89), .Z(n94) );
  IVP U135 ( .A(ahb_resp_in), .Z(n110) );
  ND2 U136 ( .A(load_size_in[0]), .B(n110), .Z(n92) );
  NR2 U137 ( .A(n92), .B(n91), .Z(n102) );
  AO4 U138 ( .A(iadder_out_1_to_0_in[1]), .B(n92), .C(ahb_resp_in), .D(n106), 
        .Z(n101) );
  AO2 U139 ( .A(ms_riscv32_mp_dmdata_in[23]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[7]), .D(n101), .Z(n93) );
  AO7 U140 ( .A(ahb_resp_in), .B(n94), .C(n93), .Z(lu_output_out[7]) );
  AO2 U141 ( .A(ms_riscv32_mp_dmdata_in[24]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[8]), .D(n101), .Z(n95) );
  NR2 U142 ( .A(load_unsigned_in), .B(n94), .Z(n112) );
  ND2 U143 ( .A(n112), .B(n110), .Z(n107) );
  ND2 U144 ( .A(n95), .B(n107), .Z(lu_output_out[8]) );
  AO2 U145 ( .A(ms_riscv32_mp_dmdata_in[25]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[9]), .D(n101), .Z(n96) );
  ND2 U146 ( .A(n96), .B(n107), .Z(lu_output_out[9]) );
  AO2 U147 ( .A(ms_riscv32_mp_dmdata_in[26]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[10]), .D(n101), .Z(n97) );
  ND2 U148 ( .A(n97), .B(n107), .Z(lu_output_out[10]) );
  AO2 U149 ( .A(ms_riscv32_mp_dmdata_in[27]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[11]), .D(n101), .Z(n98) );
  ND2 U150 ( .A(n98), .B(n107), .Z(lu_output_out[11]) );
  AO2 U151 ( .A(ms_riscv32_mp_dmdata_in[28]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[12]), .D(n101), .Z(n99) );
  ND2 U152 ( .A(n99), .B(n107), .Z(lu_output_out[12]) );
  AO2 U153 ( .A(ms_riscv32_mp_dmdata_in[29]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[13]), .D(n101), .Z(n100) );
  ND2 U154 ( .A(n100), .B(n107), .Z(lu_output_out[13]) );
  AO2 U155 ( .A(ms_riscv32_mp_dmdata_in[30]), .B(n102), .C(
        ms_riscv32_mp_dmdata_in[14]), .D(n101), .Z(n103) );
  ND2 U156 ( .A(n103), .B(n107), .Z(lu_output_out[14]) );
  NR2 U157 ( .A(load_size_in[1]), .B(n104), .Z(n105) );
  ND2 U158 ( .A(load_size_in[0]), .B(n105), .Z(n109) );
  NR2 U159 ( .A(ahb_resp_in), .B(n106), .Z(n128) );
  ND2 U160 ( .A(ms_riscv32_mp_dmdata_in[15]), .B(n128), .Z(n108) );
  AO3 U161 ( .A(ahb_resp_in), .B(n109), .C(n108), .D(n107), .Z(
        lu_output_out[15]) );
  NR2 U162 ( .A(n109), .B(load_unsigned_in), .Z(n111) );
  AO7 U163 ( .A(n112), .B(n111), .C(n110), .Z(n130) );
  ND2 U164 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[16]), .Z(n113) );
  ND2 U165 ( .A(n130), .B(n113), .Z(lu_output_out[16]) );
  ND2 U166 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[17]), .Z(n114) );
  ND2 U167 ( .A(n130), .B(n114), .Z(lu_output_out[17]) );
  ND2 U168 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[18]), .Z(n115) );
  ND2 U169 ( .A(n130), .B(n115), .Z(lu_output_out[18]) );
  ND2 U170 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[19]), .Z(n116) );
  ND2 U171 ( .A(n130), .B(n116), .Z(lu_output_out[19]) );
  ND2 U172 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[20]), .Z(n117) );
  ND2 U173 ( .A(n130), .B(n117), .Z(lu_output_out[20]) );
  ND2 U174 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[21]), .Z(n118) );
  ND2 U175 ( .A(n130), .B(n118), .Z(lu_output_out[21]) );
  ND2 U176 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[22]), .Z(n119) );
  ND2 U177 ( .A(n130), .B(n119), .Z(lu_output_out[22]) );
  ND2 U178 ( .A(ms_riscv32_mp_dmdata_in[23]), .B(n128), .Z(n120) );
  ND2 U179 ( .A(n130), .B(n120), .Z(lu_output_out[23]) );
  ND2 U180 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[24]), .Z(n121) );
  ND2 U181 ( .A(n130), .B(n121), .Z(lu_output_out[24]) );
  ND2 U182 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[25]), .Z(n122) );
  ND2 U183 ( .A(n130), .B(n122), .Z(lu_output_out[25]) );
  ND2 U184 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[26]), .Z(n123) );
  ND2 U185 ( .A(n130), .B(n123), .Z(lu_output_out[26]) );
  ND2 U186 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[27]), .Z(n124) );
  ND2 U187 ( .A(n130), .B(n124), .Z(lu_output_out[27]) );
  ND2 U188 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[28]), .Z(n125) );
  ND2 U189 ( .A(n130), .B(n125), .Z(lu_output_out[28]) );
  ND2 U190 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[29]), .Z(n126) );
  ND2 U191 ( .A(n130), .B(n126), .Z(lu_output_out[29]) );
  ND2 U192 ( .A(n128), .B(ms_riscv32_mp_dmdata_in[30]), .Z(n127) );
  ND2 U193 ( .A(n130), .B(n127), .Z(lu_output_out[30]) );
  ND2 U194 ( .A(ms_riscv32_mp_dmdata_in[31]), .B(n128), .Z(n129) );
  ND2 U195 ( .A(n130), .B(n129), .Z(lu_output_out[31]) );
endmodule

