// 4bit cla data flow
module CLA4Bit(A, B, carryIn, carryOut, PG, GG, Sum);
    input[3:0] A, B;
    input carryIn;
    output carryOut;

    output PG;
    output GG;

    output[3:0] Sum;

    wire[3:0] G, P, C;

    assign G = A & B;
    assign P = A ^ B;
    assign Sum = P ^ C;

    assign C[0] = carryIn;

    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);

    assign PG = P[3] & P[2] & P[1] & P[0];
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
endmodule

// 8 bit cla 
module CLA8Bit(A, B, carryIn, carryOut, Sum);

 // inputs 
    input[7:0] A, B;


    input carryIn;

   // outputs 
    output carryOut;

   
    output[7:0] Sum;

    // Wires for the propagate of the first 4-bit block p3
    // and the second p7
    wire p3, p7;

    // Wires for the generate of the first 4-bit block g3
    // and the second g7
    wire g3, g7;

    // Wires for the carry of the first block c3 and the
    // second c7
    wire c3, c7;

    // using 4 bit cla as block to create 8 bit cla

    CLA4Bit block1(A[3:0], B[3:0], carryIn, c3, p3, g3, Sum[3:0]);

    CLA4Bit block2(A[7:4], B[7:4], c3, c7, p7, g7, Sum[7:4]);
endmodule