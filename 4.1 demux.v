module demux14(
    input d,
    input s0,
    input s1,
    output y0,
    output y1,
    output y2,
    output y3
    );
assign s1n = ~ s1;
assign s0n = ~ s0;
assign y0 = d& s0n & s1n;
assign y1 = d & s0 & s1n;
assign y2 = d & s0n & s1;
assign y3 = d & s0 & s1;
endmodule
