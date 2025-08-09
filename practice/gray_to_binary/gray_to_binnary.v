module gray_to_binary_tb;

reg[3:0] g;
wire[3:0] b;

gray_to_binary uut(g,b);
integer i;

initial begin
$display(" gray | binary ");
for(i=0;i<16;i=i+1)begin
g = i;
#10;
$display(" %b | %b ",g,b);
end
$finish;
end

endmodule
