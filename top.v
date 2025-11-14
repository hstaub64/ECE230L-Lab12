module top(
    input btnC,
    input btnU,
    output [6:0] led
);
// Ripple counter wires
wire ripple_q0, ripple_q1, ripple_q2;

// Modulo counter wires
wire [2:0] mod_Q;
wire mod_out;


ripple_counter ripple(
    .clk(btnC),
    .rst(btnU),
    .q0(ripple_q0),
    .q1(ripple_q1),
    .q2(ripple_q2)
);

assign led[0] = ripple_q0;
assign led[1] = ripple_q1;
assign led[2] = ripple_q2;

modulo_counter modulo(
    .clk(btnC),
    .rst(btnU),
//    .q0(mod_q0),
//    .q1(mod_q1),
//    .q2(mod_q2),
    .Q(mod_Q),
    .out(mod_out)
);

//assign led[3] = mod_q0;
//assign led[4] = mod_q1;
//assign led[5] = mod_q2;
assign led[5:3] = mod_Q;
assign led[6] = mod_out;

endmodule