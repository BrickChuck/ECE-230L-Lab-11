module rip(
input clk, rst,
output st1, st2, st3
);

wire first;
wire second;
assign first=st1;
assign second=st2;

Tflip stage1(
.T(1'b1),
.clk(clk),
.rst(rst),
.Q(first)
);

Tflip stage2(
.T(1'b1),
.clk(first),
.rst(rst),
.Q(second)
);

Tflip stage3(
.T(1'b1),
.clk(second),
.rst(rst),
.Q(st3)
);




endmodule
