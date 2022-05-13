module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    
    wire [3:0] q1;
    always @(posedge clk) begin
        q <= reset ? 0 : (q + 1)%10;
    end
    
endmodule


