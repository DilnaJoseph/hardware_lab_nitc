module comparator_2bit_tb;

reg[1:0] a,b; 
wire equal,greater,lesser;

comparator_2bit uut(a,b,equal,greater,lesser);
integer i;
initial begin
$display(" A B | equal greater lesser");

for(i=0;i<16;i=i+1)begin
a=i[3:2];
b=i[1:0];
#10;
$display(" %b %b | %b %b %b",a,b,equal,greater,lesser);

end
$finish;
end
endmodule