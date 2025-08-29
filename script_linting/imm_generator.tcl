#Liberty files are needed for logical and physical netlist designs
set search_path "./"
set link_library " "

set_app_var enable_lint true

configure_lint_setup -goal lint_rtl

analyze -verbose -format verilog "../rtl/msrv32_imm_generator.sv"

elaborate msrv32_imm_generator

check_lint

 

report_lint -verbose -file ./report/msrv32_imm_generator_report.txt
