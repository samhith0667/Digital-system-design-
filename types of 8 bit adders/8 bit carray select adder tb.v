module tb_CSelA8;
  wire [7:0] sum;
  wire cout;
  reg [7:0] a, b;
  reg cin;

  CSelA8 csa8(sum[7:0], cout, a[7:0], b[7:0]);

  

  initial
  begin
    a=8'b10100000;
     b=8'b10100000;
     
    #10 a=8'b01011000; 
    b=8'b11110100;

    #10 a=8'b00111101; 
    b=8'b00001111;

    #10 a=8'b11001010;
     b=8'b11001000;

    #10 a=8'b10100110;
     b=8'b11110100;

    #10 a=8'b11110011;
     b=8'b11001100;

    #10 a=8'b11110011; 
    b=8'b01010111;



  end
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
