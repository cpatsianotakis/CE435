
module array_vector_multiplier (clk, reset );

	input clk, reset;
	output
	parameter N = 512;


	reg array [(N*N*32)-1 : 0];
	reg x_vector[(N*32)-1 : 0];
	reg y_vector[(N*32)-1 : 0];

	reg x_vector_multi[(N*32)-1 : 0];

	integer i,j;


	// Make X*X vector //
	for ( i = 0; i < N; i++ )
		assign x_vector_multi[i] = x_vector[i] * x_vector[i];
		




	for ( i = 0; i < N; i++ )
	begin
		for ( j = 0; j < N; j++ )
			assign y_vector[i] = y_vector[i] + ( array[i][j] * x_vector_multi[i] );
	end
		


endmodule
