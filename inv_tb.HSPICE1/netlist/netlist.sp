*Custom Compiler Version N-2017.12-SP1-2
*Wed Apr 24 13:38:17 2024

.GLOBAL gnd! vdd!
********************************************************************************
* Library          : lab1_inv
* Cell             : inv
* View             : schematic
* View Search List : hspice hspiceD cmos.sch cmos_sch schematic veriloga
* View Stop List   : hspice hspiceD veriloga
********************************************************************************
.subckt inv in out
m0 out in vdd! vdd! P w=1.8u l=0.18u nf=1 m=1 ad=0.396p as=0.396p pd=2.24u ps=2.24u
+  nrd=0.1222222222 nrs=0.1222222222 sa=0.22u sb=0.22u sd=0
m1 out in gnd! gnd! N w=0.36u l=0.18u nf=1 m=1 ad=79.2f as=79.2f pd=0.8u ps=0.8u
+  nrd=0.6111111111 nrs=0.6111111111 sa=0.22u sb=0.22u sd=0
.ends inv

********************************************************************************
* Library          : lab1_inv
* Cell             : inv_tb
* View             : schematic
* View Search List : hspice hspiceD cmos.sch cmos_sch schematic veriloga
* View Stop List   : hspice hspiceD veriloga
********************************************************************************
v5 net5 gnd! dc=0 pulse ( 0 1.2 0 0.1n 0.1n 2n 4n )
v4 vdd! gnd! dc=1.2
xi0 net5 result inv

