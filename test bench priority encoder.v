module testbenchpencoder;

 reg Y0,Y1,Y2,Y3;
 wire A0,A1;
 
 // Instantiate the Unit Under Test (UUT)
pencoder uut (.A0(A0), .A1(A1), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3));



 initial 
begin

 // Initialize Inputs
Y0,Y1,Y2,Y3 = 0;

 #100;        


Y0=0,Y1=1,Y2=1,Y3=0;
#10
Y0=1,Y1=1,Y2=1,Y3=0;
#10
Y0=1,Y1=1,Y2=1,Y3=1;
#10
Y0=0,Y1=1,Y2=1,Y3=1;
#10

 end 
 initial begin
   $dumpfile("wave.vcd");
   $dumpvars();
   
 end      
endmodule