module CLA_TB();



    // Inputs
    reg[7:0] A;
    reg[7:0] B;
    reg carryIn;

    // Outputs
    wire carryOut;
    wire[7:0] Sum;
    wire PG;
    wire GG;

    // port map  the 8-bit CLA
    CLA8Bit CLA8BitDUT (
    .A(A),
    .B(B),
    .carryIn(carryIn),
    .carryOut(carryOut),
    .Sum(Sum)
    );

    //simulation
    initial
        begin

        // Start with the carryIn set to 0
        assign carryIn = 0;

       
        // A = b0000 0001 and B = b0000 0001
        // Answer should be Sum = b0000 0010
        assign A = 8'b00000001;
        assign B = 8'b00000001;

        #10

      
       
        assign A = 8'b00011011;
        assign B = 8'b11010111;

        #10

        
      
        assign carryIn = 1'b1;
        assign A = 8'b01111011;
        assign B = 8'b11010011;

        #10

        $finish;


        end

initial begin
    dumpfile("wave.vcd");
    dumpvars;
end 


endmodule