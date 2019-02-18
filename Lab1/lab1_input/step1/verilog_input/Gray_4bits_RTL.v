                                              -
 /*
 -----------------------------------------------------------------------------
 -- File           : Gray_4bits_RTL.v
 -----------------------------------------------------------------------------
 -- Description    : Verilog code for the 4-bit Gray 
 --  with asynchronous reset
 -- 4 bit gray code :
  --  bin     hex
  --  0000    0
  --  0001    1
  --  0011    3
  --  0010    2
  --  0110    6
  --  0111    7
  --  0101    5
  --  0100    4
  --  1100    C
  --  1101    D
  --  1111    F
  --  1110    E
  --  1010    A
  --  1011    B
  --  1001    9
  --  1000    8
 -- --------------------------------------------------------------------------
 */ 

module gray_4bits (clk, clk_en, rst, gray_out)
  input clk, clk_en, rst;
  reg [3:0] state;
  wire gray_out;

  parameter N_BITS = 4;
  integer i;

  reg [3:0] prev_state;
  reg LSB;
  reg non_zero_flag;

  always @(posedge clk or rst) 
   begin
     // Code to implement a 4-bit Gray code

     if ( rst )
      begin
        
        LSB = 0;

        for ( i = 0; i < N_BITS; i = i + 1)
         begin
           
           state [i] = 0;
           prev_state [i] = 0;
         end

      end

     if ( clk_en )
      begin
        
        prev_state = state;

        if ( LSB == 1 )
         begin           
           state [0] = ~ state [0];
         end

        if ( state [0] == 1 && prev_state [0] == 0 )
         begin
           state [1] = ~ state [1];
         end

        for ( i = 2; i < N_BITS - 1; i = i + 1)
         begin
          
          if ( state [i-1] == 1 )
           begin
             
            for ( j = i -2; j > 0; j = j - 1)   
              if ( state [j] == 1 )
                non_zero_flag = 1;

            if ( non_zero_flag == 0 )

           end
           
         end

        if


      end

    end
     
    assign gray_out = state;
  
endmodule
