`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 24.07.2023 05:57:04
// Design Name: 
// Module Name: tb_demux_4x1
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


module tb_demux_4x1;
    reg s0, s1, d;
    wire y0, y1, y2, y3;
    
    demux_4x1 DEMUX(.s0(s0),
              .s1(s1),
              .y0(y0),
              .y1(y1),
              .y2(y2),
              .y3(y3),
              .d(d)
              );
              
    initial begin
        d = 1;
        s0 = 0; s1 = 0;
        #5 s0 = 0; s1 = 1;
        #5 s0 = 1; s1 = 0;
        #5 s0 = 1; s1 = 1;
        #10 $stop;
    end
    
endmodule
