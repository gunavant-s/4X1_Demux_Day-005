`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 24.07.2023 05:49:43
// Design Name: 
// Module Name: demux_4x1
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


module demux_4x1(input s0,
                 input s1,
                 input d,
                 output y0,
                 output y1,
                 output y2,
                 output y3);
                 
    assign y0 = ~s0 & ~s1 & d;
    assign y1 = ~s0 & s1 & d;
    assign y2 = s0 & ~s1 & d;
    assign y3 = s0 & s1 & d;  
    
endmodule
