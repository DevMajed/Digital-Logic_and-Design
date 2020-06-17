`timescale 1ns / 1ps
module d_flip_flop ( out, din ,clk ,reset  );

output reg out ; //needs to be an reg because it is used to hold values even after the clock pulse. 
input wire din, clk,reset ;//can be wires as it need not hold a value. 

always @ (posedge (clk)) begin
 if (reset)
  out <= 0;
 else
  out <= din ;
end

endmodule