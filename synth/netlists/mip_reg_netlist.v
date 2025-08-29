/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:56 2025
/////////////////////////////////////////////////////////////


module mip_reg ( clk_in, rst_in, e_irq_in, t_irq_in, s_irq_in, meip_out, 
        mtip_out, msip_out, mip_reg_out );
  output [31:0] mip_reg_out;
  input clk_in, rst_in, e_irq_in, t_irq_in, s_irq_in;
  output meip_out, mtip_out, msip_out;
  wire   \mip_reg_out[11] , mip_reg_out_7, mip_reg_out_3, N3, N4, N5, n4, n5,
         n6;
  assign mip_reg_out[0] = 1'b0;
  assign mip_reg_out[1] = 1'b0;
  assign mip_reg_out[2] = 1'b0;
  assign mip_reg_out[4] = 1'b0;
  assign mip_reg_out[5] = 1'b0;
  assign mip_reg_out[6] = 1'b0;
  assign mip_reg_out[8] = 1'b0;
  assign mip_reg_out[9] = 1'b0;
  assign mip_reg_out[10] = 1'b0;
  assign mip_reg_out[12] = 1'b0;
  assign mip_reg_out[13] = 1'b0;
  assign mip_reg_out[14] = 1'b0;
  assign mip_reg_out[15] = 1'b0;
  assign mip_reg_out[16] = 1'b0;
  assign mip_reg_out[17] = 1'b0;
  assign mip_reg_out[18] = 1'b0;
  assign mip_reg_out[19] = 1'b0;
  assign mip_reg_out[20] = 1'b0;
  assign mip_reg_out[21] = 1'b0;
  assign mip_reg_out[22] = 1'b0;
  assign mip_reg_out[23] = 1'b0;
  assign mip_reg_out[24] = 1'b0;
  assign mip_reg_out[25] = 1'b0;
  assign mip_reg_out[26] = 1'b0;
  assign mip_reg_out[27] = 1'b0;
  assign mip_reg_out[28] = 1'b0;
  assign mip_reg_out[29] = 1'b0;
  assign mip_reg_out[30] = 1'b0;
  assign mip_reg_out[31] = 1'b0;
  assign mip_reg_out[11] = \mip_reg_out[11] ;
  assign meip_out = \mip_reg_out[11] ;
  assign mip_reg_out[7] = mip_reg_out_7;
  assign mtip_out = mip_reg_out_7;
  assign mip_reg_out[3] = mip_reg_out_3;
  assign msip_out = mip_reg_out_3;

  FD1 mtip_reg ( .D(N4), .CP(clk_in), .Q(mip_reg_out_7) );
  FD1 msip_reg ( .D(N5), .CP(clk_in), .Q(mip_reg_out_3) );
  FD1 meip_reg ( .D(N3), .CP(clk_in), .Q(\mip_reg_out[11] ) );
  IVP U10 ( .A(s_irq_in), .Z(n4) );
  NR2 U11 ( .A(rst_in), .B(n4), .Z(N5) );
  IVP U12 ( .A(t_irq_in), .Z(n5) );
  NR2 U13 ( .A(rst_in), .B(n5), .Z(N4) );
  IVP U14 ( .A(e_irq_in), .Z(n6) );
  NR2 U15 ( .A(rst_in), .B(n6), .Z(N3) );
endmodule

