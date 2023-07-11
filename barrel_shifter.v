`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 11:09:32 PM
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(
    input [7:0] data,
    input [2:0] amt,
    output [7:0] out
    );

    mux_8_1 m0(data, amt, out[0]);
    mux_8_1 m1({data[0], data[7:1]}, amt, out[1]);
    mux_8_1 m2({data[1:0], data[7:2]}, amt, out[2]);
    mux_8_1 m3({data[2:0], data[7:3]}, amt, out[3]);
    mux_8_1 m4({data[3:0], data[7:4]}, amt, out[4]);
    mux_8_1 m5({data[4:0], data[7:5]}, amt, out[5]);
    mux_8_1 m6({data[5:0], data[7:6]}, amt, out[6]);
    mux_8_1 m7({data[6:0], data[7]}, amt, out[7]);
    
endmodule
