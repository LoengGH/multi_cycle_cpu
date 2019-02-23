@echo off
set xv_path=E:\\Xilinx2015.4\\Vivado\\2015.4\\bin
call %xv_path%/xsim CPU_sim_behav -key {Behavioral:sim_1:Functional:CPU_sim} -tclbatch CPU_sim.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
