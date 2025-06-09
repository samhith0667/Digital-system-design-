// Code your testbench here
// or browse Examples
module decodertb ;

reg a,b,c;

wire  [7:0]y;

decodertb uut(
.a(a),.b(b), .c(c), .y(y));

initial begin
    
    a = 0;
    b = 0;
    c=0;
    #10

     a = 0;
    b = 1;
    c=0;
    #10

     a = 1;
    b = 0;
       c=0;
    #10

     a = 1;
    b = 1;
       c=0;
    #10

     a = 0;
    b = 0;
    c=1;
    #10

     a = 0;
    b = 1;
    c=1;
    #10

     a = 1;
    b = 0;
       c=1;
    #10

     a = 1;
    b = 1;
       c=1;
    #10

    $finish;
end

     initial begin
        $monitor(" a = %b, b = %b, a1=%b, a2=%b, a3=%b, a4=%b ",  a, b, a1,a2,a3,a4);
    end
  
  initial begin 
    $dumpfile("wave.vcd"); 
    $dumpvars;
    
  end









    
endmodule