module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] o1, o2, o3;
    my_dff8 instance1 (clk, d, o1);
    my_dff8 instance2 (clk, o1, o2);
    my_dff8 instance3 (clk, o2, o3);
    
    always @(d, sel, q) begin
    case(sel)
        2'b00: q = d;
        2'b01: q = o1;
        2'b10: q = o2;
        2'b11: q = o3;
    endcase
    end
endmodule
