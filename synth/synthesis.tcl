
# synthesis_all.tcl

remove_design -all

# ----------------- Libraries -----------------
set search_path [list ../lib ../rtl]  
set target_library {lsi_10k.db}
set link_library   "* lsi_10k.db"

# ----------------- RTL Files -----------------
# Include all RTL .sv and .v files
set rtl_files [glob ../rtl/*.sv ../rtl/*.v]
analyze -format verilog $rtl_files

file mkdir netlists
file mkdir reports/area
file mkdir reports/timing
file mkdir reports/power

# ----------------- Module List -----------------
set module_list {
    msrv32_pc
    msrv32_imm_generator
    msrv32_immediate_adder
    msrv32_integer_file
    msrv32_wr_en_generator
    msrv32_instruction_mux
    msrv32_decoder
    msrv32_store_unit
    msrv32_csr_file
    msrv32_load_unit
    msrv32_alu
    msrv32_wb_mux_sel_unit
    csr_data_mux_unit
    mcause_reg
    misa_and_pre_data
    mtval_reg
    data_wr_mux_unit
    mepc_and_mscratch_reg
    mtvec_reg
    machine_counter_setup
    mie_reg
    machine_counter
    mip_reg
    mstatus_reg
    msrv32_reg_block_1
    msrv32_reg_block2
    msrv32_branch_unit
    msrv32_machine_control
    msrv32_top
}

# ----------------- Synthesis Loop -----------------
foreach module $module_list {
    puts "\n==== Synthesizing $module ====\n"

    elaborate $module
    link
    current_design $module
    check_design

    # Clock only applies to top-level
    if { $module == "msrv32_top" } {
        create_clock -period 30 -name ms_riscv32_mp_clk_in [get_ports ms_riscv32_mp_clk_in]
    }

    # Compile
    compile_ultra -no_autoungroup

    # Write netlist & reports
    write_file -f verilog -hier -output netlists/${module}_netlist.v
    report_area   > reports/area/${module}_area.rpt
    report_timing -path full > reports/timing/${module}_timing.rpt
    report_power  > reports/power/${module}_power.rpt

    
}
