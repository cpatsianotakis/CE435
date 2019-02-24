/*	LEDdecoder module
*
*	University of Thessaly 
*	Electrical and Computer Engineering Department
*	CE435 Course
*
*	Patsianotakis Charalampos cpatsianotakis@uth.gr
*
*/

module LEDdecoder(char, LED);

parameter N = 4;

input [N-1:0] char;
output reg [6:0] LED;

reg [3:0]  in_char;

integer i;

always @( char ) 
 begin
	
	for ( i = 0; i < N; i = i + 1 )
		in_char [i] <= char [i];

	for ( i = N; i < 4; i = i + 1 )
		in_char [i] <= 1'b0;

 end


 always @( in_char )
  begin
 	
 	case (in_char)		//ABC DEFG 
		4'b0000: LED = 7'b000_0001;  //0
		4'b0001: LED = 7'b100_1111;  //1
		4'b0010: LED = 7'b001_0010;  //2
		4'b0011: LED = 7'b000_0110;  //3
		4'b0100: LED = 7'b100_1100;  //4
		4'b0101: LED = 7'b010_0100;  //5
		4'b0110: LED = 7'b010_0000;  //6
		4'b0111: LED = 7'b000_1111;  //7
		4'b1000: LED = 7'b000_0000;  //8
		4'b1001: LED = 7'b000_0100;  //9
		4'b1010: LED = 7'b000_1000;  //A
		4'b1011: LED = 7'b000_0000;  //B
		4'b1100: LED = 7'b011_0001;  //C
		4'b1101: LED = 7'b000_0001;  //D
		4'b1110: LED = 7'b011_0000;  //E
		4'b1111: LED = 7'b011_1000;  //F
	endcase

 end

endmodule
