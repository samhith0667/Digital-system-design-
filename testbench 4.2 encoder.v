module encoder_4_2_test;
reg a,b,c,d;
wire x,y;

encoder_4_2 encoder_4_2_test(a,b,c,d,x,y);
initial

begin
 a=0; b=0;c=0;d=1;
 #10
 a=0; b=0;c=1;d=0;
 #10
 a=0; b=1;c=0;d=0;
  #10
 a=1; b=0;c=0;d=0;
  #10 
  $finish
end

initial
begin
$monitor($time,"a=%b,b=%b,c=%b,d=%b,x=%b,y=%b",a,b,c,d,x,y);
end

initial begin 
    $dumpfile("wave.vcd");
    $dumpvars();
end
    
endmodule