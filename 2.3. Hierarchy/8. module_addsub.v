module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] b1;
    wire[15:0] sum1, sum2;
    wire cout1, cout2;
    
    always @(b, sub) begin
        case(sub)
            1'b0 : b1 = b;
            1'b1 : b1 = ~b;
        endcase
    end
   	
    add16 instance1 (a[15:0], b1[15:0], sub, sum1, cout1);
    add16 instance2 (a[31:16], b1[31:16], cout1, sum2, cout2);
    
    assign sum = {sum2, sum1};

endmodule
