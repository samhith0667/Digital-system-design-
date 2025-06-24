 module countertb;

    // Inputs

    reg clk;        reg reset;  reg j;  reg k;

    // Outputs

    wire [3:0] q;   wire [3:0] q_bar;

    // Instantiate the Unit Under Test (UUT)

    mod16asynCounter uut 

(.q(q),.q_bar(q_bar),.clk(clk),.reset(reset),.j(j),.k(k));

    initial begin

        // Initialize Inputs
    clk = 1;    reset = 1;  j = 1;  k = 1;
    // Wait 100 ns for global reset to finish
     #100   j = 1'b1; k = 1'b1;  reset = 0;    
     #100   j = 1'b1; k = 1'b1;  reset = 1;
     #100   j = 1'b1; k = 1'b1;  reset = 0;  
     #100   j = 1'b1; k = 1'b1;  reset = 1;  
     #100   j = 1'b1; k = 1'b1;  reset = 0;
     #100   j = 1'b1; k = 1'b1;  reset = 1;
      #100  j = 1'b1; k = 1'b1;  reset = 0;
      #100  j = 1'b1; k = 1'b1;  reset = 1;
      #100  j = 1'b1; k = 1'b1;  reset = 0;
 
end
always #50 clk <= ~clk;    

initial begin
    dumpfile("wave.vcd");
    dumpvars();
end
endmodule