// data structural architecture 
module fa (a, b, cin, sum, cout);
  // defining input output ports
  input a, b, cin;
  output sum, cout;
  wire s1,n1,n2,n3,n4;

// using gate level implementation 
  xor(s1,a,b);
  xor(sum,s1,cin);

  and(n1,a,b);
  and(n2,b,cin);
  and(n3,a,cin);

  or(n4,n2,n1);
  or(cout,n4,n3);






endmodule