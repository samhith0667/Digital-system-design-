module tb;
  reg a[7:0], b[7:0], cin;
  wire cout, s[7:0];
  rca uut(.a(a), .b(b), .cin(cin), .cout(cout),.s(s));

  initial begin
    // Test case 1:  a = 1, b = 0, cin = 0
    a = 8'b00000001;
    b = 8'b00000000;
    cin = 1'b0;
    #10
    // Test case 2: a = 1, b = 0, cin = 1
    a = 8'b00000001;
    b = 8'b00000000;
    cin = 1'b1;
    #10
    // Test case 3: a = 1, b = 1, cin = 0
    a = 8'b00000001;
    b = 8'b00000001;
    cin = 1'b0;
    #10
    // Test case 4: a = 1, b = 1, cin = 1
    a = 8'b00000001;
    b = 8'b00000001;
    cin = 1'b1;
    #10
    $finish;
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars; 
  end
    
endmodule