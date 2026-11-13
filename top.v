module top(
input btnC, btnU,
output [6:0]led
);

rip ripplecounter(
.clk(btnC),
.rst(btnU),
.st1(led[0]),
.st2(led[1]),
.st3(led[2])
);

modulecounter modcount(
.clk(btnC),
.rst(btnU),
.stb0(led[3]),
.stb1(led[4]),
.stb2(led[5]),
.mco(led[6])
);

endmodule