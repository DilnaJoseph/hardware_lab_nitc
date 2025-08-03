module full_adder_2bits_tb;

reg[1:0] a,b;
reg cin;
wire[1:0] sum;
wire cout;

full_adder_2bits uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);

integer i;

initial begin
$display (" a b cin | sum cout");

for (i=0;i<32;i=i+1) begin
a = i[4:3];
b = i[2:1];
cin = i[0];
#10;
$display("%b %b %b | %b %b",a,b,cin,sum,cout);
end

$finish;
end
endmodule