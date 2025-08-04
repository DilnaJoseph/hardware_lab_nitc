module comparator_2bit(input[1:0]a,input[1:0]b,output equal,greater,lesser);

// equal = (a1 XNOR b1) AND (a0 XNOR b0) 
//greater = (a1 AND ~b1) OR ((a1 XNOR b1) AND a0 AND ~b0)
//lesser = (~a1 AND b1) OR ((a1 XNOR b1) AND ~a0 AND b0)

wire a1,a0,b1,b0,nb1,nb0,na0,na1,g1,g2,g3,l1,l2,l3,x1,x2;

assign a1 = a[1];
assign a0 = a[0];
assign b1 = b[1];
assign b0 = b[0];

xnor(x1,a1,b1);
xnor(x2,a0,b0);
and(equal,x1,x2);

not(nb1,b1);
not(nb0,b0);
not(na1,a1);
not(na0,a0);

and(g1,a1,nb1);
and(g2,x1,a0);
and(g3,g2,nb0);
or(greater,g1,g3);

and(l1,na1,b1);
and(l2,x1,na0);
and(l3,l2,b0);
or(lesser,l1,l3);


endmodule
