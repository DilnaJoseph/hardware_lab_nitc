module xor_2bit_tb;

reg[1:0] a,b;
wire y0,y1;

xor_2bit uut(a,b,y0,y1);

integer i;

initial begin
$display(" a b | y0 y1 ");
for(i=0;i<16;i=i+1)begin
a = i[3:2];
b = i[1:0];
#10;
$display(" %b %b | %b %b ",a,b,y0,y1);
end
$finish;
end
endmodule

 