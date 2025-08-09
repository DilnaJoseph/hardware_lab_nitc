module priority_encoder(input[3:0] a,output reg[1:0] b,output reg v);

// Y[1] = (I[3] | I[2])
// Y[0] = (I[3] | (~I[2]) * I[1])
// V = (I[3] | I[2] | I[1] | I[0]) 

always @(*)begin
 if(a[3])begin
 b = 2'b11;
 v = 1;
 end else if (a[2]) begin
 b = 2'b10;
 v = 1;
 end else if(a[1])begin
 b = 2'b01;
 v = 1;
 end else if(a[0])begin
 b = 2'b00;
 v = 1;
 end else begin
 b = 2'b00;
 v = 0;
 end
end

endmodule