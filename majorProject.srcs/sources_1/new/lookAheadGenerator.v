`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Vishal
// 
// Create Date: 04.09.2021 18:13:39
// Design Name: Look Ahead Generator 1.0 4-bit 
// Module Name: lookAheadGenerator
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


module lookAheadGenerator
parameter WIDTH = 4(
    output [4:1] carry,
    input [WIDTH-1:0] inp1, inp2,
    input cin
    );
    
wire [3:0] g,p;

assign g = inp1 & inp2; 
assign p = inp1 | inp2;

assign carry[1] = g[0] | (p[0] & cin);
assign carry[2] = g[1] | (g[0] & p[1]) | (p[1] & p[0] & cin); 
assign carry[3] = g[2] | (g[1] & p[2]) | (g[0] & p[2] & p[1]) | (p[2] & p[1] & p[0] & cin);
assign carry[4] = g[3] | (g[2] & p[3]) | (g[1] & p[3] & p[2]) | (g[0] & p[3] & p[2] & p[1]) | (p[3] & p[2] & p[1] & p[0] & cin);

endmodule
