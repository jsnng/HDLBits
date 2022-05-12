module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    genvar i;
    generate
        fadd instance0 (a[0],b[0],cin,cout[0],sum[0]); 
        for(i=1;i<3;i=i+1) begin : ripple_adder3
            fadd instance1 (a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate
endmodule

module fadd(input a, input b, input cin, output cout, output sum);
    assign sum = cin^(a^b);
    assign cout = a & b | b & cin | a & cin;
endmodule
