
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7a100ti2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7a100ti2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
[
%s*common2B
.Phase 1 Build RT Design | Checksum: 154b5d77b
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:27:19 ; elapsed = 00:30:22 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
f
%s*common2M
9Phase 2.1 Fix Topology Constraints | Checksum: 154b5d77b
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:27:19 ; elapsed = 00:30:22 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
_
%s*common2F
2Phase 2.2 Pre Route Cleanup | Checksum: 154b5d77b
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:27:19 ; elapsed = 00:30:22 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
[
%s*common2B
.Phase 2.3 Update Timing | Checksum: 11c548aff
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:03 ; elapsed = 00:30:59 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
�
Intermediate Timing Summary %s164*route2N
:| WNS=-2.486 | TNS=-1582.789| WHS=-0.332 | THS=-5548.616|
2default:defaultZ35-416h px� 
a
%s*common2H
4Phase 2 Router Initialization | Checksum: 1bb2e6043
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:24 ; elapsed = 00:31:15 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
\
%s*common2C
/Phase 3.1 Global Routing | Checksum: 1bb2e6043
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:28:25 ; elapsed = 00:31:15 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
Z
%s*common2A
-Phase 3 Initial Routing | Checksum: 69af5425
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:30:46 ; elapsed = 00:32:32 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
399332default:default2�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+========================================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                                                    |
+====================+===================+========================================================================================================+
| cpu_clk_clk_pll    | cpu_clk_clk_pll   | inst_ram/U0/synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg_25344_25599_26_26/RAMS64E_C/ADR0 |
| cpu_clk_clk_pll    | cpu_clk_clk_pll   | inst_ram/U0/synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg_25344_25599_26_26/RAMS64E_C/ADR1 |
| cpu_clk_clk_pll    | cpu_clk_clk_pll   | inst_ram/U0/synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg_25344_25599_26_26/RAMS64E_D/ADR0 |
| cpu_clk_clk_pll    | cpu_clk_clk_pll   | inst_ram/U0/synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg_25344_25599_26_26/RAMS64E_B/ADR0 |
| cpu_clk_clk_pll    | cpu_clk_clk_pll   | inst_ram/U0/synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg_25344_25599_26_26/RAMS64E_A/ADR0 |
+--------------------+-------------------+--------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-6.887 | TNS=-9889.787| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
`
%s*common2G
3Phase 4.1 Global Iteration 0 | Checksum: 18a39efd2
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:34:54 ; elapsed = 00:35:05 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-5.122 | TNS=-4862.125| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
`
%s*common2G
3Phase 4.2 Global Iteration 1 | Checksum: 2a89f0acd
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:36:24 ; elapsed = 00:36:24 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
_
%s*common2F
2Phase 4.3 Global Iteration 2 | Checksum: df946a4b
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:03 ; elapsed = 00:38:46 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
]
%s*common2D
0Phase 4 Rip-up And Reroute | Checksum: df946a4b
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:03 ; elapsed = 00:38:46 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
\
%s*common2C
/Phase 5.1.1 Update Timing | Checksum: bbd451f3
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:21 ; elapsed = 00:39:01 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-5.122 | TNS=-4857.418| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
[
%s*common2B
.Phase 5.1 Delay CleanUp | Checksum: 200ec88a7
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:24 ; elapsed = 00:39:03 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
e
%s*common2L
8Phase 5.2 Clock Skew Optimization | Checksum: 200ec88a7
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:24 ; elapsed = 00:39:03 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
g
%s*common2N
:Phase 5 Delay and Skew Optimization | Checksum: 200ec88a7
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:24 ; elapsed = 00:39:03 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 6.1.1 Update Timing | Checksum: 1cb574011
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:55 ; elapsed = 00:39:27 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-4.928 | TNS=-4577.446| WHS=0.016  | THS=0.000  |
2default:defaultZ35-416h px� 
[
%s*common2B
.Phase 6.1 Hold Fix Iter | Checksum: 16f335b1d
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:56 ; elapsed = 00:39:27 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
Y
%s*common2@
,Phase 6 Post Hold Fix | Checksum: 16f335b1d
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:56 ; elapsed = 00:39:27 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
Z
%s*common2A
-Phase 7 Route finalize | Checksum: 1ec3b1a49
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:56 ; elapsed = 00:39:27 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
a
%s*common2H
4Phase 8 Verifying routed nets | Checksum: 1ec3b1a49
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:56 ; elapsed = 00:39:27 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 9 Depositing Routes | Checksum: 2982993cb
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:39:58 ; elapsed = 00:39:29 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2L
8| WNS=-4.928 | TNS=-4577.446| WHS=0.016  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
_
%s*common2F
2Phase 10 Post Router Timing | Checksum: 2982993cb
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:40:21 ; elapsed = 00:39:44 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
}

Phase %s%s
101*constraints2
11 2default:default2/
Post-Route Event Processing2default:defaultZ18-101h px� 
g
%s*common2N
:Phase 11 Post-Route Event Processing | Checksum: 4e95dc6f
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:40:22 ; elapsed = 00:39:45 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:40:22 ; elapsed = 00:39:45 . Memory (MB): peak = 19132.727 ; gain = 88.8162default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
9462default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:40:262default:default2
00:39:502default:default2
	19132.7272default:default2
102.2582default:defaultZ17-268h px� 
�
%s4*runtcl2�
yExecuting : report_drc -file soc_lite_top_drc_routed.rpt -pb soc_lite_top_drc_routed.pb -rpx soc_lite_top_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
lreport_drc -file soc_lite_top_drc_routed.rpt -pb soc_lite_top_drc_routed.pb -rpx soc_lite_top_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/impl_1/soc_lite_top_drc_routed.rpt�D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/impl_1/soc_lite_top_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:102default:default2
00:00:072default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file soc_lite_top_methodology_drc_routed.rpt -pb soc_lite_top_methodology_drc_routed.pb -rpx soc_lite_top_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file soc_lite_top_methodology_drc_routed.rpt -pb soc_lite_top_methodology_drc_routed.pb -rpx soc_lite_top_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
�D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/impl_1/soc_lite_top_methodology_drc_routed.rpt�D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/impl_1/soc_lite_top_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:02:172default:default2
00:01:192default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_power -file soc_lite_top_power_routed.rpt -pb soc_lite_top_power_summary_routed.pb -rpx soc_lite_top_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
|report_power -file soc_lite_top_power_routed.rpt -pb soc_lite_top_power_summary_routed.pb -rpx soc_lite_top_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
9562default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:192default:default2
00:00:182default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2y
eExecuting : report_route_status -file soc_lite_top_route_status.rpt -pb soc_lite_top_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file soc_lite_top_timing_summary_routed.rpt -pb soc_lite_top_timing_summary_routed.pb -rpx soc_lite_top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -1L, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:342default:default2
00:00:192default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2i
UExecuting : report_incremental_reuse -file soc_lite_top_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2i
UExecuting : report_clock_utilization -file soc_lite_top_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file soc_lite_top_bus_skew_routed.rpt -pb soc_lite_top_bus_skew_routed.pb -rpx soc_lite_top_bus_skew_routed.rpx
2default:defaulth px� 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -1L, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:062default:default2
00:00:052default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
|D:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_dram/run_vivado/project/loongson.runs/impl_1/soc_lite_top_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:082default:default2
	19132.7272default:default2
0.0002default:defaultZ17-268h px� 


End Record