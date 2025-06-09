
// stuctural architecture 
module decoder24 ( a,b,a1,a2,a3,a4
   
);

 input a,b;
output a1,a2,a3,a4;

wire n1,n2;

not N0(n1,a);
not N1(n2,b);

and A0(a1,n1,n2);

and A1( a2,n1,b);

and A2( a3,a,n2);

and A3(a4,a,b);


    
endmodule