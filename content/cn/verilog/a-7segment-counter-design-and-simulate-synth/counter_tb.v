// Copyright 2022 仲夏叶.
// SPDX-License-Identifier: CC-BY-NC-ND-4.0

// 计数器波形
`include "counter.v"
`timescale 1ns/100ps

module counter_tb;
reg clk, rst;
wire [3:0] count;

counter counter(
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial begin
    $dumpfile("counter_wave.vcd");
    $dumpvars(0, counter_tb);
end

initial begin
    clk = 0; rst = 0;
    #10 rst = 1;
end

always #5 clk <= ~clk;

initial begin
    #500 $finish;
end


endmodule
