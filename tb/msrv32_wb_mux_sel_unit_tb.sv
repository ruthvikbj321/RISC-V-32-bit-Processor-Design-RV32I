`timescale 1ns/1ps

module msrv32_wb_mux_sel_unit_tb;

    // Inputs
    reg alu_src_reg_in;
    reg [2:0] wb_mux_sel_reg_in;
    reg [31:0] alu_result_in;
    reg [31:0] lu_output_in;
    reg [31:0] imm_reg_in;
    reg [31:0] iadder_out_reg_in;
    reg [31:0] csr_data_in;
    reg [31:0] pc_plus_4_reg_in;
    reg [31:0] rs2_reg_in;

    // Outputs
    wire [31:0] wb_mux_out;
    wire [31:0] alu_2nd_src_mux_out;

    integer i;

    // Instantiate DUT
    msrv32_wb_mux_sel_unit uut (
        .alu_src_reg_in(alu_src_reg_in),
        .wb_mux_sel_reg_in(wb_mux_sel_reg_in),
        .alu_result_in(alu_result_in),
        .lu_output_in(lu_output_in),
        .imm_reg_in(imm_reg_in),
        .iadder_out_reg_in(iadder_out_reg_in),
        .csr_data_in(csr_data_in),
        .pc_plus_4_reg_in(pc_plus_4_reg_in),
        .rs2_reg_in(rs2_reg_in),
        .wb_mux_out(wb_mux_out),
        .alu_2nd_src_mux_out(alu_2nd_src_mux_out)
    );

    // Initialize task
    task initialize;
        begin
            alu_src_reg_in = 0;
            wb_mux_sel_reg_in = 3'b000;
            alu_result_in = 32'd10;
            lu_output_in = 32'd20;
            imm_reg_in = 32'd30;
            iadder_out_reg_in = 32'd40;
            csr_data_in = 32'd50;
            pc_plus_4_reg_in = 32'd60;
            rs2_reg_in = 32'd70;
        end
    endtask

    // Stimulus task
    task stimulus(input [2:0] wb_sel, input alu_src);
        begin
            #10;
            wb_mux_sel_reg_in = wb_sel;
            alu_src_reg_in = alu_src;
        end
    endtask

    initial begin
        $display("Time\twb_sel\talu_src\twb_mux_out\talu_2nd_src_mux_out");
        $monitor("%0t\t%b\t%b\t%d\t%d",
                 $time, wb_mux_sel_reg_in, alu_src_reg_in,
                 wb_mux_out, alu_2nd_src_mux_out);

        // Apply inputs
        initialize;

        // Test different wb_mux_sel values
        stimulus(3'b000, 0); // WB_MUX -> alu_result -10
        stimulus(3'b001, 0); // WB_LU -> lu_output - 20
        stimulus(3'b010, 0); // WB_IMM -> imm_reg - 30
        stimulus(3'b011, 0); // WB_IADDER_OUT -> iadder_out -40
        stimulus(3'b100, 0); // WB_CSR -> csr_data - 50 
        stimulus(3'b101, 0); // WB_PC_PLUS -> pc_plus_4 - 60 
        stimulus(3'b111, 1); // Check alu_2nd_src_mux_out with alu_src = 1 (rs2_reg)

        #100 $finish;
    end

endmodule
