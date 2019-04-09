module accelerator_tb;

	parameter CLK_PERIOD = 10;
	parameter TEST_MAX_SIZE = 4;

	reg clk;
	reg reset;
	reg [31:0] in_data;
	reg enable;

	wire [31:0] out_data;
	wire trigger;

	integer i;

	initial
	begin
		
		clk  = 0;
		reset = 0;
		enable = 0;

		#2;
		reset = 1;

		#(CLK_PERIOD*3);
		reset = 0;

		#(CLK_PERIOD*2);
		enable = 1;

		#CLK_PERIOD;
		in_data = TEST_MAX_SIZE;
		enable = 0;

		for ( i = 0; i < TEST_MAX_SIZE; i = i + 1)
			#CLK_PERIOD in_data = 1;

		$display ("Result:\n");
		$monitor ("[%d]\n", out_data);
		$monitor ("Trigger enabled to %d", trigger);

	end


	accelerator accelerator_0 (clk, reset, in_data, enable, out_data, trigger);

	always #(CLK_PERIOD/2) clk = ~clk;
endmodule