module mux21 (
  input A,
  input B,
  input sel,
  output Y
);

  assign Y = (sel == 0) ? A : B;

endmodule

module andgate (
    a,b,y
);

input a,b;
output y;
// assigining A=0 ,B=a ,sel=a, 
mux21(.A(0'b0), .B(a), .sel(b), .y(y) );


    
endmodule