module TestBench;
  reg [3:0] A, B;
  wire [7:0] P;
  
  arraymultiplier am(A,B,P);
  
  initial begin
    $monitor("A = %b: B = %b --> P = %b, P(dec) = %0d", A, B, P, P);
    A = 1; B = 0; #3;
    A = 7; B = 5; #3;
    A = 8; B = 9; #3;
    A = 4'hf; B = 4'hf;
  end

  initial begin
    dumpfile("wave.vcd");
    dumvars();

  end
endmodule