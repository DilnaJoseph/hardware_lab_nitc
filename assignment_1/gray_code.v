module gray_code(input[3:0] a,output reg[3:0] gray );

// g[0] = b[0] xor b[1] 
// g[1] = b[1] xor b[2] 
// g[2] = b[2] xor b[3]
// g[3] = b[3]

always @(*)begin
 gray[3] = a[3];
 gray[2] = a[3] ^ a[2];
 gray[1] = a[2] ^ a[1];
 gray[0] = a[1] ^ a[0];
end 
 
endmodule