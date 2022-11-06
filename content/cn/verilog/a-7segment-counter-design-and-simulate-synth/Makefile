# Copyright 2022 仲夏叶.
# SPDX-License-Identifier: CC-BY-NC-ND-4.0

.PHONY: show

NAME=counter
# NAME=segment_decoder

show: graph
	gtkwave ${NAME}_wave.vcd

compile:
	iverilog -o ${NAME}_tb.v.out ${NAME}_tb.v

graph: compile
	vvp ${NAME}_tb.v.out

synthesis:
	yosys ${NAME}_rtl.ys

clean:
	rm ${NAME}_tb.v.out ${NAME}_wave.vcd ${NAME}_synth.v ${NAME}.dot