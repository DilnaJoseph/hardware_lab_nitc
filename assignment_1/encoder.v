module encoder(input[7:0]a,output reg[2:0]b,output reg v );

always @(*) begin
    // Default values for b and v in case no bits are set
    b = 3'b000;
    v = 0;

    if (a[7]) begin
        b = 3'b111; // MSB
        v = 1;
    end
    else if (a[6]) begin
        b = 3'b110;
        v = 1;
    end
    else if (a[5]) begin
        b = 3'b101;
        v = 1;
    end
    else if (a[4]) begin
        b = 3'b100;
        v = 1;
    end
    else if (a[3]) begin
        b = 3'b011;
        v = 1;
    end
    else if (a[2]) begin
        b = 3'b010;
        v = 1;
    end
    else if (a[1]) begin
        b = 3'b001;
        v = 1;
    end
    else if (a[0]) begin
        b = 3'b000;
        v = 1;
    end
end
endmodule