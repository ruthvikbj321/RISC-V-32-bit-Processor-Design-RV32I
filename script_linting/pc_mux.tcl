#Liberty files are needed for logical and physical netlist designs
set search_path "./"
set link_library " "

set_app_var enable_lint true

configure_lint_setup -goal lint_rtl

analyze -verbose -format verilog "../rtl/msrv32_pc.sv"

elaborate msrv32_pc

check_lint

waive_lint -tag "InferLatch" -add i_addr_out[31:0] 

report_lint -verbose -file ./report/msrv32_pc_lint.txt
