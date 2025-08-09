module comparator_tb;
  
  reg[3:0] a,b; 
  wire equal,greater,lesser;

  comparator uut(a,b,equal,greater,lesser);
  
  integer i,j;
  
  initial begin
    $display(" a b | equal greater lesser ");
    for(i=0;i<16;i=i+1)begin
      for(j=0;j<16;j=j+1)begin
         a = i;
         b = j;
        #10;
        $display(" %b %b | %b %b %b ",a,b,equal,greater,lesser)
    end
    end
    $finish;
  end
endmodule
