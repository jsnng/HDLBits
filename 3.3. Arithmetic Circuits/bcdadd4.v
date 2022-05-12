module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [4:0] cout1;
    genvar i;
    generate
        bcd_fadd(a[3:0],b[3:0],cin,cout1[0],sum[3:0]);
        for(i=1;i<4;i++) begin : ripple_bcd_fadd1
            bcd_fadd(a[4*i +:4],b[4*i +:4],cout1[i-1],cout1[i],sum[4*i +:4]);
        end
    endgenerate
    assign cout = cout1[3];

endmodule


