module top_module (input x, input y, output z);
    
    wire z1, z2, z3, z4, a, b;
    
    module_a ia1 (x, y, z1);
    module_b ia2 (x, y, z2);
    module_a ia3 (x, y, z3);
    module_b ia4 (x, y, z4);
    
    assign a = z1 | z2;
    assign b = z3 & z4;
    assign z = a ^ b;
endmodule

module module_a (input x, input y, output z);
    assign z = (x^y)&x;
endmodule

module module_b (input x, input y, output z);
    assign z = ~(x^y);
endmodule
