module accelerator(clk, reset, in_data, enable, out_data, trigger);

input clk, reset;
input [31:0] in_data;
input enable;

output reg [31:0] out_data;
output reg trigger;

parameter MAX_BIT_SIZE = 3;
parameter MAX = 8;

integer i,j;

parameter STATE_IDLE          = 3'b000;
parameter STATE_RECEIVE_SIZE  = 3'b001;
parameter STATE_RECEIVE_DATA  = 3'b011;
parameter STATE_COMPUTATION   = 3'b010;
parameter STATE_TRANSMIT_DATA = 3'b110;

 reg [31 : 0] x_vector [0 : MAX-1];
 reg [31 : 0] y_vector [0 : MAX-1];
 reg [31 : 0] x_vector_multi [0 : MAX-1];
 reg [31 : 0] array [0 : MAX*MAX - 1];

reg [2:0] state;
reg [2:0] next_state;

reg [MAX_BIT_SIZE-1 : 0] max_size;

reg [MAX_BIT_SIZE-1 : 0] counter;

reg receive_enable, transmit_enable;

always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
		state = STATE_IDLE;
		
		for (i = 0; i < MAX; i = i + 1) begin
            for (j = 0; j < MAX; j = j + 1) begin
                array[i*MAX + j] = 2;
            end
        end
		
	end
	else
	begin
		state = next_state;
	end
end

always @(posedge clk)
begin
		
	if ( receive_enable == 1 )
	begin
		counter = counter + 1;
		x_vector[counter -1] = in_data;		
	end
	else if ( transmit_enable == 1 )
	begin
		counter = counter + 1;
		out_data = y_vector[counter -1];	
	end
	else
	   counter = 0;
	
end

always @(*) 
begin
	
	next_state = state;
	trigger = 0;

	case (state)

		STATE_IDLE:
		begin
			max_size = 0;
			receive_enable  = 0;
			transmit_enable = 0;
			if ( enable == 1 )
				next_state = STATE_RECEIVE_SIZE;
		end

		STATE_RECEIVE_SIZE:
		begin
			next_state = STATE_RECEIVE_DATA;
			max_size = in_data;
			receive_enable  = 0;
			transmit_enable = 0;
		end

		STATE_RECEIVE_DATA:
		begin
			max_size = max_size;
			receive_enable  = 1;
			transmit_enable = 0;
			if ( counter >= max_size )
			begin
				receive_enable = 0;
				next_state = STATE_COMPUTATION;
			end

		end

		STATE_COMPUTATION:
		begin
			next_state = STATE_TRANSMIT_DATA;
			max_size = max_size;
			receive_enable  = 0;
			transmit_enable = 0;
		end

		STATE_TRANSMIT_DATA:
		begin
			max_size = max_size;
			receive_enable  = 0;
			transmit_enable = 1;
			if ( counter >= max_size )
			begin
				transmit_enable = 0;
				trigger = 1;
				next_state = STATE_IDLE;
			end
		end

	endcase
end

always @(*)
begin

	if ( state == STATE_COMPUTATION ) 
	begin

		for ( i = 0; i < MAX; i = i + 1 )
		begin
		
			x_vector_multi[i] = x_vector[i] * x_vector[i];
			
			for ( j = 0; j < MAX; j = j + 1)
				y_vector[i] = y_vector[i] + ( array[i][j] * x_vector_multi[j] );

		end
	end
	else if ( state == STATE_IDLE )
	   for ( i = 0; i < MAX; i = i + 1)
	   begin
            y_vector[i] = 0;
            x_vector_multi[i] = 0;
       end

end
	

endmodule
