    module bcdcounter( clk, rst, bcd_out);
    input clk, rst;
    output [3:0] bcd_out;
    reg [3:0] bcd_out;
    reg [22:0] div;
    reg clkdiv;

    initial begin
        bcd_out = 4'd0;
        div = 23'd0;
        clkdiv = 1'b0;
    end

    always @ (posedge clk) begin
        div <= div + 1'b1;
        clkdiv <= div[22];
    end

    always @ (posedge clkdiv) begin
        if (rst)
            bcd_out <= 4'd0;
        else if(bcd_out < 4'd9)
            bcd_out <= bcd_out + 4'd1;
        else
            bcd_out <= 4'd0;
    end

initial begin
    dumpfile("wave.vcd");
    dumpvars();
end
endmodule