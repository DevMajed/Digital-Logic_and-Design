module Ripple_Counter_TestBench;

	// Inputs
	reg clk;
	reg reset;
	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Ripple_Counter uut (
		.q(q), 
		.clk(clk), 
		.reset(reset)	
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin 
	#10 reset=0;
	#10 reset=1;
	end
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		$monitor($time, " Output is = %d", q);
	end
endmodule
