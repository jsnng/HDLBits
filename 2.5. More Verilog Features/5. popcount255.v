module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    wire [7:0] ones;
    always @(*) begin
        ones = 0;
        for(i = 0; i < 255; i = i + 1)
            ones = ones + in[i];
        out <= ones;
    end
endmodule
