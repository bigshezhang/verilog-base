
?
Command: %s
53*	vivadotcl2O
;synth_design -top multi_seg_controler -part xc7a35tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 362.562 ; gain = 100.785
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2'
multi_seg_controler2default:default2
 2default:default2
iC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/multi_seg_controler.v2default:default2
232default:default8@Z8-6157h px? 
t
%s
*synth2\
H	Parameter multi_numbers_to_display bound to: 11451400 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter shining_frequency bound to: 1000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
frequency_division2default:default2
 2default:default2~
hC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/frequency_division.v2default:default2
232default:default8@Z8-6157h px? 
o
%s
*synth2W
C	Parameter Original_Frequency bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter Output_Frequency bound to: 1000 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter Division_Num bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
frequency_division2default:default2
 2default:default2
12default:default2
12default:default2~
hC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/frequency_division.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
seg_single_display2default:default2
 2default:default2~
hC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/seg_single_display.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
seg_single_display2default:default2
 2default:default2
22default:default2
12default:default2~
hC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/seg_single_display.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
multi_seg_controler2default:default2
 2default:default2
32default:default2
12default:default2
iC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/sources_1/new/multi_seg_controler.v2default:default2
232default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2&
frequency_division2default:default2
	sys_rst_n2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 418.426 ; gain = 156.648
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 418.426 ; gain = 156.648
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 418.426 ; gain = 156.648
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default8Z20-179h px? 
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2c
O/////////////////////////////ϵͳʱ?Ӻ͸?λ////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
12default:default8@Z20-1307h px? 
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2b
N/////////////////////////////????/////////////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
52default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
PC_Uart_rxd2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
62default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
62default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
PC_Uart_txd2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
72default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
72default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2c
O////////////////////////////////????///////////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
92default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
BT_Uart_rxd2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
102default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
102default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
BT_Uart_txd2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
112default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
112default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_ctrl_o[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_ctrl_o[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_ctrl_o[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_ctrl_o[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_ctrl_o[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
bt_mcu_int_i2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
192default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2c
O///////////////////////////////??Ƶ?ӿ?////////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
212default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
audio_pwm_o2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

audio_sd_o2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
232default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2e
Q//////////////////////////////////iic////////////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
252default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2!
pw_iic_scl_io2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
pw_iic_sda_io2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
272default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2e
Q//////////////////////////////////XADCģ??ת??///////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
292default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2 
XADC_AUX_v_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
XADC_AUX_v_p2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
XADC_VP_VN_v_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2"
XADC_VP_VN_v_p2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
332default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2f
R/////////////////////////////////////5??????//////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
352default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2

btn_pin[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

btn_pin[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

btn_pin[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

btn_pin[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

btn_pin[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
402default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2f
R///////////////////////////////////???뿪??sw0~sw7////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
422default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
452default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
482default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
482default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
492default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
492default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	sw_pin[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
502default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
502default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2c
O//////////////////////////////////???뿪??sw8~sw15/////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
522default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2

dip_pin[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
532default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
542default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
562default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
572default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
572default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
582default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
582default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dip_pin[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
602default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
602default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2d
P//////////////////////////////////////LED0~LED15////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
632default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2

led_pin[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
642default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
652default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
662default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
662default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
672default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
682default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
692default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
692default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
702default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
702default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
712default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
712default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[8]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
732default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

led_pin[9]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
742default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
742default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[10]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
752default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
752default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[11]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
762default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
762default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[12]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
772default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
772default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[13]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
782default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
782default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[14]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
792default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
792default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led_pin[15]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
802default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
802default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2e
Q///////////////////////////////8????????λѡ?ź?/////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
822default:default8@Z20-1307h px? 
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2g
S///////////////////////////////////?????ܶ?ѡ?ź?//////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
922default:default8@Z20-1307h px? 
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2j
V////////////////////////////////////VGA??ͬ????ͬ???ź?///////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1112default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2

vga_hs_pin2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

vga_vs_pin2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1132default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2j
V///////////////////////////////////////VGA???????ź?//////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1152default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1212default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1212default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1232default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[8]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1242default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1242default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
vga_data_pin[9]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2$
vga_data_pin[10]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2$
vga_data_pin[11]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1272default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2j
V/////////////////////////////////////////DAC??ģת??//////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1292default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
dac_ile2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_cs_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	dac_wr1_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	dac_wr2_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

dac_xfer_n2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[0]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[1]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[2]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dac_data[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1432default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2d
P////////////////////////////////////////PS2/////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1452default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2
ps2_clk2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
ps2_data2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1472default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2h
T/////////////////////////////////////////SDRAM//////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1502default:default8@Z20-1307h px? 
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[18]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1512default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1512default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[17]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1522default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1522default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[16]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1532default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[15]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1542default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[14]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[13]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1562default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[12]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1572default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1572default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[11]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1582default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1582default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
sram_addr[10]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[9]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1602default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1602default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[8]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1612default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1612default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[7]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1622default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1622default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[6]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1632default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1632default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[5]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1642default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[4]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1652default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
sram_addr[3]2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1662default:default8@Z12-584h px?
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2!
Vivado 12-5842default:default2
1002default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1662default:default8@Z17-14h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1662default:default8@Z17-55h px?
?
:Command '%s' is not supported in the xdc constraint file.
1095*designutils2h
T//////////////////////////////////32??pmod?ӿ?//////////////////////////////////////2default:default2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default2
1942default:default8@Z20-1307h px? 
?
Finished Parsing XDC File [%s]
178*designutils2q
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2o
[C:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.srcs/constrs_1/new/top.xdc2default:default29
%.Xil/multi_seg_controler_propImpl.xdc2default:defaultZ1-236h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
730.3522default:default2
0.0002default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
730.3522default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
730.3522default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
730.3522default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 730.352 ; gain = 468.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 730.352 ; gain = 468.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 730.352 ; gain = 468.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
seg_code2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
numbers_temp2default:default2
32default:default2
52default:defaultZ8-5544h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 730.352 ; gain = 468.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
H
%s
*synth20
Module multi_seg_controler 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module frequency_division 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module seg_single_display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
!design %s has unconnected port %s3331*oasys2'
multi_seg_controler2default:default2
	sys_rst_n2default:defaultZ8-3331h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 730.352 ; gain = 468.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 736.941 ; gain = 475.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 737.016 ; gain = 475.238
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     3|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     7|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |     7|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT6   |     8|
2default:defaulth px? 
D
%s*synth2,
|8     |FDRE   |    29|
2default:defaulth px? 
D
%s*synth2,
|9     |IBUF   |     1|
2default:defaulth px? 
D
%s*synth2,
|10    |OBUF   |    24|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+----------------+-------------------+------+
2default:defaulth p
x
? 
a
%s
*synth2I
5|      |Instance        |Module             |Cells |
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+----------------+-------------------+------+
2default:defaulth p
x
? 
a
%s
*synth2I
5|1     |top             |                   |    87|
2default:defaulth p
x
? 
a
%s
*synth2I
5|2     |  segs_division |frequency_division |    27|
2default:defaulth p
x
? 
a
%s
*synth2I
5+------+----------------+-------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 747.113 ; gain = 173.410
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 747.113 ; gain = 485.336
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
758.1952default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
212default:default2
1022default:default2
1182default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:162default:default2
00:00:172default:default2
758.1952default:default2
508.3792default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
758.1952default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2y
eC:/Users/Administrator/Downloads/LANDrop/Seg_Display/Seg_Display.runs/synth_1/multi_seg_controler.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
|Executing : report_utilization -file multi_seg_controler_utilization_synth.rpt -pb multi_seg_controler_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Sep  8 01:29:40 20222default:defaultZ17-206h px? 


End Record