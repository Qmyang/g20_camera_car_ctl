# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_FRAME_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_LINES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE_ONE_LINE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hbp" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hfp" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hpixels" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hpulse" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vbp" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vfp" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vlines" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vpulse" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHANGE_FILTER { PARAM_VALUE.CHANGE_FILTER } {
	# Procedure called to update CHANGE_FILTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANGE_FILTER { PARAM_VALUE.CHANGE_FILTER } {
	# Procedure called to validate CHANGE_FILTER
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.READ_FRAME_START { PARAM_VALUE.READ_FRAME_START } {
	# Procedure called to update READ_FRAME_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_FRAME_START { PARAM_VALUE.READ_FRAME_START } {
	# Procedure called to validate READ_FRAME_START
	return true
}

proc update_PARAM_VALUE.READ_LINES { PARAM_VALUE.READ_LINES } {
	# Procedure called to update READ_LINES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_LINES { PARAM_VALUE.READ_LINES } {
	# Procedure called to validate READ_LINES
	return true
}

proc update_PARAM_VALUE.RESET_FILTERS_AFTER_WRITE { PARAM_VALUE.RESET_FILTERS_AFTER_WRITE } {
	# Procedure called to update RESET_FILTERS_AFTER_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_FILTERS_AFTER_WRITE { PARAM_VALUE.RESET_FILTERS_AFTER_WRITE } {
	# Procedure called to validate RESET_FILTERS_AFTER_WRITE
	return true
}

proc update_PARAM_VALUE.WRITE_ONE_LINE { PARAM_VALUE.WRITE_ONE_LINE } {
	# Procedure called to update WRITE_ONE_LINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_ONE_LINE { PARAM_VALUE.WRITE_ONE_LINE } {
	# Procedure called to validate WRITE_ONE_LINE
	return true
}

proc update_PARAM_VALUE.hbp { PARAM_VALUE.hbp } {
	# Procedure called to update hbp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hbp { PARAM_VALUE.hbp } {
	# Procedure called to validate hbp
	return true
}

proc update_PARAM_VALUE.hfp { PARAM_VALUE.hfp } {
	# Procedure called to update hfp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hfp { PARAM_VALUE.hfp } {
	# Procedure called to validate hfp
	return true
}

proc update_PARAM_VALUE.hpixels { PARAM_VALUE.hpixels } {
	# Procedure called to update hpixels when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hpixels { PARAM_VALUE.hpixels } {
	# Procedure called to validate hpixels
	return true
}

proc update_PARAM_VALUE.hpulse { PARAM_VALUE.hpulse } {
	# Procedure called to update hpulse when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hpulse { PARAM_VALUE.hpulse } {
	# Procedure called to validate hpulse
	return true
}

proc update_PARAM_VALUE.vbp { PARAM_VALUE.vbp } {
	# Procedure called to update vbp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vbp { PARAM_VALUE.vbp } {
	# Procedure called to validate vbp
	return true
}

proc update_PARAM_VALUE.vfp { PARAM_VALUE.vfp } {
	# Procedure called to update vfp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vfp { PARAM_VALUE.vfp } {
	# Procedure called to validate vfp
	return true
}

proc update_PARAM_VALUE.vlines { PARAM_VALUE.vlines } {
	# Procedure called to update vlines when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vlines { PARAM_VALUE.vlines } {
	# Procedure called to validate vlines
	return true
}

proc update_PARAM_VALUE.vpulse { PARAM_VALUE.vpulse } {
	# Procedure called to update vpulse when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vpulse { PARAM_VALUE.vpulse } {
	# Procedure called to validate vpulse
	return true
}


proc update_MODELPARAM_VALUE.hpixels { MODELPARAM_VALUE.hpixels PARAM_VALUE.hpixels } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hpixels}] ${MODELPARAM_VALUE.hpixels}
}

proc update_MODELPARAM_VALUE.vlines { MODELPARAM_VALUE.vlines PARAM_VALUE.vlines } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vlines}] ${MODELPARAM_VALUE.vlines}
}

proc update_MODELPARAM_VALUE.hpulse { MODELPARAM_VALUE.hpulse PARAM_VALUE.hpulse } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hpulse}] ${MODELPARAM_VALUE.hpulse}
}

proc update_MODELPARAM_VALUE.vpulse { MODELPARAM_VALUE.vpulse PARAM_VALUE.vpulse } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vpulse}] ${MODELPARAM_VALUE.vpulse}
}

proc update_MODELPARAM_VALUE.hbp { MODELPARAM_VALUE.hbp PARAM_VALUE.hbp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hbp}] ${MODELPARAM_VALUE.hbp}
}

proc update_MODELPARAM_VALUE.hfp { MODELPARAM_VALUE.hfp PARAM_VALUE.hfp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hfp}] ${MODELPARAM_VALUE.hfp}
}

proc update_MODELPARAM_VALUE.vbp { MODELPARAM_VALUE.vbp PARAM_VALUE.vbp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vbp}] ${MODELPARAM_VALUE.vbp}
}

proc update_MODELPARAM_VALUE.vfp { MODELPARAM_VALUE.vfp PARAM_VALUE.vfp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vfp}] ${MODELPARAM_VALUE.vfp}
}

proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.READ_FRAME_START { MODELPARAM_VALUE.READ_FRAME_START PARAM_VALUE.READ_FRAME_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_FRAME_START}] ${MODELPARAM_VALUE.READ_FRAME_START}
}

proc update_MODELPARAM_VALUE.READ_LINES { MODELPARAM_VALUE.READ_LINES PARAM_VALUE.READ_LINES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_LINES}] ${MODELPARAM_VALUE.READ_LINES}
}

proc update_MODELPARAM_VALUE.WRITE_ONE_LINE { MODELPARAM_VALUE.WRITE_ONE_LINE PARAM_VALUE.WRITE_ONE_LINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_ONE_LINE}] ${MODELPARAM_VALUE.WRITE_ONE_LINE}
}

proc update_MODELPARAM_VALUE.RESET_FILTERS_AFTER_WRITE { MODELPARAM_VALUE.RESET_FILTERS_AFTER_WRITE PARAM_VALUE.RESET_FILTERS_AFTER_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_FILTERS_AFTER_WRITE}] ${MODELPARAM_VALUE.RESET_FILTERS_AFTER_WRITE}
}

proc update_MODELPARAM_VALUE.CHANGE_FILTER { MODELPARAM_VALUE.CHANGE_FILTER PARAM_VALUE.CHANGE_FILTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANGE_FILTER}] ${MODELPARAM_VALUE.CHANGE_FILTER}
}

