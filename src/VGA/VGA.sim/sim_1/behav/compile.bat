@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/SDK/2014.1/bin;C:/Xilinx/Vivado/2014.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2014.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2014.1/bin;%PATH%
set XILINX_PLANAHEAD=C:/Xilinx/Vivado/2014.1

xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_behav --prj C:/Users/Amanjit/ECE532_git/VGA/VGA.sim/sim_1/behav/test.prj   xil_defaultlib.test   xil_defaultlib.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
