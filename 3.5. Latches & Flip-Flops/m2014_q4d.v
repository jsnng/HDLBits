module top_module (
    input clk,
    input in, 
    output out);
    
    wire xor1;
    assign xor1 = in ^ out;
    always @(posedge clk)
        out <= xor1;
endmodule
