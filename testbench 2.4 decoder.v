module decodertb ;

reg a,b;

wire  a1,a2,a3,a4;

decodertb uut(
.a(a),.b(b),   .a1(a1),.a2(a2),.a3(a3),.a4(a4) );

initial begin
    
    a = 0;
    b = 0;
    #10

     a = 0;
    b = 1;
    #10

     a = 1;
    b = 0;
    #10

     a = 1;
    b = 1;
    #10

    $finish;

     initial begin
        $monitor(" a = %b, b = %b, a1=%b, a2=%b, a3=%b, a4=%b ",  a, b, a1,a2,a3,a4);
    end





end



    
endmodule