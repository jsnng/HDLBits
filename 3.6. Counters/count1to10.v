module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    
    wire [3:0] q1;
    always @(posedge clk) begin
        if(reset || q == 10)
            q <= 1;
        else
            q <= q + 1;
    end
    
endmodule
