`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2023 09:49:48 AM
// Design Name: 
// Module Name: piso_shift_reg
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


module piso_shift_reg(clk,rst,in,Q,load,in,d);
input clk,rst;
input [3:0]in;
input [2:0] d;
output Q;
wire [3:0] q;
input load;


assign d[0] = load ? q[0]:in[1] ;
assign d[1] = load ? q[1]:in[2] ;
assign d[2] = load ? q[2]: in[3];


D_ff d1(clk,rst,in[0],q[0]);
D_ff d2(clk,rst,d[0],q[1]);
D_ff d3(clk,rst,d[1],q[2]);
D_ff d4(clk,rst,d[2],Q);



endmodule

