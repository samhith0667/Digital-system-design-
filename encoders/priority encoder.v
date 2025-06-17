
// data flow architecture
module pencoder(A0,A1,Y0,Y1,Y2,Y3);
input Y0,Y1,Y2,Y3;
output A0,A1;

assign A1 = Y3 + Y2;
assign A0 = Y3 + ((~Y2)&Y1);

endmodule