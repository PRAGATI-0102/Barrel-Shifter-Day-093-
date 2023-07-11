`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 11:05:24 PM
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
    input [7:0] i,
    input [2:0]s,
    output y_out
    );
    
    wire [1:0]w;
    
    mux_4_1 m1(i[3:0], s[1:0], w[0]);
    mux_4_1 m2(i[7:4], s[1:0], w[1]);
    mux_2_1 m3(w, s[2], y_out);
    
  endmodule     