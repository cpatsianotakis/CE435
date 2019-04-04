module translator (in_button1, in_button2, sys_button, sys_reset);

	input in_button1;
	input in_button2;
	output reg sys_button;
	output reg sys_reset;

	parameter STATE_FREEZE   = 2'b01;
	parameter STATE_RESET    = 2'b11;
	parameter STATE_COUNT    = 2'b10;
	parameter STATE_CONTINUE = 2'b00;


	wire [1:0] in_buttons = {in_button2, in_button1};


	always @( in_buttons )
	begin
		
		case (in_buttons )

			STATE_FREEZE:
				begin
					sys_button = 0;
					sys_reset  = 0;
				end

			STATE_FREEZE:
				begin
					sys_button = 0;
					sys_reset  = 1;
				end

			STATE_FREEZE:
				begin
					sys_button = 1;
					sys_reset  = 0;
				end

			STATE_FREEZE:
				begin
					sys_button = sys_button;
					sys_reset  = sys_reset;
				end

			endcase

	end

endmodule