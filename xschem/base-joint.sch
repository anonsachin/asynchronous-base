v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 0 -70 -0 {lab=myturn}
N 50 -80 50 -20 {lab=yourturn}
N -100 -80 50 -80 {lab=yourturn}
N -100 -120 -100 -80 {lab=yourturn}
N -100 -120 -70 -120 {lab=yourturn}
N 50 -20 150 -20 {lab=yourturn}
N 50 -140 50 -100 {lab=#net1}
N -120 -100 50 -100 {lab=#net1}
N -120 -100 -120 -40 {lab=#net1}
N -120 -40 -70 -40 {lab=#net1}
N -250 -190 -200 -190 {lab=G0}
N -250 -190 -250 -160 {lab=G0}
N -120 -190 -90 -190 {lab=#net2}
N -90 -190 -70 -190 {lab=#net2}
N -70 -190 -70 -160 {lab=#net2}
N -240 -250 -160 -250 {lab=VDD}
N -240 -230 -160 -230 {lab=VSS}
C {sky130_stdcells/and2_0.sym} -10 -20 0 0 {name=Mr VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} -10 -140 0 0 {name=Go VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -250 -160 0 0 {name=p1 lab=G0}
C {ipin.sym} -250 0 0 0 {name=p2 lab=myturn}
C {opin.sym} 150 -20 0 0 {name=p3 lab=yourturn}
C {sky130_stdcells/clkinv_8.sym} -160 -190 0 0 {name=inverter VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {iopin.sym} -240 -250 0 1 {name=p4 lab=VDD}
C {iopin.sym} -240 -230 0 1 {name=p5 lab=VSS}
C {lab_pin.sym} -160 -250 0 1 {name=p6 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -160 -230 0 1 {name=p7 sig_type=std_logic lab=VSS
}
