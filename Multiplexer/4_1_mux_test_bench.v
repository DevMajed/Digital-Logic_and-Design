module sim2();
reg sa; // since it is input of test bench, it is defined as reg.
reg sb;
reg a;
reg b;
reg c;
reg d;
wire y; // since it is output of test bench, it is defined as wire.
// instantiate the design block
DEMO abc(y,a,b,c,d,sa,sb);
always
begin
#5 a=0;
#5 b=0;
#5 c=0;
#5 d=0;//assigning the input to all zero.
#5 sa=0;
#5 sb=0;
#15 a =1; //changing the input bit 0.
#30 a =0;
#30 b =1;
#30 sb =1; // toggling the switch after 30ns to 1 to make sa = 0 and sb=1
#45 a =0;
#45 b =0;
#45 c=1;
#45 sb =0; // toggling the switch after 45ns to 1 to make sb = 0 and sa=1
#45 sa =1;
#60 a =0;
#60 b =0;
#60 c=0;
#60 c=0;
#60 d=1;
#60 sb =1; // toggling the switch after 60ns to 1 to make sa = 0 and sb=1
#60 sa =1 ;
end
endmodule