module substractor_2bit_tb;

reg[1:0] a,b;
reg bin; 
wire[1:0] diff;
wire bout;

substractor uut(a,b,bin,diff,bout);

integer i;

initial begin 
$display(" a b bin | diff bout");
for(i=0;i<32;i=i+1)begin
a=i[4:3];
b=i[2:1];
bin=i[0];
#10;
$display(" %b %b %b | %b %b ",a,b,bin,diff,bout);
end

$finish;
end
endmodule
