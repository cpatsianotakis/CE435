#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/SDK/2018.3/bin:/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/bin
else
  PATH=/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/SDK/2018.3/bin:/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/jesterhead1924/Documents/Xilinx/Vivado_Directories/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/jesterhead1924/Documents/embedded_systems/Labs/vivado-projects/lab2_simple_arm/lab2_simple_arm.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log arm_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source arm_wrapper.tcl -notrace


