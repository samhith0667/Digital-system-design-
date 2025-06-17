// data flow architecture 
module fa (a, b, cin, sum, cout);
  // defining input output ports
  input a, b, cin;
  output sum, cout;

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);
endmodule