module gray_code_tb;

reg[3:0] a;
wire[3:0] gray;

gray_code uut(a,gray);

integer i;

initial begin
$display(" a | gray");
for(i=0;i<16;i=i+1)begin
a=i;
#10;
$display(" %b | %b ",a,gray);
end
$finish;
end 
endmodule 