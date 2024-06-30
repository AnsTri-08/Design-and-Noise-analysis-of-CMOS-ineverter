v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -10 70 -10 {
lab=GND}
N 70 -40 70 -10 {
lab=GND}
N 60 -40 70 -40 {
lab=GND}
N -40 -40 20 -40 {
lab=#net1}
N 60 -70 190 -70 {
lab=#net2}
C {sky130_fd_pr/nfet_01v8.sym} 40 -40 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -40 -10 0 0 {name=Vgs value=0 savecurrent=false}
C {devices/vsource.sym} 190 -40 0 0 {name=Vds value=0 savecurrent=false}
C {devices/gnd.sym} 60 -10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -40 20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 190 -10 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -400 -170 0 0 {name=DC_simulation only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vgs 0 1.8 1m Vds 0 1.8 0.3
.save all
.end"}
