module top_module ( input [1:0] A, input [1:0] B, output z ); 
    wire intermediate_result1, intermediate_result2;
    always @(*) begin
        intermediate_result1 = A[0] == B[0] ? 1 : 0;
        intermediate_result2 = A[1] == B[1] ? 1 : 0;
        z = intermediate_result1 & intermediate_result2;
    end
endmodule
