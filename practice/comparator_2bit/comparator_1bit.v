module comparator_1bit(input a,b,output equal,greater,lesser);
  
  wire na,nb,ne;
  
  xor(ne,a,b);
  not(equal,ne);
  not(na,a);
  not(nb,b);
  and(greater,a,nb);
  and(lesser,na,b);
  
endmodule
