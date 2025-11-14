`timescale 1ns / 1ps
module ripple_counter(
    input clk,
    input rst,
    output q0,
    output q1,
    output q2
    );
   
   t_flipflop tff0(
   .clk(clk),
   .rst(rst),
   .t(1'b1),
   .q(q0)
   );
   
   t_flipflop tff1(
   .clk(q0),
   .rst(rst),
   .t(1'b1),
   .q(q1)
   );
   
   t_flipflop tff2(
   .clk(q1),
   .rst(rst),
   .t(1'b1),
   .q(q2)
   );
   
   
endmodule
