#Liberty files are needed for logical and physical netlist designs
set search_path "./"
set link_library " "

set_app_var enable_lint true

configure_lint_setup -goal lint_rtl

analyze -verbose -format verilog "../rtl/msrv32_instruction_mux.sv"

elaborate msrv32_instruction_mux

check_lint

 

report_lint -verbose -file ./report/msrv32_instruction_mux.txt
