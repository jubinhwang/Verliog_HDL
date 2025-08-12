module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   
);
    wire w_a_b, w_c_d, w_middle;
    
    assign w_c_d = c&d;
    assign w_a_b = a&b;
    assign w_middle = (w_c_d|w_a_b);
    assign out = w_middle;
    assign out_n = ~(w_middle);

endmodule
