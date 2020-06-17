`timescale 1ns/1ns

module full_adder_behav_tb();

  reg     t_a;
  reg     t_b; 
  reg     t_cin;
  wire    t_sum;
  wire    t_cout;

  full_adder_behav uut ( 
    .a    ( t_a    ), 
    .b    ( t_b    ), 
    .cin  ( t_cin  ), 
    .sum  ( t_sum  ), 
    .cout ( t_cout )
  );

  initial begin
    $dumpfile ("full_adder_behav_tb.vcd");
    $dumpvars (1,full_adder_behav_tb);

            t_a = 0; t_b = 0; t_cin = 1;
    #20     t_a = 1; t_b = 0; t_cin = 1;
    #20     t_a = 1; t_b = 1; t_cin = 0;
    #20     
    $finish;
  end

endmodule