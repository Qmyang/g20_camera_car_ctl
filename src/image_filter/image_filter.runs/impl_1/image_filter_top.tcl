proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir F:/image_filter/image_filter.cache/wt [current_project]
  set_property parent.project_path F:/image_filter/image_filter.xpr [current_project]
  set_property ip_repo_paths {
  f:/image_filter/image_filter.cache/ip
  F:/image_filter/image_filter.srcs
} [current_project]
  set_property ip_output_repo f:/image_filter/image_filter.cache/ip [current_project]
  add_files -quiet F:/image_filter/image_filter.runs/synth_1/image_filter_top.dcp
  link_design -top image_filter_top -part xc7a100tcsg324-1
  write_hwdef -file image_filter_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force image_filter_top_opt.dcp
  report_drc -file image_filter_top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force image_filter_top_placed.dcp
  report_io -file image_filter_top_io_placed.rpt
  report_utilization -file image_filter_top_utilization_placed.rpt -pb image_filter_top_utilization_placed.pb
  report_control_sets -verbose -file image_filter_top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force image_filter_top_routed.dcp
  report_drc -file image_filter_top_drc_routed.rpt -pb image_filter_top_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file image_filter_top_timing_summary_routed.rpt -rpx image_filter_top_timing_summary_routed.rpx
  report_power -file image_filter_top_power_routed.rpt -pb image_filter_top_power_summary_routed.pb -rpx image_filter_top_power_routed.rpx
  report_route_status -file image_filter_top_route_status.rpt -pb image_filter_top_route_status.pb
  report_clock_utilization -file image_filter_top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force image_filter_top.mmi }
  write_bitstream -force image_filter_top.bit 
  catch { write_sysdef -hwdef image_filter_top.hwdef -bitfile image_filter_top.bit -meminfo image_filter_top.mmi -file image_filter_top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

