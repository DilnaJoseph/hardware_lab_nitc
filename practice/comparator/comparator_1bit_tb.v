module comparator_1bit_tb;

reg a,b;
wire equal,greater,lesser;

comparator_1bit uut(a,b,equal,greater,lesser);

integer i;

initial begin 
$display("a b | equal greater lesser");

  a = 0; b = 0; #10;
  $display("%b %b |   %b      %b       %b", a, b, equal, greater, lesser);

  a = 0; b = 1; #10;
  $display("%b %b |   %b      %b       %b", a, b, equal, greater, lesser);

  a = 1; b = 0; #10;
  $display("%b %b |   %b      %b       %b", a, b, equal, greater, lesser);

  a = 1; b = 1; #10;
  $display("%b %b |   %b      %b       %b", a, b, equal, greater, lesser);

$finish;
end
endmodule