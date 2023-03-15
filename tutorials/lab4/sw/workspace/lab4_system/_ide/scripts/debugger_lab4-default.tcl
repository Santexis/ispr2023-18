# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/lab4_system/_ide/scripts/debugger_lab4-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/lab4_system/_ide/scripts/debugger_lab4-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279540147A" && level==0 && jtag_device_ctx=="jsn-Zybo-210279540147A-13722093-0"}
fpga -file /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/lab4/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/system_platform/export/system_platform/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/lab4/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/ispr/Documentos/ispr/tutorials/lab4/sw/workspace/lab4/Debug/lab4.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
