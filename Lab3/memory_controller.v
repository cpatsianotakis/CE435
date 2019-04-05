module memory_controller(clk, reset);

input clk, reset;

(*ram_style *= “block”) reg [31 : 0] x_vector [0 : N-1];
(*ram_style *= “block”) reg [31 : 0] y_vector [0 : N-1];

