module comparator_1bit (input a,b,output equal,greater,lesser);

// equal = a xnor b = (a and b) + ((not a) and (not b))
//greater = a and (not b) 
//lesser = (not a) and b

wire na,nb,a1,a2;

not(na,a);
not(nb,b);
and(a1,a,b);
and(a2,na,nb);
or(equal,a2,a1);
and(greater,a,nb);
and(lesser,na,b);

endmodule
