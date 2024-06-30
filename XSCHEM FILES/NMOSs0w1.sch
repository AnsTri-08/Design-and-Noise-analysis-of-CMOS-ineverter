v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -90 170 -60 {
lab=Vout}
N 170 0 170 50 {
lab=GND}
N 170 50 210 50 {
lab=GND}
N 300 20 300 50 {
lab=GND}
N 210 50 300 50 {
lab=GND}
N 170 -30 200 -30 {
lab=GND}
N 200 -30 200 50 {
lab=GND}
N 300 -80 300 -40 {
lab=Vout}
N 170 -80 300 -80 {
lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} 150 -30 0 0 {name=M1
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
C {devices/res.sym} 170 -120 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 300 -10 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -230 -50 0 0 {name=Vgs value="PULSE(0 1.8 0 500ps 500ps 4ns 10ns)"}
C {devices/gnd.sym} 210 50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -300 -50 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -300 -20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -230 -20 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -300 -80 1 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -230 -80 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 170 -150 1 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 130 -30 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 300 -80 1 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} -430 -230 0 0 {name=TRANS_simulation only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 100ps 12ns
.save all
.end"}
