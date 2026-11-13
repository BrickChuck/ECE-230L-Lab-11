module modulecounter(
input clk, rst,
output stb0, stb1, stb2, mco
);
wire q1;
wire D1;
wire carry1;
wire q2;
wire D2;
wire carry2;
wire q3;
wire D3;
wire carry3;
wire creset;
wire atcount;
wire outlogic;
wire qout;
assign atcount= (q1)&(~q2)&(q3);
assign creset= (rst)|(atcount);
assign outlogic= (qout)^(atcount);
assign stb0=q1;
assign stb1=q2;
assign stb2=q3;
assign mco=qout;

full_adder firstadd(
.Cin(1'b1),
.A(q1),
.B(1'b0),
.Y(D1),
.Cout(carry1)
);

Dflipm flip1(
.D(D1),
.clk(clk),
.rst(creset),
.Q(q1)
);

full_adder secondadd(
.Cin(carry1),
.A(q2),
.B(1'b0),
.Y(D2),
.Cout(carry2)
);

Dflipm flip2(
.D(D2),
.clk(clk),
.rst(creset),
.Q(q2)
);

full_adder thirdadd(
.Cin(carry2),
.A(q3),
.B(1'b0),
.Y(D3),
.Cout(carry3)
);

Dflipm flip3(
.D(D3),
.clk(clk),
.rst(creset),
.Q(q3)
);

Dflipm flipout(
.D(outlogic),
.clk(clk),
.rst(rst),
.Q(qout)
);


endmodule
