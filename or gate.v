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

// assigining A=a ,B=1 ,sel=b  
mux21(.A(a), .B(1'b0), .sel(b), .y(y) );


    
endmodule