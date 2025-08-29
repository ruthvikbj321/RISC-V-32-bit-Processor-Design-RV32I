# Directories
RTL_DIR = ../rtl
TB_DIR  = ../tb
SIM_DIR = ../sim
VSIMOPT = -vopt -voptargs=+acc

# Files for msrv32_pc
VERILOG_FILES_PC = $(RTL_DIR)/msrv32_pc.sv $(TB_DIR)/msrv32_pc_tb.sv
TOP_MODULE_PC = msrv32_pc_tb
WAVE_DIR_PC = $(SIM_DIR)/pc_wv

# Files for msrv32_imm_generator
VERILOG_FILES_IMM_GEN = $(RTL_DIR)/msrv32_imm_generator.sv $(TB_DIR)/msrv32_imm_generator_tb.sv
TOP_MODULE_IMM_GEN = msrv32_imm_generator_tb
WAVE_DIR_IMM_GEN = $(SIM_DIR)/imm_gen

# Files for msrv32_integer_file
VERILOG_FILES_INTEGER_FILE = $(RTL_DIR)/msrv32_integer_file.sv $(TB_DIR)/msrv32_integer_file_tb.sv
TOP_MODULE_INTEGER_FILE = msrv32_integer_file_tb
WAVE_DIR_INTEGER_FILE = $(SIM_DIR)/integer_file

# Files for msrv32_decoder
VERILOG_FILES_DECODER = $(RTL_DIR)/msrv32_decoder.sv $(TB_DIR)/msrv32_decoder_tb.sv
TOP_MODULE_DECODER = msrv32_decoder_tb
WAVE_DIR_DECODER = $(SIM_DIR)/decoder

# Files for msrv32_store_unit
VERILOG_FILES_STORE_UNIT = $(RTL_DIR)/msrv32_store_unit.sv $(TB_DIR)/msrv32_store_unit_tb.sv
TOP_MODULE_STORE_UNIT = msrv32_store_unit_tb
WAVE_DIR_STORE_UNIT = $(SIM_DIR)/store_unit

# Files for msrv32_load_unit
VERILOG_FILES_LOAD_UNIT = $(RTL_DIR)/msrv32_load_unit.sv $(TB_DIR)/msrv32_load_unit_tb.sv
TOP_MODULE_LOAD_UNIT = msrv32_load_unit_tb
WAVE_DIR_LOAD_UNIT = $(SIM_DIR)/load_unit

# Files for msrv32_alu
VERILOG_FILES_ALU = $(RTL_DIR)/msrv32_alu.sv $(TB_DIR)/msrv32_alu_tb.sv
TOP_MODULE_ALU = msrv32_alu_tb
WAVE_DIR_ALU = $(SIM_DIR)/alu

# Files for msrv32_wb_mux_sel_unit
VERILOG_FILES_WB_MUX_SEL_UNIT = $(RTL_DIR)/msrv32_wb_mux_sel_unit.sv $(TB_DIR)/msrv32_wb_mux_sel_unit_tb.sv
TOP_MODULE_WB_MUX_SEL_UNIT = msrv32_wb_mux_sel_unit_tb
WAVE_DIR_WB_MUX_SEL_UNIT = $(SIM_DIR)/wb_mux_sel_unit

# Coverage database and report directory
COV_DB_PC = $(SIM_DIR)/covdb_pc.ucdb
COV_REPORT_PC = $(SIM_DIR)/covhtmlreport_pc

COV_DB_IMM_GEN = $(SIM_DIR)/covdb_imm_gen.ucdb
COV_REPORT_IMM_GEN = $(SIM_DIR)/covhtmlreport_imm_gen

COV_DB_INTEGER_FILE = $(SIM_DIR)/covdb_integer_file.ucdb
COV_REPORT_INTEGER_FILE = $(SIM_DIR)/covhtmlreport_integer_file

COV_DB_DECODER = $(SIM_DIR)/covdb_decoder.ucdb
COV_REPORT_DECODER = $(SIM_DIR)/covhtmlreport_decoder

COV_DB_STORE_UNIT = $(SIM_DIR)/covdb_store_unit.ucdb
COV_REPORT_STORE_UNIT = $(SIM_DIR)/covhtmlreport_store_unit

COV_DB_LOAD_UNIT = $(SIM_DIR)/covdb_load_unit.ucdb
COV_REPORT_LOAD_UNIT = $(SIM_DIR)/covhtmlreport_load_unit

COV_DB_ALU = $(SIM_DIR)/covdb_alu.ucdb
COV_REPORT_ALU = $(SIM_DIR)/covhtmlreport_alu

COV_DB_WB_MUX_SEL_UNIT = $(SIM_DIR)/covdb_wb_mux_sel_unit.ucdb
COV_REPORT_WB_MUX_SEL_UNIT = $(SIM_DIR)/covhtmlreport_wb_mux_sel_unit

# ------------------ SIMULATION TARGETS ------------------

simulate_pc:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_PC)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_PC)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_PC); log -r /* ;run -all; quit" $(TOP_MODULE_PC) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_pc.log -wlf $(WAVE_DIR_PC)/waveform_pc.wlf

simulate_imm_gen:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_IMM_GEN)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_IMM_GEN)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_IMM_GEN); log -r /* ;run -all; quit" $(TOP_MODULE_IMM_GEN) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_imm_gen.log -wlf $(WAVE_DIR_IMM_GEN)/waveform_imm_gen.wlf

simulate_integer_file:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_INTEGER_FILE)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_INTEGER_FILE)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_INTEGER_FILE); log -r /* ;run -all; quit" $(TOP_MODULE_INTEGER_FILE) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_integer_file.log -wlf $(WAVE_DIR_INTEGER_FILE)/waveform_integer_file.wlf

simulate_decoder:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_DECODER)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_DECODER)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_DECODER); log -r /* ;run -all; quit" $(TOP_MODULE_DECODER) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_decoder.log -wlf $(WAVE_DIR_DECODER)/waveform_decoder.wlf

simulate_store_unit:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_STORE_UNIT)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_STORE_UNIT)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_STORE_UNIT); log -r /* ;run -all; quit" $(TOP_MODULE_STORE_UNIT) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_store_unit.log -wlf $(WAVE_DIR_STORE_UNIT)/waveform_store_unit.wlf

simulate_load_unit:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_LOAD_UNIT)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_LOAD_UNIT)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_LOAD_UNIT); log -r /* ;run -all; quit" $(TOP_MODULE_LOAD_UNIT) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_load_unit.log -wlf $(WAVE_DIR_LOAD_UNIT)/waveform_load_unit.wlf

simulate_alu:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_ALU)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_ALU)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_ALU); log -r /* ;run -all; quit" $(TOP_MODULE_ALU) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_alu.log -wlf $(WAVE_DIR_ALU)/waveform_alu.wlf

simulate_wb_mux_sel_unit:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_WB_MUX_SEL_UNIT)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_WB_MUX_SEL_UNIT)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_WB_MUX_SEL_UNIT); log -r /* ;run -all; quit" $(TOP_MODULE_WB_MUX_SEL_UNIT) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_wb_mux_sel_unit.log -wlf $(WAVE_DIR_WB_MUX_SEL_UNIT)/waveform_wb_mux_sel_unit.wlf

# ------------------ VIEW WAVE TARGETS ------------------

view_wave_Questa_pc: vsim -view $(WAVE_DIR_PC)/waveform_pc.wlf
view_wave_Questa_imm_gen: vsim -view $(WAVE_DIR_IMM_GEN)/waveform_imm_gen.wlf
view_wave_Questa_integer_file: vsim -view $(WAVE_DIR_INTEGER_FILE)/waveform_integer_file.wlf
view_wave_Questa_decoder: vsim -view $(WAVE_DIR_DECODER)/waveform_decoder.wlf
view_wave_Questa_store_unit: vsim -view $(WAVE_DIR_STORE_UNIT)/waveform_store_unit.wlf
view_wave_Questa_load_unit: vsim -view $(WAVE_DIR_LOAD_UNIT)/waveform_load_unit.wlf
view_wave_Questa_alu: vsim -view $(WAVE_DIR_ALU)/waveform_alu.wlf
view_wave_Questa_wb_mux_sel_unit: vsim -view $(WAVE_DIR_WB_MUX_SEL_UNIT)/waveform_wb_mux_sel_unit.wlf

# ------------------ COVERAGE REPORT TARGETS ------------------

cov_report_pc: vcover report -details -codeAll -html -output $(COV_REPORT_PC) $(COV_DB_PC)
cov_report_imm_gen: vcover report -details -codeAll -html -output $(COV_REPORT_IMM_GEN) $(COV_DB_IMM_GEN)
cov_report_integer_file: vcover report -details -codeAll -html -output $(COV_REPORT_INTEGER_FILE) $(COV_DB_INTEGER_FILE)
cov_report_decoder: vcover report -details -codeAll -html -output $(COV_REPORT_DECODER) $(COV_DB_DECODER)
cov_report_store_unit: vcover report -details -codeAll -html -output $(COV_REPORT_STORE_UNIT) $(COV_DB_STORE_UNIT)
cov_report_load_unit: vcover report -details -codeAll -html -output $(COV_REPORT_LOAD_UNIT) $(COV_DB_LOAD_UNIT)
cov_report_alu: vcover report -details -codeAll -html -output $(COV_REPORT_ALU) $(COV_DB_ALU)
cov_report_wb_mux_sel_unit: vcover report -details -codeAll -html -output $(COV_REPORT_WB_MUX_SEL_UNIT) $(COV_DB_WB_MUX_SEL_UNIT)

# ------------------ VIEW COVERAGE REPORT TARGETS ------------------

view_cov_report_pc: firefox $(COV_REPORT_PC)/index.html &
view_cov_report_imm_gen: firefox $(COV_REPORT_IMM_GEN)/index.html &
view_cov_report_integer_file: firefox $(COV_REPORT_INTEGER_FILE)/index.html &
view_cov_report_decoder: firefox $(COV_REPORT_DECODER)/index.html &
view_cov_report_store_unit: firefox $(COV_REPORT_STORE_UNIT)/index.html &
view_cov_report_load_unit: firefox $(COV_REPORT_LOAD_UNIT)/index.html &
view_cov_report_alu: firefox $(COV_REPORT_ALU)/index.html &
view_cov_report_wb_mux_sel_unit: firefox $(COV_REPORT_WB_MUX_SEL_UNIT)/index.html &

# ------------------ HELP ------------------

# Help
help:
	@echo "=================================== HELP ===================================="
	@echo "!	Makefile Commands:								!"
	@echo ""
	@echo "! Simulation Targets:								!"
	@echo "! simulate_pc                   => Run simulation for the pc module with coverage.			!"
	@echo "! simulate_imm_gen              => Run simulation for the imm_gen module with coverage.		!"
	@echo "! simulate_integer_file         => Run simulation for the integer_file module with coverage.	!"
	@echo "! simulate_decoder              => Run simulation for the decoder module with coverage.		!"
	@echo "! simulate_store_unit           => Run simulation for the store_unit module with coverage.		!"
	@echo "! simulate_load_unit            => Run simulation for the load_unit module with coverage.		!"
	@echo "! simulate_alu                  => Run simulation for the alu module with coverage.			!"
	@echo "! simulate_wb_mux_sel_unit      => Run simulation for the wb_mux_sel_unit module with coverage.	!"
	@echo ""
	@echo "! Waveform Viewing Targets:								!"
	@echo "! view_wave_Questa_pc                => View waveform for the pc module simulation.			!"
	@echo "! view_wave_Questa_imm_gen           => View waveform for the imm_gen module simulation.		!"
	@echo "! view_wave_Questa_integer_file      => View waveform for the integer_file module simulation.	!"
	@echo "! view_wave_Questa_decoder           => View waveform for the decoder module simulation.		!"
	@echo "! view_wave_Questa_store_unit        => View waveform for the store_unit module simulation.		!"
	@echo "! view_wave_Questa_load_unit         => View waveform for the load_unit module simulation.		!"
	@echo "! view_wave_Questa_alu               => View waveform for the alu module simulation.			!"
	@echo "! view_wave_Questa_wb_mux_sel_unit   => View waveform for the wb_mux_sel_unit module simulation.	!"
	@echo ""
	@echo "! Coverage Report Targets:								!"
	@echo "! cov_report_pc                   => Generate HTML coverage report for the pc module.		!"
	@echo "! cov_report_imm_gen              => Generate HTML coverage report for the imm_gen module.	!"
	@echo "! cov_report_integer_file         => Generate HTML coverage report for the integer_file module.	!"
	@echo "! cov_report_decoder              => Generate HTML coverage report for the decoder module.		!"
	@echo "! cov_report_store_unit           => Generate HTML coverage report for the store_unit module.		!"
	@echo "! cov_report_load_unit            => Generate HTML coverage report for the load_unit module.		!"
	@echo "! cov_report_alu                  => Generate HTML coverage report for the alu module.			!"
	@echo "! cov_report_wb_mux_sel_unit      => Generate HTML coverage report for the wb_mux_sel_unit module.	!"
	@echo ""
	@echo "! View Coverage Report Targets:								!"
	@echo "! view_cov_report_pc                   => Open the pc module coverage report in Firefox.		!"
	@echo "! view_cov_report_imm_gen              => Open the imm_gen module coverage report in Firefox.	!"
	@echo "! view_cov_report_integer_file         => Open the integer_file module coverage report in Firefox.	!"
	@echo "! view_cov_report_decoder              => Open the decoder module coverage report in Firefox.		!"
	@echo "! view_cov_report_store_unit           => Open the store_unit module coverage report in Firefox.		!"
	@echo "! view_cov_report_load_unit            => Open the load_unit module coverage report in Firefox.		!"
	@echo "! view_cov_report_alu                  => Open the alu module coverage report in Firefox.			!"
	@echo "! view_cov_report_wb_mux_sel_unit      => Open the wb_mux_sel_unit module coverage report in Firefox.	!"
	@echo ""
	@echo "! Utility Targets:									!"
	@echo "! clean => Remove all generated files and clean the workspace.					!"
	@echo ""
	@echo "! Example Usage:									!"
	@echo "! make simulate_pc   # Run simulation for pc module with coverage.					!"
	@echo "============================================================================"

clean:
	rm -rf $(SIM_DIR)
