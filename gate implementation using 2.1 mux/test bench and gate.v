module and_gate_tb;
reg a,b;
wire y;

and_gate_s uut(a,b,y);

initial begin
a = 0; b = 0;
#10
b = 0; b = 1;
#10
a = 1; b = 0;
#10
b = 1; b = 1;
#10
$finish();
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars()
end
                
endmodule