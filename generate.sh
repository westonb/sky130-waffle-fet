#!/bin/bash

cd scripts/
python3 waffle_build.py --nmos --size 8
python3 waffle_build.py --size 8
cd ..
cp scripts/nmos_waffle_8_gen.tcl layout/nmos_waffle_8_gen.tcl
cp scripts/pmos_waffle_8_gen.tcl layout/pmos_waffle_8_gen.tcl
cd layout/
magic -T sky130A -dnull nmos_waffle_8_gen.tcl
magic -T sky130A -dnull pmos_waffle_8_gen.tcl

cd ..
rm layout/*.tcl
