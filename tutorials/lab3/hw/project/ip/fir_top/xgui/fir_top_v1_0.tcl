# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXI_FIR_IO_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_FIR_IO_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_ACTIVE_LOW" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_FIR_IO_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_FIR_IO_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH { PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_FIR_IO_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH { PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_FIR_IO_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.RESET_ACTIVE_LOW { PARAM_VALUE.RESET_ACTIVE_LOW } {
	# Procedure called to update RESET_ACTIVE_LOW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_ACTIVE_LOW { PARAM_VALUE.RESET_ACTIVE_LOW } {
	# Procedure called to validate RESET_ACTIVE_LOW
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_FIR_IO_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_FIR_IO_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.RESET_ACTIVE_LOW { MODELPARAM_VALUE.RESET_ACTIVE_LOW PARAM_VALUE.RESET_ACTIVE_LOW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_ACTIVE_LOW}] ${MODELPARAM_VALUE.RESET_ACTIVE_LOW}
}

