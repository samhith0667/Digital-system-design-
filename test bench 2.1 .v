module mux_2x1_tb;

  reg A, B, sel;
  wire Y;

  mux_2x1 DUT (A, B, sel, Y);

  initial begin
    
    sel = 0;
    A = 1;
    B = 0;
    #10;  

    
    sel = 1;
    A = 1;
    B = 0;
    #10;

    
    sel = 0;
    A = 0;
    B = 1;
    #10;

    
    sel = 1;
    A = 0;
    B = 1;
    #10;

    $finish;
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
  end

endmodule