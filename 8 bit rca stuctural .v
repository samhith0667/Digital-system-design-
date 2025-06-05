// data flow architecture 
module fa (a, b, cin, sum, cout);
  // defining input output ports
  input a, b, cin;
  output sum, cout;

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);
endmodule


module rca (
    input [7:0] a ,
input [7:0] b , 
input cin , 
output cout, 
output [7:0] s);

wire [7:0] c;

fa fa0(a[0],b[0],cin,c[0],s[0]);

fa fa1(a[1],b[1],c[0],c[1],s[1]);

fa fa2(a[2],b[2],c[1],c[2],s[2]);

fa fa3(a[3],b[3],c[2],c[3],s[3]);

fa fa4(a[4],b[4],c[3],c[4],s[4]);

fa fa5(a[5],b[5],c[4],c[5],s[5]);

fa fa6(a[6],b[6],c[5],c[6],s[6]);

fa fa7(a[7],b[7],c[6],cout,s[7]);






    
endmodule