module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
	genvar i;
    wire[100:0] cout1;
    generate
        bcd_fadd instance1(a[3:0], b[3:0], cin, cout1[0], sum[3:0]);
        for(i=4; i < 399; i=i+4) begin : ripple_carry_adder1 
            bcd_fadd instance2(a[i+3:i], b[i+3:i], cout1[(i/4)-1], cout1[i/4], sum[i+3:i]);
        end
    endgenerate
    assign cout = cout1[99];
endmodule
