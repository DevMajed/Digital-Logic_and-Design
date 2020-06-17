module DEMO (y, a,b,c,d,sa,sb);
output reg y;
input a,b,c,d,sa,sb;
always @ (*) // making it sensitive to any change
begin
if (sa == 0 && sb==0) // if 00 select line a
y = a;
else if (sa==0 && sb==1) // if 01 select line b
y = b;
else if (sa==1 && sb==0) //if 10 select line c
y = c;
else if (sa==1 && sb==1) // if 11 select line d
y = d;
else
y = 0;// default condition may occur during any lock condition, reset the output to low
end
endmodule