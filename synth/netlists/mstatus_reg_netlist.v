/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:58 2025
/////////////////////////////////////////////////////////////


module mstatus_reg ( clk_in, rst_in, wr_en_in, data_wr_3_in, data_wr_7_in, 
        mie_clear_in, mie_set_in, csr_addr_in, mstatus_out, mie_out );
  input [11:0] csr_addr_in;
  output [31:0] mstatus_out;
  input clk_in, rst_in, wr_en_in, data_wr_3_in, data_wr_7_in, mie_clear_in,
         mie_set_in;
  output mie_out;
  wire   mstatus_out_3, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31;
  assign mstatus_out[0] = 1'b0;
  assign mstatus_out[1] = 1'b0;
  assign mstatus_out[2] = 1'b0;
  assign mstatus_out[4] = 1'b0;
  assign mstatus_out[5] = 1'b0;
  assign mstatus_out[6] = 1'b0;
  assign mstatus_out[8] = 1'b0;
  assign mstatus_out[9] = 1'b0;
  assign mstatus_out[10] = 1'b0;
  assign mstatus_out[13] = 1'b0;
  assign mstatus_out[14] = 1'b0;
  assign mstatus_out[15] = 1'b0;
  assign mstatus_out[16] = 1'b0;
  assign mstatus_out[17] = 1'b0;
  assign mstatus_out[18] = 1'b0;
  assign mstatus_out[19] = 1'b0;
  assign mstatus_out[20] = 1'b0;
  assign mstatus_out[21] = 1'b0;
  assign mstatus_out[22] = 1'b0;
  assign mstatus_out[23] = 1'b0;
  assign mstatus_out[24] = 1'b0;
  assign mstatus_out[25] = 1'b0;
  assign mstatus_out[26] = 1'b0;
  assign mstatus_out[27] = 1'b0;
  assign mstatus_out[28] = 1'b0;
  assign mstatus_out[29] = 1'b0;
  assign mstatus_out[30] = 1'b0;
  assign mstatus_out[31] = 1'b0;
  assign mie_out = mstatus_out_3;
  assign mstatus_out[3] = mstatus_out_3;
  assign mstatus_out[11] = 1'b1;
  assign mstatus_out[12] = 1'b1;

  FD1 mie_out_reg ( .D(n16), .CP(clk_in), .Q(mstatus_out_3) );
  FD1 mpie_out_reg ( .D(n14), .CP(clk_in), .Q(mstatus_out[7]), .QN(n31) );
  ND2 U21 ( .A(mie_set_in), .B(n31), .Z(n17) );
  IVP U22 ( .A(mie_clear_in), .Z(n24) );
  AO3 U23 ( .A(mstatus_out_3), .B(mie_set_in), .C(n17), .D(n24), .Z(n23) );
  NR4 U24 ( .A(csr_addr_in[0]), .B(csr_addr_in[4]), .C(csr_addr_in[5]), .D(
        csr_addr_in[3]), .Z(n21) );
  NR4 U25 ( .A(csr_addr_in[6]), .B(csr_addr_in[11]), .C(csr_addr_in[1]), .D(
        csr_addr_in[10]), .Z(n18) );
  ND2 U26 ( .A(n18), .B(csr_addr_in[8]), .Z(n19) );
  NR3 U27 ( .A(csr_addr_in[2]), .B(csr_addr_in[7]), .C(n19), .Z(n20) );
  ND4 U28 ( .A(wr_en_in), .B(csr_addr_in[9]), .C(n21), .D(n20), .Z(n26) );
  NR2 U29 ( .A(data_wr_3_in), .B(n26), .Z(n22) );
  AO1P U30 ( .A(n23), .B(n26), .C(rst_in), .D(n22), .Z(n16) );
  IVP U32 ( .A(n26), .Z(n28) );
  NR2 U33 ( .A(mstatus_out[7]), .B(mie_set_in), .Z(n25) );
  EO1 U34 ( .A(n25), .B(n24), .C(n24), .D(mstatus_out_3), .Z(n27) );
  AO2 U35 ( .A(n28), .B(data_wr_7_in), .C(n27), .D(n26), .Z(n30) );
  IVP U36 ( .A(rst_in), .Z(n29) );
  ND2 U37 ( .A(n30), .B(n29), .Z(n14) );
endmodule

