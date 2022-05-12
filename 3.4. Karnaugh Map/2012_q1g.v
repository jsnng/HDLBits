module top_module (
    input [4:1] x,
    output f
); 
    // x1, x2, x3, x4
    // 1000, 0000
    // 1000, 1010 
    // 0111, 1111

    assign f = ~x[1]&x[3] | ~x[2]&~x[3]&~x[4] | x[1]&~x[2]&~x[4] | x[2]&x[3]&x[4]; 

endmodule


