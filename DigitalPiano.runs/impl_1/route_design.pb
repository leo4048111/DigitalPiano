
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
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 1df9f5cb1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:42 . Memory (MB): peak = 1213.504 ; gain = 128.9222default:defaulth px? 
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
B
-Phase 2.1 Create Timer | Checksum: 1df9f5cb1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:43 . Memory (MB): peak = 1213.504 ; gain = 128.9222default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1df9f5cb1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:43 . Memory (MB): peak = 1213.504 ; gain = 128.9222default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1df9f5cb1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:50 ; elapsed = 00:00:43 . Memory (MB): peak = 1213.504 ; gain = 128.9222default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 10d4148c9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:51 . Memory (MB): peak = 1245.207 ; gain = 160.6252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-3.048 | TNS=-49.987| WHS=-0.152 | THS=-100.749|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1908d79ed
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:53 . Memory (MB): peak = 1261.770 ; gain = 177.1882default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 101ab6479
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:20 ; elapsed = 00:01:01 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
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
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 4.1.1 Update Timing | Checksum: 1f8546550
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:15 ; elapsed = 00:01:38 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.921 | TNS=-61.250| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px? 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
G
2Phase 4.1.2.1 Update Timing | Checksum: 1cf7536b3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:16 ; elapsed = 00:01:38 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px? 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 1d5edb511
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:40 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 10550ef09
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:40 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 10550ef09
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:41 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 4.2.1 Update Timing | Checksum: 1009248b1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:38 ; elapsed = 00:01:56 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-4.485 | TNS=-67.382| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 228719813
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:38 ; elapsed = 00:01:56 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 228719813
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:38 ; elapsed = 00:01:56 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 2d86faa0e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:39 ; elapsed = 00:01:57 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.921 | TNS=-60.803| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 208ea8f52
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:40 ; elapsed = 00:01:57 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 208ea8f52
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:40 ; elapsed = 00:01:57 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 208ea8f52
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:40 ; elapsed = 00:01:57 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 219a516e3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:58 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.871 | TNS=-60.161| WHS=-0.010 | THS=-0.010 |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: c0acac74
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:58 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 16718e6ce
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:58 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: cf2f9d89
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:59 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: cf2f9d89
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:42 ; elapsed = 00:01:59 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: 703b4f74
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:44 ; elapsed = 00:02:01 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
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
C
.Phase 10.1 Update Timing | Checksum: e4458bf0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:02:02 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-3.871 | TNS=-60.161| WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: e4458bf0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:02:02 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
=
Router Completed Successfully
16*routeZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:46 ; elapsed = 00:02:02 . Memory (MB): peak = 1297.207 ; gain = 212.6252default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
732default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:492default:default2
00:02:042default:default2
1297.2072default:default2
212.6252default:defaultZ17-268h px? 
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
1297.2072default:default2
0.0002default:defaultZ17-268h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
JD:/Project/Vivado/DigitalPiano/DigitalPiano.runs/impl_1/top_drc_routed.rptJD:/Project/Vivado/DigitalPiano/DigitalPiano.runs/impl_1/top_drc_routed.rpt2default:default8Z2-168h px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:092default:default2
00:00:062default:default2
1297.2072default:default2
0.0002default:defaultZ17-268h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:102default:default2
00:00:052default:default2
1297.2072default:default2
0.0002default:defaultZ17-268h px? 


End Record