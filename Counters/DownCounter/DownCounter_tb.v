
`timescale (1ns, 10ns)
module DownCounter_tb();
reg clk, reset;
wire [3:0] counter;

DownCounter dut(clk, reset, counter);
initial begin 
 $dumpfile ("DownCounter_tb.vcd");
    $dumpvars (0,DownCounter_tb);

clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#20;
reset=0;
    $dumpfile ("DownCounter_tb.vcd");

end
endmodule