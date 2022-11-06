// Copyright 2022 仲夏叶.
// SPDX-License-Identifier: CC-BY-NC-ND-4.0

// BCD7段译码器波形
`include "segment_decoder.v"
`timescale 1ns/100ps

module segment_decoder_tb;
reg [3:0] num;
reg rst;
wire [6:0] a_g;

segment_decoder segment_decoder(
    .num(num),
    .rst(rst),
    .a_g(a_g)
);

initial begin
    $dumpfile("segment_decoder_wave.vcd");
    $dumpvars(0, segment_decoder_tb);
end

initial begin
        num = 4'd0; rst = 1;
    #10 num = 4'd0; rst = 0;
end

always #5 num <= num + 1;

initial begin
    #500 $finish;
end

endmodule
