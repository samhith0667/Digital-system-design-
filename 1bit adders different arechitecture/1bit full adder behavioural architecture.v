// data behavioural architecture 
module fa (a, b, cin, sum, cout);
  // defining input output ports
  input a, b, cin;
  output sum, cout;

  always @(*) begin
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);
  end

  
endmodule