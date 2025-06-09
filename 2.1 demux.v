module demux21 (
    input  data,        
    input  sel,         
    output out0, out1   
);


assign out0 = ~sel & data;
assign out1 =  sel & data;

endmodule