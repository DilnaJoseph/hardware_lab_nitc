module alu(input[7:0] a,b,input[1:0]op,output reg[7:0] y);

always@(*)begin
case(op)
2'b00: y = a+b;
2'b01: y = a-b;
2'b10: y = a^b;
2'b11: y = a<<1;
default y = 8'b0;

endcase
end

endmodule