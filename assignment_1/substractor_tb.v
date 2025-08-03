module substractor_tb;

reg a,b,bin;
wire bout,diff;

substractor uut(a,b,bin,diff,bout);
integer i;

initial begin
$display(" a b bin | diff bout");

for(i=0;i<8;i=i+1)begin
a=i[5:4];
b=i[3:2];
bin=i[1:0];
#10;
$display(" %b %b %b | %b %b",a,b,bin,diff,bout);
end
$finish;
end
endmodule