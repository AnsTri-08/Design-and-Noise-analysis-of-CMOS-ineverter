
}
G {}
K {}
V {}
S {}
E {}
N 70 -70 320 -70 {
lab=#net1}
N 170 -70 170 -40 {
lab=#net1}
N 170 -10 190 -10 {
lab=#net1}
N 190 -70 190 -10 {
lab=#net1}
N 170 20 170 50 {
lab=GND}
N 320 -10 320 50 {
lab=GND}
N 170 50 320 50 {
lab=GND}
N 70 -10 130 -10 {
lab=#net2}
C {devices/code_shown.sym} 40 -150 0 0 {name=DC_simulation only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vsg 0 1.81 1m
.save all
.end"}
C {devices/vsource.sym} 70 -40 0 0 {name=Vsg value=0 savecurrent=false}
C {devices/gnd.sym} 170 50 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 150 -10 0 0 {name=M1
W=2.5
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 320 -40 0 0 {name=Vsd value=1.8 savecurrent=false}
