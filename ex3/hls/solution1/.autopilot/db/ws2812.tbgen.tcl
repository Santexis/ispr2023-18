set C_TypeInfoList {{ 
"ws2812" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"stream": [[], {"reference": "0"}] }, {"out": [[],{ "pointer": "1"}] }],[],""], 
"1": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"0": [ "stream<ap_axiu<256, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<256, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 256}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "1"]},{ "last": [[], "1"]},{ "id": [[], "1"]},{ "dest": [[], "1"]}],""]}], 
"4": [ "ap_uint<256>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 256}}]],""]}}], 
"5": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName ws2812
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ws2812}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_V_data_V int 256 regular {axi_s 0 volatile  { stream Data } }  }
	{ stream_V_keep_V int 32 regular {axi_s 0 volatile  { stream Keep } }  }
	{ stream_V_strb_V int 32 regular {axi_s 0 volatile  { stream Strb } }  }
	{ stream_V_user_V int 1 regular {axi_s 0 volatile  { stream User } }  }
	{ stream_V_last_V int 1 regular {axi_s 0 volatile  { stream Last } }  }
	{ stream_V_id_V int 1 regular {axi_s 0 volatile  { stream ID } }  }
	{ stream_V_dest_V int 1 regular {axi_s 0 volatile  { stream Dest } }  }
	{ out_V int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "stream.V.data.V","cData": "uint256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_keep_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream.V.keep.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_strb_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream.V.strb.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_TDATA sc_in sc_lv 256 signal 0 } 
	{ stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ stream_TKEEP sc_in sc_lv 32 signal 1 } 
	{ stream_TSTRB sc_in sc_lv 32 signal 2 } 
	{ stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ stream_TID sc_in sc_lv 1 signal 5 } 
	{ stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_V sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "stream_V_data_V", "role": "default" }} , 
 	{ "name": "stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V_user_V", "role": "default" }} , 
 	{ "name": "stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V_last_V", "role": "default" }} , 
 	{ "name": "stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V_id_V", "role": "default" }} , 
 	{ "name": "stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ws2812",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ws2812_led_fu_168"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ws2812_led_fu_168"}],
		"Port" : [
			{"Name" : "stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ws2812_led_fu_168", "Port" : "out_V"}]},
			{"Name" : "odd_column", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ws2812_led_fu_168", "Parent" : "0",
		"CDFG" : "ws2812_led",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "led_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	ws2812 {
		stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite 2}
		odd_column {Type IO LastRead -1 FirstWrite -1}}
	ws2812_led {
		led_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24419", "Max" : "29420"}
	, {"Name" : "Interval", "Min" : "24420", "Max" : "29421"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_V_data_V { axis {  { stream_TDATA in_data 0 256 } } }
	stream_V_keep_V { axis {  { stream_TKEEP in_data 0 32 } } }
	stream_V_strb_V { axis {  { stream_TSTRB in_data 0 32 } } }
	stream_V_user_V { axis {  { stream_TUSER in_data 0 1 } } }
	stream_V_last_V { axis {  { stream_TLAST in_data 0 1 } } }
	stream_V_id_V { axis {  { stream_TID in_data 0 1 } } }
	stream_V_dest_V { axis {  { stream_TVALID in_vld 0 1 }  { stream_TREADY in_acc 1 1 }  { stream_TDEST in_data 0 1 } } }
	out_V { ap_none {  { out_V out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
