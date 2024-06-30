v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -50 140 -10 {
lab=Vout}
N 340 -40 340 -10 {
lab=Vout}
N 140 -40 340 -40 {
lab=Vout}
N 140 -170 140 -110 {
lab=Vdd}
C {sky130_fd_pr/pfet3_01v8.sym} 120 -80 0 0 {name=M1
W=2.5
L=0.15
body=VDD
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
C {devices/vsource.sym} -200 -10 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -120 -10 0 0 {name=Vsg value="PULSE(0 1.8 0 500ps 500ps 4ns 10ns)"}
C {devices/gnd.sym} 140 50 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 340 20 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -280 -260 0 0 {name=TRANS_simulation only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 100ps 12ns
.save all
.end"}
C {devices/lab_pin.sym} 340 -40 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/res.sym} 140 20 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 340 50 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 140 -170 2 0 {name=p2 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 100 -80 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/gnd.sym} -200 20 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -120 20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -200 -40 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -120 -40 1 0 {name=p5 sig_type=std_logic lab=Vin}
