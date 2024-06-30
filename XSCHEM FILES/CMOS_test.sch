v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -100 260 -100 {
lab=Vout}
N 230 -100 230 -80 {
lab=Vout}
C {CMOS.sym} 160 160 0 0 {name=x1}
C {devices/vsource.sym} -200 0 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -100 0 0 0 {name=Vin value="pulse(0 1.8 0 1ns 1ns 4ns 10ns)"}
C {devices/lab_pin.sym} -200 -30 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -100 -30 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 20 -100 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 70 -170 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 260 -100 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 70 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -100 30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -200 30 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 230 -50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} -260 -230 0 0 {name=ANALYSIS only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 100ps 20ns
.dc Vin 0 2 1m
.save all
.end"}
C {devices/gnd.sym} 230 -20 0 0 {name=l4 lab=GND}
