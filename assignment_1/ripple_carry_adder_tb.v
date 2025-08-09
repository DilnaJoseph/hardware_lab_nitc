module ripple_carry_adder_tb;

reg[3:0] a,b;
reg cin;
wire[3:0] sum;
wire cout;

ripple_carry_adder uut(a,b,cin,sum,cout);

integer i,j,k;

initial begin
$display(" a b cin | sum cout ");
for(i=0;i<16;i=i+1)begin
for(j=0;j<16;j=j+1)begin
for(k=0;k<2;k=k+1)begin
a = i;
b = j;
cin = k;
$display(" %b %b %b | %b %b ",a,b,cin,sum,cout);
#10;
end
end 
end
$finish;
end 
endmodule 
