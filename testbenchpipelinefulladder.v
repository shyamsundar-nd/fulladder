`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 22:54:45
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk;
reg rst;
reg  [3:0]a;
reg  [3:0]b;
reg cin;
wire[3:0]sum;
wire cout;
pipelinefulladder uut(.clk(clk), .rst(rst), .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
clk<=1'b0;
forever #5 clk<=~clk;
end
initial begin
rst<=1;
#50 rst<=0;
#500 $finish;
end
initial
begin
a<=4'b0000;
b<=4'b0000;
cin<=1'b0;
#500 $finish;
end
always
begin
#40 a<=~a;
end
always
begin
#20 b<=~b;
end
always
begin
#10 cin<=~cin;
end



   
endmodule
