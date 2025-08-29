# Liberty files are needed for logical and physical netlist designs
set search_path "./"
set link_library " "

# Enable linting
set_app_var enable_lint true

# Configure lint setup
configure_lint_setup -goal lint_rtl

# Analyze all RTL files (so dependencies are included)
analyze -verbose -format verilog ../rtl/*.v
analyze -verbose -format sverilog ../rtl/*.sv

# Elaborate the top module
elaborate msrv32_top

# Run lint checks
check_lint

waive_lint -tag "InferLatch" -add i_addr_out[31:0] 

# Report lint results
report_lint -verbose -file ./report/msrv32_top_report.txt
