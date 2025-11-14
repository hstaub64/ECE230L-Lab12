module modulo_counter(
    input clk,
    input rst,
//    output q0,
//    output q1,
//    output q2,
    output [2:0] Q,
    output out
    );
    
    wire count [2:0];
    wire compare_reset;
    wire count_rst;
    wire [2:0] sum;
    
    wire five;
  
    
    full_adder zero(
        .a(Q[0]),
        .b(1'b1),
        .cin(1'b0),
        .sum(sum[0]),
        .cout(count[0])
    );
    
    full_adder one(
        .a(Q[1]),
        .b(1'b0),
        .cin(count[0]),
        .sum(sum[1]),
        .cout(count[1])
 );
    
    full_adder two(
        .a(Q[2]),
        .b(1'b0),
        .cin(count[1]),
        .sum(sum[2]),
        .cout(count[2])
    );
    
    assign compare_reset = (Q == 3'b110);
    
    assign count_rst = rst | compare_reset;
    
    d_flipflop dff0(
        .clk(clk),
        .rst(count_rst),
        .d(sum[0]),
        .q(Q[0])
   );
   
   d_flipflop dff1(
        .clk(clk),
        .rst(count_rst),
        .d(sum[1]),
        .q(Q[1])
);

    d_flipflop dff2(
        .clk(clk),
        .rst(count_rst),
        .d(sum[2]),
        .q(Q[2])
);
// think using tenure conditoin (condition stament )   x = ? : 

assign compare_reset = !(sum == 3'b000) ? (compare_reset ^ out) : 1'b0;

//reg out_d;
//always @(*) begin
//if (compare_reset)
//    out_d = ~out;
//    else
//    out_d = out;
//end


d_flipflop dff_out (
    .clk(clk),
    .rst(rst),
    .d(compare_reset),
    .q(out)
);

    
endmodule
