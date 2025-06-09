module mux_2x1 (
  input A,
  input B,
  input sel,
  output Y
);

  assign Y = (sel == 0) ? A : B;

endmodule