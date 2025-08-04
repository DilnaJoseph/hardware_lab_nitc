module parity_generator(input[1:0] a,output even,odd);

// even = A xor B
// odd =  ~(A xor B)

xor(even,a[1],a[0]);
not(odd,even);

endmodule 