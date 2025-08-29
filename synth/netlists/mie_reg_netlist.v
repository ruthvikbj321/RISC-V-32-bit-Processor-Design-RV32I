/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:50 2025
/////////////////////////////////////////////////////////////


module mie_reg ( clk_in, rst_in, wr_en_in, data_wr_11_in, data_wr_7_in, 
        data_wr_3_in, csr_addr_in, meie_out, mtie_out, msie_out, mie_reg_out
 );
  input [11:0] csr_addr_in;
  output [31:0] mie_reg_out;
  input clk_in, rst_in, wr_en_in, data_wr_11_in, data_wr_7_in, data_wr_3_in;
  output meie_out, mtie_out, msie_out;
  wire   \mie_reg_out[11] , mie_reg_out_7, mie_reg_out_3, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  assign mie_reg_out[0] = 1'b0;
  assign mie_reg_out[1] = 1'b0;
  assign mie_reg_out[2] = 1'b0;
  assign mie_reg_out[4] = 1'b0;
  assign mie_reg_out[5] = 1'b0;
  assign mie_reg_out[6] = 1'b0;
  assign mie_reg_out[8] = 1'b0;
  assign mie_reg_out[9] = 1'b0;
  assign mie_reg_out[10] = 1'b0;
  assign mie_reg_out[12] = 1'b0;
  assign mie_reg_out[13] = 1'b0;
  assign mie_reg_out[14] = 1'b0;
  assign mie_reg_out[15] = 1'b0;
  assign mie_reg_out[16] = 1'b0;
  assign mie_reg_out[17] = 1'b0;
  assign mie_reg_out[18] = 1'b0;
  assign mie_reg_out[19] = 1'b0;
  assign mie_reg_out[20] = 1'b0;
  assign mie_reg_out[21] = 1'b0;
  assign mie_reg_out[22] = 1'b0;
  assign mie_reg_out[23] = 1'b0;
  assign mie_reg_out[24] = 1'b0;
  assign mie_reg_out[25] = 1'b0;
  assign mie_reg_out[26] = 1'b0;
  assign mie_reg_out[27] = 1'b0;
  assign mie_reg_out[28] = 1'b0;
  assign mie_reg_out[29] = 1'b0;
  assign mie_reg_out[30] = 1'b0;
  assign mie_reg_out[31] = 1'b0;
  assign mie_reg_out[11] = \mie_reg_out[11] ;
  assign meie_out = \mie_reg_out[11] ;
  assign mie_reg_out[7] = mie_reg_out_7;
  assign mtie_out = mie_reg_out_7;
  assign mie_reg_out[3] = mie_reg_out_3;
  assign msie_out = mie_reg_out_3;

  FD1 msie_reg ( .D(n15), .CP(clk_in), .Q(mie_reg_out_3) );
  FD1 meie_reg ( .D(n14), .CP(clk_in), .Q(\mie_reg_out[11] ) );
  FD1 mtie_reg ( .D(n13), .CP(clk_in), .Q(mie_reg_out_7) );
  ND2 U20 ( .A(wr_en_in), .B(csr_addr_in[2]), .Z(n19) );
  NR4 U21 ( .A(rst_in), .B(csr_addr_in[6]), .C(csr_addr_in[0]), .D(
        csr_addr_in[1]), .Z(n17) );
  NR4 U22 ( .A(csr_addr_in[4]), .B(csr_addr_in[3]), .C(csr_addr_in[5]), .D(
        csr_addr_in[11]), .Z(n16) );
  ND4 U23 ( .A(csr_addr_in[8]), .B(csr_addr_in[9]), .C(n17), .D(n16), .Z(n18)
         );
  NR4 U24 ( .A(csr_addr_in[7]), .B(csr_addr_in[10]), .C(n19), .D(n18), .Z(n25)
         );
  NR2 U25 ( .A(rst_in), .B(n25), .Z(n24) );
  ND2 U26 ( .A(mie_reg_out_3), .B(n24), .Z(n21) );
  ND2 U27 ( .A(data_wr_3_in), .B(n25), .Z(n20) );
  ND2 U28 ( .A(n21), .B(n20), .Z(n15) );
  ND2 U29 ( .A(\mie_reg_out[11] ), .B(n24), .Z(n23) );
  ND2 U30 ( .A(data_wr_11_in), .B(n25), .Z(n22) );
  ND2 U31 ( .A(n23), .B(n22), .Z(n14) );
  ND2 U32 ( .A(mie_reg_out_7), .B(n24), .Z(n27) );
  ND2 U33 ( .A(data_wr_7_in), .B(n25), .Z(n26) );
  ND2 U34 ( .A(n27), .B(n26), .Z(n13) );
endmodule

