

module ring_counter(
    Clock,
    Reset,
    Count_out
    );
    input Clock;
    input Reset;
    output [3:0] Count_out;
    reg [3:0] Count_temp;

   
    always @(posedge(Clock),Reset)
    begin
        if(Reset == 1'b1)   begin  //when Reset is high 

            Count_temp = 4'b0001;   end  //The Count value is reset to "0001".
            
        else if(Clock == 1'b1)  begin  //When the Clock is high

            //Left shift the Count value.
            Count_temp = {Count_temp[2:0],Count_temp[3]};   end 
    end
    

    assign Count_out = Count_temp;
    
endmodule