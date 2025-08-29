module msrv32_alu_tb;

    reg [31:0] op_1_in;
    reg [31:0] op_2_in;
    reg [3:0] opcode_in;
    wire [31:0] result_out;

    integer i;

    // Instantiate DUT
    msrv32_alu uut (
        .op_1_in(op_1_in),
        .op_2_in(op_2_in),
        .opcode_in(opcode_in),
        .result_out(result_out)
    );
	
	task initialize;
		begin
			op_1_in = 32'd0;
			op_2_in = 32'd0;
			opcode_in = 32'd0;
		end
	endtask
	
	task stimulus(input [31:0]	op1,op2,
				  input [3:0]opcode);
		begin
			#10;
			op_1_in = op1;
			op_2_in = op2;
			opcode_in = opcode;
		end
	endtask
	
    initial begin
  	  
		initialize;
	
        // ADD, SUB, AND, OR, XOR tests
        stimulus(32'd20, 32'd40, 4'b0000); // ADD
        stimulus(32'd40, 32'd20, 4'b1000); // SUB
        stimulus(32'd15, 32'd7,  4'b0111); // AND
        stimulus(32'd5,  32'd12, 4'b0110); // OR
        stimulus(32'd10, 32'd5,  4'b0100); // XOR
        
        // SLT, SLTU, SLL, SRL, SRA
        stimulus(32'd10, 32'd20, 4'b0010); // SLT
        stimulus(32'd20, 32'd10, 4'b0011); // SLTU
        stimulus(32'd8,  32'd1,  4'b0001); // SLL
        stimulus(32'd8, 32'd1,  4'b0101); // SRL
        stimulus(32'd8, 32'd1,  4'b1101); // SRA
		
		#100 $finish;
	end
	
	initial 
		$monitor("Time=%0t | op1=%0d | op2=%0d | opcode=%b | result=%0d",
                  $time, op_1_in, op_2_in, opcode_in, result_out);
			
endmodule