module counter_tb;
 reg clk;
 reg rst;
 wire [2:0] cnt;

 counter uut (
  .cnt(cnt), 
  .clk(clk), 
  .rst(rst)
 );

 always #5 clk = ~clk;
 
 initial begin
  clk = 1'b0;
  rst = 1'b0;
  #20 rst = 1'b1;
  #200 $finish;
 end
endmodule