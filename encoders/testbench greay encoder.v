module tb;
  reg [3:0] binary;
  wire [3:0] gray;
  
  gray_encoder  utt (.binary(binary_input), .gray( gray_output));
  
  initial begin
    $monitor("Binary = %b, Gray = %b", binary, gray);
    
    binary = 4'b0000;
    #1; // Delay
    binary = 4'b0001;
    #1;
    binary = 4'b0010;
    #1;
    binary = 4'b0011;
    #1;
    binary = 4'b0100;
    #1;
    binary = 4'b0101;
    #1;
    binary = 4'b0110;
    #1;
    binary = 4'b0111;
    #1;
    binary = 4'b1000;
    #1;
    binary = 4'b1001;
    #1;
    binary = 4'b1010;
    #1;
    binary = 4'b1011;
    #1;
    binary = 4'b1100;
    #1;
    binary = 4'b1101;
    #1;
    binary = 4'b1110;
    #1;
    binary = 4'b1111;
    #1;
    
    $finish; // End simulation
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
  end
  
endmodule