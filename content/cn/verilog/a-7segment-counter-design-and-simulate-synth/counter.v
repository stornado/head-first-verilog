// Copyright 2022 仲夏叶.
// SPDX-License-Identifier: CC-BY-NC-ND-4.0

// 计数器
module counter(
    clk,
    rst,
    count
);

input           clk, rst;
output [3:0]    count;

reg[3:0]        temp;
wire[3:0]       count;

assign count = temp;

always @(posedge clk or negedge rst) begin
    if(~rst) begin
        temp <= 0;
    end
    else begin
        temp <= temp + 1;
    end
end

endmodule
