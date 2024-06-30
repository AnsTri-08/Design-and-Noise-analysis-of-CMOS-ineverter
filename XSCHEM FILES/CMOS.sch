v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -100 130 0 {
lab=Vin}
N 170 -70 170 -30 {
lab=Vout}
N 170 0 190 -0 {
lab=Vss}
N 190 -0 190 40 {
lab=Vss}
N 170 40 190 40 {
lab=Vss}
N 170 -100 190 -100 {
lab=Vdd}
N 190 -140 190 -100 {
lab=Vdd}
N 170 -140 190 -140 {
lab=Vdd}
N 110 -50 130 -50 {
lab=Vin}
N 170 -140 170 -130 {
lab=Vdd}
N 170 -160 170 -140 {
lab=Vdd}
N 170 30 170 40 {
lab=Vss}
N 170 40 170 60 {
lab=Vss}
N 170 -50 190 -50 {
lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} 150 -100 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 150 0 0 0 {name=M2
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
C {devices/ipin.sym} 110 -50 0 0 {name=p1 lab=Vin
}
C {devices/ipin.sym} 170 -160 1 0 {name=p2 lab=Vdd}
C {devices/ipin.sym} 170 60 3 0 {name=p3 lab=gnd}
C {devices/opin.sym} 190 -50 0 0 {name=p4 lab=Vout}
