`timescale 1ns/1ps

module msrv32_load_unit_tb;

  // Inputs
  reg ahb_resp_in;
  reg load_unsigned_in;
  reg [1:0] iadder_out_1_to_0_in;
  reg [1:0] load_size_in;
  reg [31:0] ms_riscv32_mp_dmdata_in;

  // Output
  wire [31:0] lu_output_in;

  // Instantiate DUT
  msrv32_load_unit dut (
    .ahb_resp_in(ahb_resp_in),
    .load_unsigned_in(load_unsigned_in),
    .iadder_out_1_to_0_in(iadder_out_1_to_0_in),
    .load_size_in(load_size_in),
    .ms_riscv32_mp_dmdata_in(ms_riscv32_mp_dmdata_in),
    .lu_output_out(lu_output_in)
  );

  // Monitor all signals
  initial begin
    $monitor("T=%0t | resp=%b unsigned=%b size=%b addr_sel=%b data=%h -> out=%h",
             $time, ahb_resp_in, load_unsigned_in, load_size_in,
             iadder_out_1_to_0_in, ms_riscv32_mp_dmdata_in, lu_output_in);
  end

  // Expected output variable
  reg [31:0] expected;

  // Task to compare output and expected value
  task check_output;
    input [31:0] exp;
    begin
      if (lu_output_in === exp)
        $display("PASS: Expected = %h, Got = %h", exp, lu_output_in);
      else
        $display("FAIL: Expected = %h, Got = %h", exp, lu_output_in);
    end
  endtask

  initial begin
    // Initialize inputs
    ahb_resp_in = 0;
    load_unsigned_in = 0;
    iadder_out_1_to_0_in = 2'b00;
    load_size_in = 2'b00;
    ms_riscv32_mp_dmdata_in = 32'hA5A5A5A5;

    #10;

    // ----------------------------
    // Test 1: Byte load (signed), byte 0
    // ----------------------------
    load_size_in = 2'b00; // byte
    load_unsigned_in = 0; // signed
    iadder_out_1_to_0_in = 2'b00; // first byte
    ms_riscv32_mp_dmdata_in = 32'hA5B6C7D8; 
    #5;
    expected = {{24{ms_riscv32_mp_dmdata_in[7]}}, 8'hD8}; 
    check_output(expected);

    // ----------------------------
    // Test 2: Byte load (unsigned), byte 2
    // ----------------------------
    load_unsigned_in = 1; 
    iadder_out_1_to_0_in = 2'b10; // third byte
    #5;
    expected = {24'h000000, 8'hC7}; // zero-extended // shoul fail
    check_output(expected);

    // ----------------------------
    // Test 3: Halfword load (signed), lower half
    // ----------------------------
    load_size_in = 2'b01; // halfword
    load_unsigned_in = 0; 
    iadder_out_1_to_0_in = 2'b00; // selects lower 16 bits
    #5;
    expected = {{16{ms_riscv32_mp_dmdata_in[15]}}, 16'hC7D8}; // sign-extended
    check_output(expected);

    // ----------------------------
    // Test 4: Halfword load (unsigned), upper half
    // ----------------------------
    load_unsigned_in = 1; 
    iadder_out_1_to_0_in = 2'b10; // selects upper 16 bits
    #5;
    expected = {16'h0000, 16'hA5B6}; // zero-extended
    check_output(expected);

    // ----------------------------
    // Test 5: Word load
    // ----------------------------
    load_size_in = 2'b10; // word
    load_unsigned_in = 0; 
    #5;
    expected = ms_riscv32_mp_dmdata_in; // full word
    check_output(expected);

    // ----------------------------
    // Test 6: ahb_resp_in = 1 (should output zero)
    // ----------------------------
    ahb_resp_in = 1;
    #5;
    expected = 32'b0;
    check_output(expected);

    // End simulation
    $display("All tests completed.");
    $finish;
  end

endmodule
