@echo off
set xv_path=F:\\ECE532\\Vivado\\2016.2\\bin
call %xv_path%/xsim image_filter_tb_behav -key {Behavioral:sim_1:Functional:image_filter_tb} -tclbatch image_filter_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
