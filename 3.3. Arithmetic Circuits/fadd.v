module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = cin ^ (a ^ b);
    assign cout = a & b | b & cin | a & cin;
endmodule
