module accelerator(clk, reset, in_data, enable, trigger_computation, wr_enable, rd_enable, out_data, valid_output );

input clk, reset;
input [31:0] in_data;
input enable;
input trigger_computation;
input wr_enable;
input rd_enable;

output reg [31:0] out_data;
output reg valid_output;

parameter MAX_BIT_SIZE = 10;
parameter MAX = 1024;

parameter STATE_IDLE          = 3'b000;
parameter STATE_RECEIVE_SIZE  = 3'b001;
parameter STATE_RECEIVE_DATA  = 3'b011;
parameter STATE_COMPUTATION   = 3'b010;
parameter STATE_TRANSMIT_DATA = 3'b110;

parameter A_const = 2;

(*ram_style = "block" *) reg [31 : 0] x_vector [0 : MAX-1];
(*ram_style = "block" *) reg [31 : 0] y_vector [0 : MAX-1];

reg [31:0] x_vector_reg;
reg [31:0] y_vector_reg;


reg [2:0] state;
reg [2:0] next_state;

reg [MAX_BIT_SIZE-1 : 0] size;

reg [MAX_BIT_SIZE-1 : 0] counter;
reg [MAX_BIT_SIZE-1 : 0] computation_counter;

reg receive_size_en, receive_data_en, transmit_result_en;

always @(posedge clk or posedge reset)
begin
	if (reset)
		state = STATE_IDLE;
	else
		state = next_state;
end

always @(posedge clk )
begin
    
	if ( reset ) begin
		size = 0;
		out_data = 0;
		counter = 0;
		valid_output = 0;
        y_vector_reg = 0;
	
	end
	else if ( receive_size_en == 1 && wr_enable == 1 ) 
	begin
		size = in_data;
		valid_output = 0;	
	end
		

	else if ( receive_data_en == 1 && wr_enable == 1 )
	begin
		valid_output = 0;
		x_vector[counter] = in_data;		
		counter = counter + 1;
	end
	else if ( transmit_result_en == 1 && rd_enable == 1 )
	begin		
		out_data = y_vector[counter];	
		counter = counter + 1;
		valid_output = 1;
	end
	else if ( state == STATE_COMPUTATION ) 
	begin
        y_vector_reg = A_const * x_vector_reg * x_vector_reg;
        valid_output = 0;
	end
	else
	begin
	   counter = 0;
	   valid_output = 0;
	   y_vector_reg = 0;	
	end
	   
	
end

always @( posedge clk )
begin

    if ( state == STATE_COMPUTATION ) 
    begin
        x_vector_reg = x_vector [ computation_counter ];
        computation_counter = computation_counter + 1;
    end
    else  
    begin
        x_vector_reg = 0;
        computation_counter = 0;
    end
end


always @( posedge clk)
begin
    if ( state == STATE_COMPUTATION && computation_counter > 1 )
        y_vector[computation_counter - 2] = y_vector_reg;
end


always @(*) 
begin
	
	next_state = state;
	receive_size_en = 0;
	receive_data_en = 0;
	transmit_result_en = 0;

	case (state)

		STATE_IDLE:
		begin
			if ( enable == 1 )
				next_state = STATE_RECEIVE_SIZE;
            else if ( trigger_computation == 1 )
                next_state = STATE_COMPUTATION;
		end

		STATE_RECEIVE_SIZE:
		begin
			next_state = STATE_RECEIVE_DATA;
			receive_size_en = 1;
		end

		STATE_RECEIVE_DATA:
		begin
			receive_data_en  = 1;
			if ( counter == size)
			begin
				receive_data_en = 0;
				next_state = STATE_IDLE;
			end
		end

		STATE_COMPUTATION:
		begin
            if ( computation_counter == size + 1 )
                next_state = STATE_TRANSMIT_DATA;
		end

		STATE_TRANSMIT_DATA:
		begin
			transmit_result_en = 1;
			if ( counter == size )
			begin
				transmit_result_en = 0;
				next_state = STATE_IDLE;
			end
		end

	endcase
end


endmodule
