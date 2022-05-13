module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);

    always @(posedge clk) begin
        if(slowena || reset)
            q <= reset ? 0 : (q + 1)%10;
    end

endmodule
