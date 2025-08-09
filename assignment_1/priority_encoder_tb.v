module priority_encoder_tb;

reg[3:0] a;
wire[1:0] b;
wire v;

priority_encoder uut(a,b,v);

integer i;
initial begin
$display(" a | b v");
for(i=0;i<16;i=i+1)begin
a = i;
#10;
$display(" %b | %b %b ",a,b,v);
end
$finish; 
end
endmodule