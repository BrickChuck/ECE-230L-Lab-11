module Dflip(
    input clk, D, rst,
    output reg Q

);

    initial begin
        Q <= 0;
    end
    always @(posedge clk or posedge rst) begin
     if (rst) begin
     Q <= 0;
     end
     else begin
     Q<=D;
     end
     end
    //nQ<=~D;
   
 
   
endmodule