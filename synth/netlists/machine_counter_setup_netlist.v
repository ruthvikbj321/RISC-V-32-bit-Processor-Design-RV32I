/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:48 2025
/////////////////////////////////////////////////////////////


module machine_counter_setup ( clk_in, rst_in, wr_en_in, data_wr_2_in, 
        data_wr_0_in, csr_addr_in, mcountinhibit_cy_out, mcountinhibit_ir_out, 
        mcountinhibit_out );
  input [11:0] csr_addr_in;
  output [31:0] mcountinhibit_out;
  input clk_in, rst_in, wr_en_in, data_wr_2_in, data_wr_0_in;
  output mcountinhibit_cy_out, mcountinhibit_ir_out;
  wire   \mcountinhibit_out[2] , mcountinhibit_out_0, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
  assign mcountinhibit_out[1] = 1'b0;
  assign mcountinhibit_out[3] = 1'b0;
  assign mcountinhibit_out[4] = 1'b0;
  assign mcountinhibit_out[5] = 1'b0;
  assign mcountinhibit_out[6] = 1'b0;
  assign mcountinhibit_out[7] = 1'b0;
  assign mcountinhibit_out[8] = 1'b0;
  assign mcountinhibit_out[9] = 1'b0;
  assign mcountinhibit_out[10] = 1'b0;
  assign mcountinhibit_out[11] = 1'b0;
  assign mcountinhibit_out[12] = 1'b0;
  assign mcountinhibit_out[13] = 1'b0;
  assign mcountinhibit_out[14] = 1'b0;
  assign mcountinhibit_out[15] = 1'b0;
  assign mcountinhibit_out[16] = 1'b0;
  assign mcountinhibit_out[17] = 1'b0;
  assign mcountinhibit_out[18] = 1'b0;
  assign mcountinhibit_out[19] = 1'b0;
  assign mcountinhibit_out[20] = 1'b0;
  assign mcountinhibit_out[21] = 1'b0;
  assign mcountinhibit_out[22] = 1'b0;
  assign mcountinhibit_out[23] = 1'b0;
  assign mcountinhibit_out[24] = 1'b0;
  assign mcountinhibit_out[25] = 1'b0;
  assign mcountinhibit_out[26] = 1'b0;
  assign mcountinhibit_out[27] = 1'b0;
  assign mcountinhibit_out[28] = 1'b0;
  assign mcountinhibit_out[29] = 1'b0;
  assign mcountinhibit_out[30] = 1'b0;
  assign mcountinhibit_out[31] = 1'b0;
  assign mcountinhibit_out[2] = \mcountinhibit_out[2] ;
  assign mcountinhibit_ir_out = \mcountinhibit_out[2] ;
  assign mcountinhibit_out[0] = mcountinhibit_out_0;
  assign mcountinhibit_cy_out = mcountinhibit_out_0;

  FD1 mcountinhibit_ir_out_reg ( .D(n11), .CP(clk_in), .Q(
        \mcountinhibit_out[2] ) );
  FD1 mcountinhibit_cy_out_reg ( .D(n10), .CP(clk_in), .Q(mcountinhibit_out_0)
         );
  NR4 U16 ( .A(rst_in), .B(csr_addr_in[4]), .C(csr_addr_in[2]), .D(
        csr_addr_in[0]), .Z(n15) );
  OR4P U17 ( .A(csr_addr_in[11]), .B(csr_addr_in[3]), .C(csr_addr_in[1]), .D(
        csr_addr_in[10]), .Z(n13) );
  ND2 U18 ( .A(csr_addr_in[5]), .B(wr_en_in), .Z(n12) );
  NR4 U19 ( .A(csr_addr_in[6]), .B(csr_addr_in[7]), .C(n13), .D(n12), .Z(n14)
         );
  ND4 U20 ( .A(csr_addr_in[9]), .B(csr_addr_in[8]), .C(n15), .D(n14), .Z(n20)
         );
  IVP U21 ( .A(data_wr_0_in), .Z(n17) );
  ND2 U22 ( .A(n20), .B(\mcountinhibit_out[2] ), .Z(n16) );
  AO4 U23 ( .A(n20), .B(n17), .C(rst_in), .D(n16), .Z(n11) );
  IVP U24 ( .A(data_wr_2_in), .Z(n19) );
  ND2 U25 ( .A(n20), .B(mcountinhibit_out_0), .Z(n18) );
  AO4 U26 ( .A(n20), .B(n19), .C(rst_in), .D(n18), .Z(n10) );
endmodule

