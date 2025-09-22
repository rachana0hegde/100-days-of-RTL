@echo off
iverilog -o mux4x1.vvp mux4x1.v tb_mux4x1.v
vvp mux4x1.vvp
gtkwave mux4x1.vcd
