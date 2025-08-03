module full_adder_2bits(input[1:0] a,input[1:0]b,cin,output[1:0] sum,output cout);

wire carry1;

full_adder fa_0(
.a(a[0]),
.b(b[0]),
.cin(cin),
.sum(sum[0]),
.cout(carry1)
);

full_adder fa_1(
.a(a[1]),
.b(b[1]),
.cin(carry1),
.sum(sum[1]),
.cout(cout)
);

endmodule
