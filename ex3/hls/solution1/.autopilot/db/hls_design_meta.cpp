#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("stream_TDATA", 256, hls_in, 0, "axis", "in_data", 1),
	Port_Property("stream_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("stream_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("stream_TKEEP", 32, hls_in, 1, "axis", "in_data", 1),
	Port_Property("stream_TSTRB", 32, hls_in, 2, "axis", "in_data", 1),
	Port_Property("stream_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("stream_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("stream_TID", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("stream_TDEST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("out_V", 1, hls_out, 7, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "ws2812";
