module half_adder(input a,b ,output sum,carry);
// sum = a xor b
// carry = a and b
xor(sum,a,b);
and(carry,a,b);

endmodule

