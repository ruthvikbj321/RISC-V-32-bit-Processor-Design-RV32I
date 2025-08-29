/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:24:01 2025
/////////////////////////////////////////////////////////////


module msrv32_immediate_adder ( pc_in, rs_1_in, iadder_src_in, imm_in, 
        iadder_out );
  input [31:0] pc_in;
  input [31:0] rs_1_in;
  input [31:0] imm_in;
  output [31:0] iadder_out;
  input iadder_src_in;
  wire   \DP_OP_10J3_122_3765/n131 , \DP_OP_10J3_122_3765/n130 ,
         \DP_OP_10J3_122_3765/n129 , \DP_OP_10J3_122_3765/n128 ,
         \DP_OP_10J3_122_3765/n127 , \DP_OP_10J3_122_3765/n126 ,
         \DP_OP_10J3_122_3765/n125 , \DP_OP_10J3_122_3765/n124 ,
         \DP_OP_10J3_122_3765/n123 , \DP_OP_10J3_122_3765/n122 ,
         \DP_OP_10J3_122_3765/n121 , \DP_OP_10J3_122_3765/n120 ,
         \DP_OP_10J3_122_3765/n119 , \DP_OP_10J3_122_3765/n118 ,
         \DP_OP_10J3_122_3765/n117 , \DP_OP_10J3_122_3765/n116 ,
         \DP_OP_10J3_122_3765/n115 , \DP_OP_10J3_122_3765/n114 ,
         \DP_OP_10J3_122_3765/n113 , \DP_OP_10J3_122_3765/n112 ,
         \DP_OP_10J3_122_3765/n111 , \DP_OP_10J3_122_3765/n110 ,
         \DP_OP_10J3_122_3765/n109 , \DP_OP_10J3_122_3765/n108 ,
         \DP_OP_10J3_122_3765/n107 , \DP_OP_10J3_122_3765/n106 ,
         \DP_OP_10J3_122_3765/n105 , \DP_OP_10J3_122_3765/n104 ,
         \DP_OP_10J3_122_3765/n103 , \DP_OP_10J3_122_3765/n102 ,
         \DP_OP_10J3_122_3765/n101 , \DP_OP_10J3_122_3765/n32 ,
         \DP_OP_10J3_122_3765/n31 , \DP_OP_10J3_122_3765/n30 ,
         \DP_OP_10J3_122_3765/n29 , \DP_OP_10J3_122_3765/n28 ,
         \DP_OP_10J3_122_3765/n27 , \DP_OP_10J3_122_3765/n26 ,
         \DP_OP_10J3_122_3765/n25 , \DP_OP_10J3_122_3765/n24 ,
         \DP_OP_10J3_122_3765/n23 , \DP_OP_10J3_122_3765/n22 ,
         \DP_OP_10J3_122_3765/n21 , \DP_OP_10J3_122_3765/n20 ,
         \DP_OP_10J3_122_3765/n19 , \DP_OP_10J3_122_3765/n18 ,
         \DP_OP_10J3_122_3765/n17 , \DP_OP_10J3_122_3765/n16 ,
         \DP_OP_10J3_122_3765/n15 , \DP_OP_10J3_122_3765/n14 ,
         \DP_OP_10J3_122_3765/n13 , \DP_OP_10J3_122_3765/n12 ,
         \DP_OP_10J3_122_3765/n11 , \DP_OP_10J3_122_3765/n10 ,
         \DP_OP_10J3_122_3765/n9 , \DP_OP_10J3_122_3765/n8 ,
         \DP_OP_10J3_122_3765/n7 , \DP_OP_10J3_122_3765/n6 ,
         \DP_OP_10J3_122_3765/n5 , \DP_OP_10J3_122_3765/n4 ,
         \DP_OP_10J3_122_3765/n3 , \DP_OP_10J3_122_3765/n2 , n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36;

  HA1 \DP_OP_10J3_122_3765/U33  ( .A(\DP_OP_10J3_122_3765/n101 ), .B(imm_in[0]), .CO(\DP_OP_10J3_122_3765/n32 ), .S(iadder_out[0]) );
  FA1A \DP_OP_10J3_122_3765/U32  ( .A(\DP_OP_10J3_122_3765/n102 ), .B(
        imm_in[1]), .CI(\DP_OP_10J3_122_3765/n32 ), .CO(
        \DP_OP_10J3_122_3765/n31 ), .S(iadder_out[1]) );
  FA1A \DP_OP_10J3_122_3765/U31  ( .A(\DP_OP_10J3_122_3765/n103 ), .B(
        imm_in[2]), .CI(\DP_OP_10J3_122_3765/n31 ), .CO(
        \DP_OP_10J3_122_3765/n30 ), .S(iadder_out[2]) );
  FA1A \DP_OP_10J3_122_3765/U30  ( .A(\DP_OP_10J3_122_3765/n104 ), .B(
        imm_in[3]), .CI(\DP_OP_10J3_122_3765/n30 ), .CO(
        \DP_OP_10J3_122_3765/n29 ), .S(iadder_out[3]) );
  FA1A \DP_OP_10J3_122_3765/U29  ( .A(\DP_OP_10J3_122_3765/n105 ), .B(
        imm_in[4]), .CI(\DP_OP_10J3_122_3765/n29 ), .CO(
        \DP_OP_10J3_122_3765/n28 ), .S(iadder_out[4]) );
  FA1A \DP_OP_10J3_122_3765/U28  ( .A(\DP_OP_10J3_122_3765/n106 ), .B(
        imm_in[5]), .CI(\DP_OP_10J3_122_3765/n28 ), .CO(
        \DP_OP_10J3_122_3765/n27 ), .S(iadder_out[5]) );
  FA1A \DP_OP_10J3_122_3765/U27  ( .A(\DP_OP_10J3_122_3765/n107 ), .B(
        imm_in[6]), .CI(\DP_OP_10J3_122_3765/n27 ), .CO(
        \DP_OP_10J3_122_3765/n26 ), .S(iadder_out[6]) );
  FA1A \DP_OP_10J3_122_3765/U26  ( .A(\DP_OP_10J3_122_3765/n108 ), .B(
        imm_in[7]), .CI(\DP_OP_10J3_122_3765/n26 ), .CO(
        \DP_OP_10J3_122_3765/n25 ), .S(iadder_out[7]) );
  FA1A \DP_OP_10J3_122_3765/U25  ( .A(\DP_OP_10J3_122_3765/n109 ), .B(
        imm_in[8]), .CI(\DP_OP_10J3_122_3765/n25 ), .CO(
        \DP_OP_10J3_122_3765/n24 ), .S(iadder_out[8]) );
  FA1A \DP_OP_10J3_122_3765/U24  ( .A(\DP_OP_10J3_122_3765/n110 ), .B(
        imm_in[9]), .CI(\DP_OP_10J3_122_3765/n24 ), .CO(
        \DP_OP_10J3_122_3765/n23 ), .S(iadder_out[9]) );
  FA1A \DP_OP_10J3_122_3765/U23  ( .A(\DP_OP_10J3_122_3765/n111 ), .B(
        imm_in[10]), .CI(\DP_OP_10J3_122_3765/n23 ), .CO(
        \DP_OP_10J3_122_3765/n22 ), .S(iadder_out[10]) );
  FA1A \DP_OP_10J3_122_3765/U22  ( .A(\DP_OP_10J3_122_3765/n112 ), .B(
        imm_in[11]), .CI(\DP_OP_10J3_122_3765/n22 ), .CO(
        \DP_OP_10J3_122_3765/n21 ), .S(iadder_out[11]) );
  FA1A \DP_OP_10J3_122_3765/U21  ( .A(\DP_OP_10J3_122_3765/n113 ), .B(
        imm_in[12]), .CI(\DP_OP_10J3_122_3765/n21 ), .CO(
        \DP_OP_10J3_122_3765/n20 ), .S(iadder_out[12]) );
  FA1A \DP_OP_10J3_122_3765/U20  ( .A(\DP_OP_10J3_122_3765/n114 ), .B(
        imm_in[13]), .CI(\DP_OP_10J3_122_3765/n20 ), .CO(
        \DP_OP_10J3_122_3765/n19 ), .S(iadder_out[13]) );
  FA1A \DP_OP_10J3_122_3765/U19  ( .A(\DP_OP_10J3_122_3765/n115 ), .B(
        imm_in[14]), .CI(\DP_OP_10J3_122_3765/n19 ), .CO(
        \DP_OP_10J3_122_3765/n18 ), .S(iadder_out[14]) );
  FA1A \DP_OP_10J3_122_3765/U18  ( .A(\DP_OP_10J3_122_3765/n116 ), .B(
        imm_in[15]), .CI(\DP_OP_10J3_122_3765/n18 ), .CO(
        \DP_OP_10J3_122_3765/n17 ), .S(iadder_out[15]) );
  FA1A \DP_OP_10J3_122_3765/U17  ( .A(\DP_OP_10J3_122_3765/n117 ), .B(
        imm_in[16]), .CI(\DP_OP_10J3_122_3765/n17 ), .CO(
        \DP_OP_10J3_122_3765/n16 ), .S(iadder_out[16]) );
  FA1A \DP_OP_10J3_122_3765/U16  ( .A(\DP_OP_10J3_122_3765/n118 ), .B(
        imm_in[17]), .CI(\DP_OP_10J3_122_3765/n16 ), .CO(
        \DP_OP_10J3_122_3765/n15 ), .S(iadder_out[17]) );
  FA1A \DP_OP_10J3_122_3765/U15  ( .A(\DP_OP_10J3_122_3765/n119 ), .B(
        imm_in[18]), .CI(\DP_OP_10J3_122_3765/n15 ), .CO(
        \DP_OP_10J3_122_3765/n14 ), .S(iadder_out[18]) );
  FA1A \DP_OP_10J3_122_3765/U14  ( .A(\DP_OP_10J3_122_3765/n120 ), .B(
        imm_in[19]), .CI(\DP_OP_10J3_122_3765/n14 ), .CO(
        \DP_OP_10J3_122_3765/n13 ), .S(iadder_out[19]) );
  FA1A \DP_OP_10J3_122_3765/U13  ( .A(\DP_OP_10J3_122_3765/n121 ), .B(
        imm_in[20]), .CI(\DP_OP_10J3_122_3765/n13 ), .CO(
        \DP_OP_10J3_122_3765/n12 ), .S(iadder_out[20]) );
  FA1A \DP_OP_10J3_122_3765/U12  ( .A(\DP_OP_10J3_122_3765/n122 ), .B(
        imm_in[21]), .CI(\DP_OP_10J3_122_3765/n12 ), .CO(
        \DP_OP_10J3_122_3765/n11 ), .S(iadder_out[21]) );
  FA1A \DP_OP_10J3_122_3765/U11  ( .A(\DP_OP_10J3_122_3765/n123 ), .B(
        imm_in[22]), .CI(\DP_OP_10J3_122_3765/n11 ), .CO(
        \DP_OP_10J3_122_3765/n10 ), .S(iadder_out[22]) );
  FA1A \DP_OP_10J3_122_3765/U10  ( .A(\DP_OP_10J3_122_3765/n124 ), .B(
        imm_in[23]), .CI(\DP_OP_10J3_122_3765/n10 ), .CO(
        \DP_OP_10J3_122_3765/n9 ), .S(iadder_out[23]) );
  FA1A \DP_OP_10J3_122_3765/U9  ( .A(\DP_OP_10J3_122_3765/n125 ), .B(
        imm_in[24]), .CI(\DP_OP_10J3_122_3765/n9 ), .CO(
        \DP_OP_10J3_122_3765/n8 ), .S(iadder_out[24]) );
  FA1A \DP_OP_10J3_122_3765/U8  ( .A(\DP_OP_10J3_122_3765/n126 ), .B(
        imm_in[25]), .CI(\DP_OP_10J3_122_3765/n8 ), .CO(
        \DP_OP_10J3_122_3765/n7 ), .S(iadder_out[25]) );
  FA1A \DP_OP_10J3_122_3765/U7  ( .A(\DP_OP_10J3_122_3765/n127 ), .B(
        imm_in[26]), .CI(\DP_OP_10J3_122_3765/n7 ), .CO(
        \DP_OP_10J3_122_3765/n6 ), .S(iadder_out[26]) );
  FA1A \DP_OP_10J3_122_3765/U6  ( .A(\DP_OP_10J3_122_3765/n128 ), .B(
        imm_in[27]), .CI(\DP_OP_10J3_122_3765/n6 ), .CO(
        \DP_OP_10J3_122_3765/n5 ), .S(iadder_out[27]) );
  FA1A \DP_OP_10J3_122_3765/U5  ( .A(\DP_OP_10J3_122_3765/n129 ), .B(
        imm_in[28]), .CI(\DP_OP_10J3_122_3765/n5 ), .CO(
        \DP_OP_10J3_122_3765/n4 ), .S(iadder_out[28]) );
  FA1A \DP_OP_10J3_122_3765/U4  ( .A(\DP_OP_10J3_122_3765/n130 ), .B(
        imm_in[29]), .CI(\DP_OP_10J3_122_3765/n4 ), .CO(
        \DP_OP_10J3_122_3765/n3 ), .S(iadder_out[29]) );
  FA1A \DP_OP_10J3_122_3765/U3  ( .A(\DP_OP_10J3_122_3765/n131 ), .B(
        imm_in[30]), .CI(\DP_OP_10J3_122_3765/n3 ), .CO(
        \DP_OP_10J3_122_3765/n2 ), .S(iadder_out[30]) );
  IVP U2 ( .A(iadder_src_in), .Z(n24) );
  AO2 U3 ( .A(rs_1_in[16]), .B(iadder_src_in), .C(pc_in[16]), .D(n24), .Z(n2)
         );
  IVP U4 ( .A(n2), .Z(\DP_OP_10J3_122_3765/n117 ) );
  AO2 U5 ( .A(rs_1_in[17]), .B(iadder_src_in), .C(pc_in[17]), .D(n24), .Z(n3)
         );
  IVP U6 ( .A(n3), .Z(\DP_OP_10J3_122_3765/n118 ) );
  AO2 U7 ( .A(rs_1_in[18]), .B(iadder_src_in), .C(pc_in[18]), .D(n24), .Z(n4)
         );
  IVP U8 ( .A(n4), .Z(\DP_OP_10J3_122_3765/n119 ) );
  AO2 U9 ( .A(rs_1_in[19]), .B(iadder_src_in), .C(pc_in[19]), .D(n24), .Z(n5)
         );
  IVP U10 ( .A(n5), .Z(\DP_OP_10J3_122_3765/n120 ) );
  AO2 U11 ( .A(rs_1_in[20]), .B(iadder_src_in), .C(pc_in[20]), .D(n24), .Z(n6)
         );
  IVP U12 ( .A(n6), .Z(\DP_OP_10J3_122_3765/n121 ) );
  AO2 U13 ( .A(rs_1_in[21]), .B(iadder_src_in), .C(pc_in[21]), .D(n24), .Z(n7)
         );
  IVP U14 ( .A(n7), .Z(\DP_OP_10J3_122_3765/n122 ) );
  AO2 U15 ( .A(rs_1_in[22]), .B(iadder_src_in), .C(pc_in[22]), .D(n24), .Z(n8)
         );
  IVP U16 ( .A(n8), .Z(\DP_OP_10J3_122_3765/n123 ) );
  AO2 U17 ( .A(rs_1_in[23]), .B(iadder_src_in), .C(pc_in[23]), .D(n24), .Z(n9)
         );
  IVP U18 ( .A(n9), .Z(\DP_OP_10J3_122_3765/n124 ) );
  AO2 U19 ( .A(rs_1_in[24]), .B(iadder_src_in), .C(pc_in[24]), .D(n24), .Z(n10) );
  IVP U20 ( .A(n10), .Z(\DP_OP_10J3_122_3765/n125 ) );
  AO2 U21 ( .A(rs_1_in[25]), .B(iadder_src_in), .C(pc_in[25]), .D(n24), .Z(n11) );
  IVP U22 ( .A(n11), .Z(\DP_OP_10J3_122_3765/n126 ) );
  AO2 U23 ( .A(rs_1_in[26]), .B(iadder_src_in), .C(pc_in[26]), .D(n24), .Z(n12) );
  IVP U24 ( .A(n12), .Z(\DP_OP_10J3_122_3765/n127 ) );
  AO2 U25 ( .A(rs_1_in[27]), .B(iadder_src_in), .C(pc_in[27]), .D(n24), .Z(n13) );
  IVP U26 ( .A(n13), .Z(\DP_OP_10J3_122_3765/n128 ) );
  AO2 U27 ( .A(rs_1_in[28]), .B(iadder_src_in), .C(pc_in[28]), .D(n24), .Z(n14) );
  IVP U28 ( .A(n14), .Z(\DP_OP_10J3_122_3765/n129 ) );
  AO2 U29 ( .A(rs_1_in[29]), .B(iadder_src_in), .C(pc_in[29]), .D(n24), .Z(n15) );
  IVP U30 ( .A(n15), .Z(\DP_OP_10J3_122_3765/n130 ) );
  AO2 U31 ( .A(rs_1_in[30]), .B(iadder_src_in), .C(pc_in[30]), .D(n24), .Z(n16) );
  IVP U32 ( .A(n16), .Z(\DP_OP_10J3_122_3765/n131 ) );
  AO2 U33 ( .A(rs_1_in[15]), .B(iadder_src_in), .C(pc_in[15]), .D(n24), .Z(n17) );
  IVP U34 ( .A(n17), .Z(\DP_OP_10J3_122_3765/n116 ) );
  AO2 U35 ( .A(rs_1_in[14]), .B(iadder_src_in), .C(pc_in[14]), .D(n24), .Z(n18) );
  IVP U36 ( .A(n18), .Z(\DP_OP_10J3_122_3765/n115 ) );
  AO2 U37 ( .A(rs_1_in[13]), .B(iadder_src_in), .C(pc_in[13]), .D(n24), .Z(n19) );
  IVP U38 ( .A(n19), .Z(\DP_OP_10J3_122_3765/n114 ) );
  AO2 U39 ( .A(rs_1_in[12]), .B(iadder_src_in), .C(pc_in[12]), .D(n24), .Z(n20) );
  IVP U40 ( .A(n20), .Z(\DP_OP_10J3_122_3765/n113 ) );
  AO2 U41 ( .A(rs_1_in[11]), .B(iadder_src_in), .C(pc_in[11]), .D(n24), .Z(n21) );
  IVP U42 ( .A(n21), .Z(\DP_OP_10J3_122_3765/n112 ) );
  AO2 U43 ( .A(rs_1_in[10]), .B(iadder_src_in), .C(pc_in[10]), .D(n24), .Z(n22) );
  IVP U44 ( .A(n22), .Z(\DP_OP_10J3_122_3765/n111 ) );
  AO2 U45 ( .A(rs_1_in[9]), .B(iadder_src_in), .C(pc_in[9]), .D(n24), .Z(n23)
         );
  IVP U46 ( .A(n23), .Z(\DP_OP_10J3_122_3765/n110 ) );
  AO2 U47 ( .A(rs_1_in[8]), .B(iadder_src_in), .C(pc_in[8]), .D(n24), .Z(n25)
         );
  IVP U48 ( .A(n25), .Z(\DP_OP_10J3_122_3765/n109 ) );
  AO2 U49 ( .A(rs_1_in[7]), .B(iadder_src_in), .C(pc_in[7]), .D(n24), .Z(n26)
         );
  IVP U50 ( .A(n26), .Z(\DP_OP_10J3_122_3765/n108 ) );
  AO2 U51 ( .A(rs_1_in[6]), .B(iadder_src_in), .C(pc_in[6]), .D(n24), .Z(n27)
         );
  IVP U52 ( .A(n27), .Z(\DP_OP_10J3_122_3765/n107 ) );
  AO2 U53 ( .A(rs_1_in[5]), .B(iadder_src_in), .C(pc_in[5]), .D(n24), .Z(n28)
         );
  IVP U54 ( .A(n28), .Z(\DP_OP_10J3_122_3765/n106 ) );
  AO2 U55 ( .A(rs_1_in[4]), .B(iadder_src_in), .C(pc_in[4]), .D(n24), .Z(n29)
         );
  IVP U56 ( .A(n29), .Z(\DP_OP_10J3_122_3765/n105 ) );
  AO2 U57 ( .A(rs_1_in[3]), .B(iadder_src_in), .C(pc_in[3]), .D(n24), .Z(n30)
         );
  IVP U58 ( .A(n30), .Z(\DP_OP_10J3_122_3765/n104 ) );
  AO2 U59 ( .A(rs_1_in[2]), .B(iadder_src_in), .C(pc_in[2]), .D(n24), .Z(n31)
         );
  IVP U60 ( .A(n31), .Z(\DP_OP_10J3_122_3765/n103 ) );
  AO2 U61 ( .A(rs_1_in[0]), .B(iadder_src_in), .C(pc_in[0]), .D(n24), .Z(n32)
         );
  IVP U62 ( .A(n32), .Z(\DP_OP_10J3_122_3765/n101 ) );
  AO2 U63 ( .A(rs_1_in[1]), .B(iadder_src_in), .C(pc_in[1]), .D(n24), .Z(n33)
         );
  IVP U64 ( .A(n33), .Z(\DP_OP_10J3_122_3765/n102 ) );
  AO2 U65 ( .A(rs_1_in[31]), .B(iadder_src_in), .C(pc_in[31]), .D(n24), .Z(n34) );
  IVP U66 ( .A(n34), .Z(n35) );
  EO U67 ( .A(n35), .B(imm_in[31]), .Z(n36) );
  EO U68 ( .A(\DP_OP_10J3_122_3765/n2 ), .B(n36), .Z(iadder_out[31]) );
endmodule

