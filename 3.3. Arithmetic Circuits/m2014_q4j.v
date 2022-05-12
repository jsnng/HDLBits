module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [3:0] cout;
    genvar i;
    generate
        fadd instance0(x[0],y[0],1'b0,cout[0], sum[0]);
        for(i=1;i<4;i++) begin : four_bit_adder
            fadd instance1(x[i],y[i], cout[i-1],cout[i], sum[i]);
        end
    endgenerate
    assign sum[4] = cout[3];
endmodule

module fadd(input a, b, cin, output cout, sum);
    assign sum = cin ^ (a ^ b);
    assign cout = a & b | b & cin | a & cin;
endmodule
