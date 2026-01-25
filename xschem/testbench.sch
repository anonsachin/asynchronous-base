v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 160 -260 960 140 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 510 -480 620 -480 {lab=VDD}
N 380 -450 500 -450 {lab=GO}
N 380 -410 500 -410 {lab=myturn}
N 530 -390 620 -390 {lab=VSS}
N 800 -430 960 -430 {lab=yourturn}
C {devices/code.sym} -100 -110 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} -50 110 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {simulator_commands_shown.sym} -310 -380 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
Vvcc VDD 0 DC 1.8
Vvss VSS 0 DC 0
Vin myturn 0 PWL(0ns 0V 10ns 0.8V 12ns 1.3V 14ns 1.8V 110ns 1.8V 120ns 1.3V 122ns 0.8V 124ns 0V)
Vgo GO 0 PWL(0ns 0V 20ns 0V 25ns 1.8V) 
.control
save all
tran 100p 300n
write test_inv.raw
.endc
"}
C {base-joint.sym} 650 -430 0 0 {name=x1}
C {lab_pin.sym} 500 -450 0 0 {name=p1 sig_type=std_logic lab=GO}
C {lab_pin.sym} 500 -410 0 0 {name=p2 sig_type=std_logic lab=myturn}
C {lab_pin.sym} 620 -390 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -480 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 800 -430 0 1 {name=p5 sig_type=std_logic lab=yourturn}
C {lab_pin.sym} 380 -450 0 0 {name=p6 sig_type=std_logic lab=GO
}
C {lab_pin.sym} 380 -410 0 0 {name=p7 sig_type=std_logic lab=myturn
}
C {lab_pin.sym} 510 -480 0 0 {name=p8 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 530 -390 0 0 {name=p9 sig_type=std_logic lab=VSS


}
C {opin.sym} 960 -430 0 0 {name=p10 lab=out}
