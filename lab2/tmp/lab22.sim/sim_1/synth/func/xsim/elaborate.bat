@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu May 07 19:42:05 +0300 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 291113a8dffe48f39476dcbb5ebb9721 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot dff_tb_func_synth xil_defaultlib.dff_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 291113a8dffe48f39476dcbb5ebb9721 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot dff_tb_func_synth xil_defaultlib.dff_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
