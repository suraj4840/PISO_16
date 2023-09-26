`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2023 11:38:25 AM
// Design Name: 
// Module Name: piso_shift_reg_tb
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


module piso_shift_reg_tb();
reg clk,rst,load;
reg [3:0] in;
reg [2:0] d;
wire Q;

piso_shift_reg  dut(clk,rst,in,Q,load,in,d);

initial 
begin
 rst=1'b1;
 clk=1'b0;
 load=1'b0;
 in = 4'b0000;
 #5
 rst=1'b0;
 
end

always #5 clk = ~clk;

initial  
begin
    in=4'b0000; 
    #10
    in =4'b0001; load =1'b0;
    #10
     in =4'b0010; load =1'b0;
    #10
    load =1'b1;
    
   #200
   $finish;
end   
    
 

endmodule
