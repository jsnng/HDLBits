module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    wire [100:0] sum1; 
    assign sum1 = a + b + cin;
    assign sum = sum1[99:0];
    assign cout = sum1[100];
endmodule


