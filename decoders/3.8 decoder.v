
// data flow architecture 
module decoder (
    a,b,c,y
);
    
input a,b,c;
output[7:0]y;

assign y(0)=~a*~b*~c;

assign y(0)=~a*~b*c;

assign y(0)=~a*b*~c;

assign y(0)=~a*b*c;

assign y(0)=a*~b*~c;

assign y(0)=a*~b*c;

assign y(0)=a*b*~c;

assign y(0)=a*b*c;



endmodule