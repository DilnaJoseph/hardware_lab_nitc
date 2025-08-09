module alu_tb;

reg[7:0] a,b;
reg[1:0] op; 
wire[7:0] y; 

alu uut(a,b,op,y);

integer i,j,k;

initial begin
$display(" a b op | y ");
for(i=0;i<4;i=i+1)begin
for(j=0;j<256;j=j+1)begin
for(k=0;k<256;k=k+1)begin
op = i;
a = j;
b = k;
#10;
$display(" %b %b %b | %b ",a,b,op,y);
end
end
end
$finish;
end
endmodule

