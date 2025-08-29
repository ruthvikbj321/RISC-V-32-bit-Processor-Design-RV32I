/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:39 2025
/////////////////////////////////////////////////////////////


module misa_and_pre_data ( csr_op_2_in, csr_uimm_in, csr_data_in, misa_out, 
        pre_data_out );
  input [4:0] csr_uimm_in;
  input [31:0] csr_data_in;
  output [31:0] misa_out;
  output [31:0] pre_data_out;
  input csr_op_2_in;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  assign misa_out[8] = 1'b1;
  assign misa_out[30] = 1'b1;
  assign misa_out[0] = 1'b0;
  assign misa_out[1] = 1'b0;
  assign misa_out[2] = 1'b0;
  assign misa_out[3] = 1'b0;
  assign misa_out[4] = 1'b0;
  assign misa_out[5] = 1'b0;
  assign misa_out[6] = 1'b0;
  assign misa_out[7] = 1'b0;
  assign misa_out[9] = 1'b0;
  assign misa_out[10] = 1'b0;
  assign misa_out[11] = 1'b0;
  assign misa_out[12] = 1'b0;
  assign misa_out[13] = 1'b0;
  assign misa_out[14] = 1'b0;
  assign misa_out[15] = 1'b0;
  assign misa_out[16] = 1'b0;
  assign misa_out[17] = 1'b0;
  assign misa_out[18] = 1'b0;
  assign misa_out[19] = 1'b0;
  assign misa_out[20] = 1'b0;
  assign misa_out[21] = 1'b0;
  assign misa_out[22] = 1'b0;
  assign misa_out[23] = 1'b0;
  assign misa_out[24] = 1'b0;
  assign misa_out[25] = 1'b0;
  assign misa_out[26] = 1'b0;
  assign misa_out[27] = 1'b0;
  assign misa_out[28] = 1'b0;
  assign misa_out[29] = 1'b0;
  assign misa_out[31] = 1'b0;

  IVP U49 ( .A(csr_op_2_in), .Z(n22) );
  ND2 U50 ( .A(csr_data_in[0]), .B(n22), .Z(n13) );
  ND2 U51 ( .A(csr_op_2_in), .B(csr_uimm_in[0]), .Z(n12) );
  ND2 U52 ( .A(n13), .B(n12), .Z(pre_data_out[0]) );
  ND2 U53 ( .A(csr_data_in[1]), .B(n22), .Z(n15) );
  ND2 U54 ( .A(csr_op_2_in), .B(csr_uimm_in[1]), .Z(n14) );
  ND2 U55 ( .A(n15), .B(n14), .Z(pre_data_out[1]) );
  ND2 U56 ( .A(csr_data_in[2]), .B(n22), .Z(n17) );
  ND2 U57 ( .A(csr_op_2_in), .B(csr_uimm_in[2]), .Z(n16) );
  ND2 U58 ( .A(n17), .B(n16), .Z(pre_data_out[2]) );
  ND2 U59 ( .A(csr_data_in[3]), .B(n22), .Z(n19) );
  ND2 U60 ( .A(csr_op_2_in), .B(csr_uimm_in[3]), .Z(n18) );
  ND2 U61 ( .A(n19), .B(n18), .Z(pre_data_out[3]) );
  ND2 U62 ( .A(csr_data_in[4]), .B(n22), .Z(n21) );
  ND2 U63 ( .A(csr_op_2_in), .B(csr_uimm_in[4]), .Z(n20) );
  ND2 U64 ( .A(n21), .B(n20), .Z(pre_data_out[4]) );
  AN2P U65 ( .A(csr_data_in[5]), .B(n22), .Z(pre_data_out[5]) );
  AN2P U66 ( .A(csr_data_in[6]), .B(n22), .Z(pre_data_out[6]) );
  AN2P U67 ( .A(csr_data_in[7]), .B(n22), .Z(pre_data_out[7]) );
  AN2P U68 ( .A(csr_data_in[8]), .B(n22), .Z(pre_data_out[8]) );
  AN2P U69 ( .A(csr_data_in[9]), .B(n22), .Z(pre_data_out[9]) );
  AN2P U70 ( .A(csr_data_in[10]), .B(n22), .Z(pre_data_out[10]) );
  AN2P U71 ( .A(csr_data_in[11]), .B(n22), .Z(pre_data_out[11]) );
  AN2P U72 ( .A(csr_data_in[12]), .B(n22), .Z(pre_data_out[12]) );
  AN2P U73 ( .A(csr_data_in[13]), .B(n22), .Z(pre_data_out[13]) );
  AN2P U74 ( .A(csr_data_in[14]), .B(n22), .Z(pre_data_out[14]) );
  AN2P U75 ( .A(csr_data_in[15]), .B(n22), .Z(pre_data_out[15]) );
  AN2P U76 ( .A(csr_data_in[16]), .B(n22), .Z(pre_data_out[16]) );
  AN2P U77 ( .A(csr_data_in[17]), .B(n22), .Z(pre_data_out[17]) );
  AN2P U78 ( .A(csr_data_in[18]), .B(n22), .Z(pre_data_out[18]) );
  AN2P U79 ( .A(csr_data_in[19]), .B(n22), .Z(pre_data_out[19]) );
  AN2P U80 ( .A(csr_data_in[20]), .B(n22), .Z(pre_data_out[20]) );
  AN2P U81 ( .A(csr_data_in[21]), .B(n22), .Z(pre_data_out[21]) );
  AN2P U82 ( .A(csr_data_in[22]), .B(n22), .Z(pre_data_out[22]) );
  AN2P U83 ( .A(csr_data_in[23]), .B(n22), .Z(pre_data_out[23]) );
  AN2P U84 ( .A(csr_data_in[24]), .B(n22), .Z(pre_data_out[24]) );
  AN2P U85 ( .A(csr_data_in[25]), .B(n22), .Z(pre_data_out[25]) );
  AN2P U86 ( .A(csr_data_in[26]), .B(n22), .Z(pre_data_out[26]) );
  AN2P U87 ( .A(csr_data_in[27]), .B(n22), .Z(pre_data_out[27]) );
  AN2P U88 ( .A(csr_data_in[28]), .B(n22), .Z(pre_data_out[28]) );
  AN2P U89 ( .A(csr_data_in[29]), .B(n22), .Z(pre_data_out[29]) );
  AN2P U90 ( .A(csr_data_in[30]), .B(n22), .Z(pre_data_out[30]) );
  AN2P U91 ( .A(csr_data_in[31]), .B(n22), .Z(pre_data_out[31]) );
endmodule

