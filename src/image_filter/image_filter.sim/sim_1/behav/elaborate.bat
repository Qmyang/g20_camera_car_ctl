@echo off
set xv_path=F:\\ECE532\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 645e020e6af04013a915d344c9477db4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot image_filter_tb_behav xil_defaultlib.image_filter_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
