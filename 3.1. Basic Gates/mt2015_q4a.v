module top_module (input x, input y, output z);
    mod_a instance1(.x(x), .y(y), .z(z));
endmodule

module mod_a (input x,input y, output z);
    assign z = (x^y) & x;
endmodule
