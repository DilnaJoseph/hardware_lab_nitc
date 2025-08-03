module substractor_2bit(input[1:0]a,input[1:0]b,input bin,output[1:0]diff,output bout);

wire w1;

substractor s_1(a[0],b[0],bin,diff[0],w1);

substractor s_2(a[1],b[1],w1,diff[1],bout);

endmodule

