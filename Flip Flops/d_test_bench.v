`timescale 1ns / 1ps

`define STRLEN 15
module DTest_v;
task passTest;
input actualOut, expectedOut;
input [`STRLEN*8:0] testType;
inout [7:0] passed;

if (actualOut==expectedOut)
begin
	$display ("%s passed", testType);
	passed	= passed + 1;
end

else
	$display ("%s failed : %d should be %d",testType,actualOut,expectedOut );
	
endtask

task allPassed;

input	[7:0] passed;
input	[7:0] numTests;

if (passed==numTests)
	$display ("All tests passed");
else
	$display("Some tests failed");
	
	endtask

//inputs
reg d;
reg clk;
reg reset;

reg[7:0] passed;

//outputs
wire out;

//instantiate the Unit Under Test (UUT)
d_flip_flop uut(
				    out,
				    d,
				    clk,
				    reset
				);

initial 
begin
		//initializing inputs
		d=0;
		clk=0;
		reset=1;
		passed=0;
		
		//wait 100ns for global reset to finish
		#100;
		
		//add stimulus here
		reset =0;
		#90; 
		d=1; 
		#7; 
		clk=1;
		#3; 
		clk=0; 
		#90;
		passTest (out, 1, "Set", passed);
		
		#90; 
		d=0; 
		#7; 
		clk=1;
		#3; 
		clk=0; 
		#90;
		passTest (out, 0, "Reset", passed);
		
		#90; 
		allPassed(passed,2);
end
endmodule