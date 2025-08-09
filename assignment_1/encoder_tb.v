module encoder_tb;

reg[7:0] a;
wire[2:0] b;
wire v;

encoder uut(a,b,v);

integer i;

initial begin
$display(" a | b v ");
for( i = 0 ; i < 256 ; i = i+1)begin
a = i;
#10;
$display(" %b | %b %b ",a,b,v);
end
$finish;
end
endmodule