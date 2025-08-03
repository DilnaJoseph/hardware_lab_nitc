module substractor(input a,b,bin,output diff,bout);

// diff = a xor b xor bin 
// bout = (~a & b) | ((~a | b) & bin)

wire d1,na,b1,b2,b3;

xor(d1,a,b);
xor(diff,d1,bin);

not(na,a);
and(b1,na,b);
or(b2,na,b);
and(b3,b2,bin);
or(bout,b3,b1);

endmodule

