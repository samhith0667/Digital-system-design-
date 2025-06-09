module testbench_bcd_encoder;

  
  reg [3:0] decimal_input;
  wire [3:0] bcd_output;

  // port maping 
  bcdencoder dut (
    .decimal_input(decimal_input),
    .bcd_output(bcd_output)
  );

  
  initial begin
    
    decimal_input = 4'b0000; #10;

    decimal_input = 4'b0001; #10;

    decimal_input = 4'b0010; #10;

    decimal_input = 4'b0011; #10;

    decimal_input = 4'b0100; #10;

    decimal_input = 4'b0101; #10;

    decimal_input = 4'b0110; #10;

    decimal_input = 4'b0111; #10;

    decimal_input = 4'b1000; #10;

    decimal_input = 4'b1001; #10;


    // Stop simulation after testing all inputs
    $finish;
  end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
end




endmodule