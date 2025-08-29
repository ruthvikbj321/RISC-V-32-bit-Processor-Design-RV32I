remove_design -all

set search_path {../lib}

set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

# ---------- Analyze SystemVerilog Core Files ----------
analyze -format verilog {../rtl/msrv32_top.v ../rtl/msrv32_pc.sv ../rtl/msrv32_reg_block_1.sv ../rtl/msrv32_imm_generator.sv ../rtl/msrv32_immediate_adder.sv ../rtl/msrv32_wr_en_generator.sv ../rtl/msrv32_integer_file.sv ../rtl/msrv32_instruction_mux.sv ../rtl/msrv32_branch_unit.sv ../rtl/msrv32_decoder.sv ../rtl/msrv32_store_unit.sv ../rtl/msrv32_machine_control.v ../rtl/msrv32_csr_file.v ../rtl/msrv32_reg_block2.sv ../rtl/msrv32_load_unit.sv ../rtl/msrv32_alu.sv ../rtl/msrv32_wb_mux_sel_unit.sv ../rtl/csr_data_mux_unit.v ../rtl/mcause_reg.v ../rtl/misa_and_pre_data.v ../rtl/mtval_reg.v ../rtl/data_wr_mux_unit.v ../rtl/mepc_and_mscratch_reg.v ../rtl/mtvec_reg.v ../rtl/machine_counter_setup.v ../rtl/mie_reg.v ../rtl/machine_counter.v ../rtl/mip_reg.v ../rtl/mstatus_reg.v}


elaborate msrv32_top
link

# ---------- Clock ----------
create_clock -period 30 -name ms_riscv32_mp_clk_in [get_ports ms_riscv32_mp_clk_in]

# ---------- Check & Compile ----------
check_design
current_design msrv32_top
compile_ultra -no_autoungroup

# ---------- Reports & Netlist ----------
report_timing -path full > timing_report_msrv32_top_synth.txt
write_file -f verilog -hierarchy -output msrv32_top_synth_netlist.v



