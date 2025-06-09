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

// assigining A=a ,B=a-bar ,sel=b  
mux21(.A(a), .B(~a), .sel(b), .y(y) );


    
endmodule