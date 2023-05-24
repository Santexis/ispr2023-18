############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ejercicio_ledMatrix
set_top ws2812
add_files ejercicio_ledMatrix/ws2812.h
add_files ejercicio_ledMatrix/ws2812.cpp
add_files -tb ejercicio_ledMatrix/test_ws2812.cpp
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./ejercicio_ledMatrix/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
