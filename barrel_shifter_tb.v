`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2023 11:14:16 PM
// Design Name: 
// Module Name: barrel_shifter_tb
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


module barrel_shifter_tb();

    reg [7:0] data;
    reg [2:0] amt;
    wire [7:0] out;
    
    barrel_shifter dut(data, amt, out);
    
    initial 
    begin
        data= 8'hf0;
        amt=0;
        forever #10 amt= amt+1;
    end
    
    initial 
    begin
        $monitor("data = %b, amt: %d, out = %b", data, amt, out);
        #80;
        $finish;
    end
endmodule
