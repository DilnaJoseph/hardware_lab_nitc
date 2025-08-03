module half_adder(input a,b,cin,output sum,cout);

// sum = a xor b xor cin
// cout = a.b + cin.(a xor b)

wire xor_1,sum_1,sum_2;

xor(xor_1,a,b);
xor(sum,xor_1,cin);

and(sum_1,a,b);
and(sum_2,cin,xor_1);
or(cout,sum_1,sum_2);

endmodule