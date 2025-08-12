`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/12 19:31:58
// Design Name: 
// Module Name: 08_7458
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y 
);

wire w_p1_abc, w_p2ab, w_p2cd, w_p1def;

assign w_p1_abc = (p1a&p1c&p1b);
assign w_p2ab = (p2a&p2b);
assign w_p2cd = (p2c&p2d);
assign w_p1def = (p1d&p1e&p1f);
assign p2y = (w_p2ab|w_p2cd);
assign p1y = (w_p1def|w_p1_abc);

endmodule

