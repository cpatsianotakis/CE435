connect -url tcp:127.0.0.1:3121
source /home/jesterhead1924/Documents/embedded_systems/Labs/vivado-projects/lab2_interrupt/lab2_interrupt.sdk/arm_wrapper_hw/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A49BD0"} -index 0
loadhw -hw /home/jesterhead1924/Documents/embedded_systems/Labs/vivado-projects/lab2_interrupt/lab2_interrupt.sdk/arm_wrapper_hw/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A49BD0"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49BD0"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49BD0"} -index 0
dow /home/jesterhead1924/Documents/embedded_systems/Labs/vivado-projects/lab2_interrupt/lab2_interrupt.sdk/CoreMark/Debug/CoreMark.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49BD0"} -index 0
con
