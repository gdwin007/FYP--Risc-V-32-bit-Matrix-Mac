
l
Command: %s
53*	vivadotcl2;
'write_bitstream -force Pipeline_top.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2V
 "@
Execute/ALU/ALU_Out0	Execute/ALU/ALU_Out02default:default2default:default2`
 "J
Execute/ALU/ALU_Out0/A[29:0]Execute/ALU/ALU_Out0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2V
 "@
Execute/ALU/ALU_Out0	Execute/ALU/ALU_Out02default:default2default:default2`
 "J
Execute/ALU/ALU_Out0/B[17:0]Execute/ALU/ALU_Out0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__0	Execute/ALU/ALU_Out0__02default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__0/A[29:0]Execute/ALU/ALU_Out0__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__0	Execute/ALU/ALU_Out0__02default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__0/B[17:0]Execute/ALU/ALU_Out0__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__1	Execute/ALU/ALU_Out0__12default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__1/A[29:0]Execute/ALU/ALU_Out0__1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__1	Execute/ALU/ALU_Out0__12default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__1/B[17:0]Execute/ALU/ALU_Out0__1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2V
 "@
Execute/ALU/ALU_Out0	Execute/ALU/ALU_Out02default:default2default:default2`
 "J
Execute/ALU/ALU_Out0/P[47:0]Execute/ALU/ALU_Out0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__0	Execute/ALU/ALU_Out0__02default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__0/P[47:0]Execute/ALU/ALU_Out0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__1	Execute/ALU/ALU_Out0__12default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__1/P[47:0]Execute/ALU/ALU_Out0__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2V
 "@
Execute/ALU/ALU_Out0	Execute/ALU/ALU_Out02default:default2default:default2`
 "J
Execute/ALU/ALU_Out0/P[47:0]Execute/ALU/ALU_Out0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__0	Execute/ALU/ALU_Out0__02default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__0/P[47:0]Execute/ALU/ALU_Out0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2\
 "F
Execute/ALU/ALU_Out0__1	Execute/ALU/ALU_Out0__12default:default2default:default2f
 "P
Execute/ALU/ALU_Out0__1/P[47:0]Execute/ALU/ALU_Out0__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[10]<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[10]2default:default2default:default2\
 "F
Memory/Data_Memory/D[5]Memory/Data_Memory/D[5]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[5]	Execute/ResultE_r_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[11]<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[11]2default:default2default:default2\
 "F
Memory/Data_Memory/D[6]Memory/Data_Memory/D[6]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[6]	Execute/ResultE_r_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[12]<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[12]2default:default2default:default2\
 "F
Memory/Data_Memory/D[7]Memory/Data_Memory/D[7]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[7]	Execute/ResultE_r_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[13]<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[13]2default:default2default:default2\
 "F
Memory/Data_Memory/D[8]Memory/Data_Memory/D[8]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[8]	Execute/ResultE_r_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[14]<Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[14]2default:default2default:default2\
 "F
Memory/Data_Memory/D[9]Memory/Data_Memory/D[9]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[9]	Execute/ResultE_r_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
;Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[5];Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[5]2default:default2default:default2\
 "F
Memory/Data_Memory/D[0]Memory/Data_Memory/D[0]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[0]	Execute/ResultE_r_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
;Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[6];Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[6]2default:default2default:default2\
 "F
Memory/Data_Memory/D[1]Memory/Data_Memory/D[1]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[1]	Execute/ResultE_r_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
;Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[7];Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[7]2default:default2default:default2\
 "F
Memory/Data_Memory/D[2]Memory/Data_Memory/D[2]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[2]	Execute/ResultE_r_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
;Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[8];Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[8]2default:default2default:default2\
 "F
Memory/Data_Memory/D[3]Memory/Data_Memory/D[3]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[3]	Execute/ResultE_r_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "�
;Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[9];Memory/Data_Memory/Data_Memory_Registers_reg/ADDRARDADDR[9]2default:default2default:default2\
 "F
Memory/Data_Memory/D[4]Memory/Data_Memory/D[4]2default:default2default:default2^
 "H
Execute/ResultE_r_reg[4]	Execute/ResultE_r_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "~
3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[0]3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[0]2default:default2default:default2]
 "G
Memory/Data_Memory/WEA[0]Memory/Data_Memory/WEA2default:default2default:default2\
 "F
Execute/MemWriteE_r_reg	Execute/MemWriteE_r_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "~
3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[1]3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[1]2default:default2default:default2]
 "G
Memory/Data_Memory/WEA[0]Memory/Data_Memory/WEA2default:default2default:default2\
 "F
Execute/MemWriteE_r_reg	Execute/MemWriteE_r_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "~
3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[2]3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[2]2default:default2default:default2]
 "G
Memory/Data_Memory/WEA[0]Memory/Data_Memory/WEA2default:default2default:default2\
 "F
Execute/MemWriteE_r_reg	Execute/MemWriteE_r_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "p
,Memory/Data_Memory/Data_Memory_Registers_reg	,Memory/Data_Memory/Data_Memory_Registers_reg2default:default2default:default2�
 "~
3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[3]3Memory/Data_Memory/Data_Memory_Registers_reg/WEA[3]2default:default2default:default2]
 "G
Memory/Data_Memory/WEA[0]Memory/Data_Memory/WEA2default:default2default:default2\
 "F
Execute/MemWriteE_r_reg	Execute/MemWriteE_r_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 27 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
c
Writing bitstream %s...
11*	bitstream2&
./Pipeline_top.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
902default:default2
492default:default2
42default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:142default:default2
00:00:132default:default2
1854.3012default:default2
432.0392default:defaultZ17-268h px� 


End Record