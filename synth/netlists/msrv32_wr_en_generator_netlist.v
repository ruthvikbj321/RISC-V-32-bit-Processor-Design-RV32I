/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat Aug 30 03:27:11 2025
/////////////////////////////////////////////////////////////


module msrv32_wr_en_generator ( flush_in, rf_wr_en_reg_in, csr_wr_en_reg_in, 
        wr_en_integer_file_out, wr_en_csr_file_out );
  input flush_in, rf_wr_en_reg_in, csr_wr_en_reg_in;
  output wr_en_integer_file_out, wr_en_csr_file_out;
  wire   n3, n4;

  IVP U6 ( .A(rf_wr_en_reg_in), .Z(n3) );
  NR2 U7 ( .A(flush_in), .B(n3), .Z(wr_en_integer_file_out) );
  IVP U8 ( .A(csr_wr_en_reg_in), .Z(n4) );
  NR2 U9 ( .A(flush_in), .B(n4), .Z(wr_en_csr_file_out) );
endmodule

