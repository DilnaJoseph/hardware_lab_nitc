module parity_generator_tb;

reg[1:0] a;
wire even,odd;

parity_generator uut(a,even,odd);

integer i ;

initial begin
$display(" a | even odd");
for(i=0;i<4;i=i+1)begin
a = i;
#10
$display(" %b | %b %b",a,even,odd);
end
$finish;
end
endmodule
