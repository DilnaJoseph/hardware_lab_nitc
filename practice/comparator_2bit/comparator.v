module comparator(input[3:0] a,b,output equal,greater,lesser);

  wire e0,e1,e2,e3,g0,g1,g2,g3,l0,l1,l2,l3;
  wire eq1,eq2,gr1,gr2,gr3,gr4,gr5,ls1,ls2,ls3,ls4,ls5;
  
  comparator(a[0],b[0],e0,g0,l0);
  comparator(a[1],b[1],e1,g1,l1);
  comparator(a[2],b[2],e2,g2,l2);
  comparator(a[3],b[3],e3,g3,l3);

  and(eq1,e0,e1);
  and(eq2,e2,e3);
  and(equal,eq1,eq2);

  and(gr1,eq2,e1);
  and(gr2,gr1,g0);
  and(gr3,g1,eq2);
  and(gr4,g2,e3);
  or(gr5,gr4,gr3);
  or(greater,gr2,gr3);

  and(ls1,eq2,e1);
  and(ls2,ls1,l0);
  and(ls3,l1,eq2);
  and(ls4,l2,e3);
  or(ls5,ls4,ls3);
  or(lesser,ls2,ls3);
  
endmodule
