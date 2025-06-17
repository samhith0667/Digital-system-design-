module mux21 (
  input A,
  input B,
  input sel,
  output Y
);

  assign Y = (sel == 0) ? A : B;

endmodule

module norgate (
    a,b,y
);

input a,b;
output y;

// assigining A=b-bar ,B=b ,sel=a 
mux21(.A(~b), .B(b), .sel(a), .y(y) );


    
endmodule