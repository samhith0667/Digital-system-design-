

module jkff(q,q_bar ,clk, reset,j, k);

input wire j,k,clk,reset;

output reg q,q_bar;

always @(posedge clk) begin

  if(reset)

            begin
            q=1'b0;
            q_bar=1'b1;
            end 
  else 

    begin
          case({j,k})
            {1'b0,1'b0}: begin q=q;q_bar=q_bar; end
            {1'b0,1'b1}: begin q=1'b0;q_bar=1'b1; end
            {1'b1,1'b0}: begin q=1'b1;q_bar=1'b0; end
            {1'b1,1'b1}: begin q=~q; q_bar=~q_bar; end
          endcase
    end
 end
endmodule











module mod16Counter(q, q_bar, clk, reset, j, k);

output  [3:0] q; output  [3:0] q_bar;

  input clk,reset, j, k ;

 jkff jk1 (q[0], q_bar[0], clk, reset, j, k);

 jkff jk2 (q[1], q_bar[1], q[0], reset, j, k);

 jkff jk3 (q[2], q_bar[2], q[1], reset, j, k);

 jkff jk4 (q[3], q_bar[3], q[2], reset, j, k);

endmodule