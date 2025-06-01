module full_adder_tb;

  // Define the inputs and outputs for test bench
  reg a, b, cin;
  wire sum, cout;

  // portmap of testbench and fa module
 fa uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  
  //creating vcd file for wave form analysis
  
  initial begin 
    $dumpfile("wave.vcd");
    $dumpvars;
  end

 
  initial begin
    // Testing all possible input combinations
    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #10 $finish; // Stop the simulation
  end

endmodule