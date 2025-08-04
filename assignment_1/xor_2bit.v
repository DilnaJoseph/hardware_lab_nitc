module xor_2bit(input[1:0] a,b,output y0,y1);

xor(y0,a[0],b[0]);
xor(y1,a[1],b[1]);

endmodule