
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2d
 "N
DAPLink_tri_o_IBUF[15]_inst	DAPLink_tri_o_IBUF[15]_inst2default:default2default:default2@
 "*
	IOB_X0Y82
	IOB_X0Y822default:default2default:default2n
 "X
 DAPLink_tri_o_IBUF_BUFG[15]_inst	 DAPLink_tri_o_IBUF_BUFG[15]_inst2default:default2default:default2H
 "2
BUFGCTRL_X0Y0
BUFGCTRL_X0Y02default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 9ceeb4af
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:34 ; elapsed = 00:00:28 . Memory (MB): peak = 1764.180 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 9ceeb4af
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1764.180 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 9ceeb4af
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1764.180 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 9ceeb4af
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1764.180 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 19c81db41
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:35 . Memory (MB): peak = 1764.180 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.111 | TNS=-0.386 | WHS=-4.794 | THS=-523.811|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 15e23009b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1779.012 ; gain = 14.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.111 | TNS=-0.384 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 11ff3da4b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1784.059 ; gain = 19.8792default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1ab3d9eb6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1784.059 ; gain = 19.8792default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 22671336b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:43 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.763 | TNS=-17.107| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: 5bebce5e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:21 ; elapsed = 00:01:28 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.470 | TNS=-1.822 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 19bbf3487
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:40 ; elapsed = 00:01:41 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.470 | TNS=-1.822 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 181bed8cd
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:19 ; elapsed = 00:02:04 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 181bed8cd
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:19 ; elapsed = 00:02:04 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1365307e3
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:21 ; elapsed = 00:02:05 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.470 | TNS=-1.822 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 11adb830c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:22 ; elapsed = 00:02:06 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 11adb830c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:22 ; elapsed = 00:02:06 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 11adb830c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:22 ; elapsed = 00:02:06 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 11ac13f37
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:24 ; elapsed = 00:02:07 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.470 | TNS=-1.822 | WHS=-4.183 | THS=-4.183 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1e065ab03
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:24 ; elapsed = 00:02:07 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 15caa4fe9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:25 ; elapsed = 00:02:07 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 13eb61282
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:25 ; elapsed = 00:02:07 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 13eb61282
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:25 ; elapsed = 00:02:07 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: ef55e4f9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:27 ; elapsed = 00:02:11 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 10.1 Update Timing | Checksum: 185b85b83
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:30 ; elapsed = 00:02:12 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-0.470 | TNS=-1.822 | WHS=0.062  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 185b85b83
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:30 ; elapsed = 00:02:12 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:03:30 ; elapsed = 00:02:12 . Memory (MB): peak = 1789.590 ; gain = 25.4102default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832default:default2
522default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:03:342default:default2
00:02:142default:default2
1789.5902default:default2
25.4102default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:032default:default2
1789.5902default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:062default:default2
1789.5902default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file m3_for_arty_a7_wrapper_drc_routed.rpt -pb m3_for_arty_a7_wrapper_drc_routed.pb -rpx m3_for_arty_a7_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file m3_for_arty_a7_wrapper_drc_routed.rpt -pb m3_for_arty_a7_wrapper_drc_routed.pb -rpx m3_for_arty_a7_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
jV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_drc_routed.rptjV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file m3_for_arty_a7_wrapper_methodology_drc_routed.rpt -pb m3_for_arty_a7_wrapper_methodology_drc_routed.pb -rpx m3_for_arty_a7_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file m3_for_arty_a7_wrapper_methodology_drc_routed.rpt -pb m3_for_arty_a7_wrapper_methodology_drc_routed.pb -rpx m3_for_arty_a7_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2 
slow_out_clk2default:default2O
9V:/hardware/m3_for_arty_a7/constraints/m3_for_arty_a7.xdc2default:default2
1192default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2 
slow_out_clk2default:default2O
9V:/hardware/m3_for_arty_a7/constraints/m3_for_arty_a7.xdc2default:default2
1192default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
vV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_methodology_drc_routed.rptvV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:172default:default2
00:00:102default:default2
1825.5122default:default2
35.9222default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file m3_for_arty_a7_wrapper_power_routed.rpt -pb m3_for_arty_a7_wrapper_power_summary_routed.pb -rpx m3_for_arty_a7_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file m3_for_arty_a7_wrapper_power_routed.rpt -pb m3_for_arty_a7_wrapper_power_summary_routed.pb -rpx m3_for_arty_a7_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2 
slow_out_clk2default:default2O
9V:/hardware/m3_for_arty_a7/constraints/m3_for_arty_a7.xdc2default:default2
1192default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
982default:default2
522default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:162default:default2
00:00:092default:default2
1889.5272default:default2
64.0162default:defaultZ17-268h px? 
?
%s4*runtcl2?
yExecuting : report_route_status -file m3_for_arty_a7_wrapper_route_status.rpt -pb m3_for_arty_a7_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file m3_for_arty_a7_wrapper_timing_summary_routed.rpt -pb m3_for_arty_a7_wrapper_timing_summary_routed.pb -rpx m3_for_arty_a7_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2s
_Executing : report_incremental_reuse -file m3_for_arty_a7_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2s
_Executing : report_clock_utilization -file m3_for_arty_a7_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file m3_for_arty_a7_wrapper_bus_skew_routed.rpt -pb m3_for_arty_a7_wrapper_bus_skew_routed.pb -rpx m3_for_arty_a7_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record