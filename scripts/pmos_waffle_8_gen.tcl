proc shift_to_center {} {
	set res1 [box size]
	move [expr {-[lindex $res1 0] / 2}]i [expr {-[lindex $res1 1] / 2}]i
}

proc place_nmos {x_center y_center width length nf index} {
	puts $x_center
	select clear
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__nfet_g5v0d10v5 [format "xm%d" $index] w $width l $length nf $nf m 1 diffcov 100 polycov 100 poverlap 0 doverlap 1 topc 1 botc 1 guard 0 full_metal 0 viagate 0
	shift_to_center
}

proc place_pmos {x_center y_center width length nf index} {
	select clear
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__pfet_g5v0d10v5 [format "xm%d" $index] w $width l $length nf $nf m 1 diffcov 100 polycov 100 poverlap 0 doverlap 1 topc 1 botc 1 guard 0 full_metal 0 viagate 0
	shift_to_center
}
file delete  temp.mag
file delete  mos_grid.mag
load temp
box 5.25um 5.25um 4.61um 4.61um
paint mvpdiffusion 
box 5.25um 5.25um 4.94um 4.94um
erase mvpdiffusion 
box 5.19um 5.19um 4.61um 4.61um
paint locali 
box 5.19um 5.19um 4.96um 4.96um
erase locali 
box 5.22um 5.22um 4.61um 4.61um
paint metal1 
box 5.22um 5.22um 4.94um 4.94um
erase metal1 
box 2.75um 5.5um 2.75um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 5.75um 4.61um 6.39um
paint mvpdiffusion 
box 5.25um 5.75um 4.94um 6.06um
erase mvpdiffusion 
box 5.19um 5.81um 4.61um 6.39um
paint locali 
box 5.19um 5.81um 4.96um 6.04um
erase locali 
box 5.22um 5.78um 4.61um 6.39um
paint metal1 
box 5.22um 5.78um 4.94um 6.06um
erase metal1 
box 5.25um 10.75um 4.61um 10.11um
paint mvpdiffusion 
box 5.25um 10.75um 4.94um 10.44um
erase mvpdiffusion 
box 5.19um 10.69um 4.61um 10.11um
paint locali 
box 5.19um 10.69um 4.96um 10.46um
erase locali 
box 5.22um 10.72um 4.61um 10.11um
paint metal1 
box 5.22um 10.72um 4.94um 10.44um
erase metal1 
box 2.75um 11um 2.75um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 11.25um 4.61um 11.89um
paint mvpdiffusion 
box 5.25um 11.25um 4.94um 11.56um
erase mvpdiffusion 
box 5.19um 11.31um 4.61um 11.89um
paint locali 
box 5.19um 11.31um 4.96um 11.54um
erase locali 
box 5.22um 11.28um 4.61um 11.89um
paint metal1 
box 5.22um 11.28um 4.94um 11.56um
erase metal1 
box 5.25um 16.25um 4.61um 15.61um
paint mvpdiffusion 
box 5.25um 16.25um 4.94um 15.94um
erase mvpdiffusion 
box 5.19um 16.19um 4.61um 15.61um
paint locali 
box 5.19um 16.19um 4.96um 15.96um
erase locali 
box 5.22um 16.22um 4.61um 15.61um
paint metal1 
box 5.22um 16.22um 4.94um 15.94um
erase metal1 
box 2.75um 16.5um 2.75um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 16.75um 4.61um 17.39um
paint mvpdiffusion 
box 5.25um 16.75um 4.94um 17.06um
erase mvpdiffusion 
box 5.19um 16.81um 4.61um 17.39um
paint locali 
box 5.19um 16.81um 4.96um 17.04um
erase locali 
box 5.22um 16.78um 4.61um 17.39um
paint metal1 
box 5.22um 16.78um 4.94um 17.06um
erase metal1 
box 5.25um 21.75um 4.61um 21.11um
paint mvpdiffusion 
box 5.25um 21.75um 4.94um 21.44um
erase mvpdiffusion 
box 5.19um 21.69um 4.61um 21.11um
paint locali 
box 5.19um 21.69um 4.96um 21.46um
erase locali 
box 5.22um 21.72um 4.61um 21.11um
paint metal1 
box 5.22um 21.72um 4.94um 21.44um
erase metal1 
box 2.75um 22um 2.75um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 22.25um 4.61um 22.89um
paint mvpdiffusion 
box 5.25um 22.25um 4.94um 22.56um
erase mvpdiffusion 
box 5.19um 22.31um 4.61um 22.89um
paint locali 
box 5.19um 22.31um 4.96um 22.54um
erase locali 
box 5.22um 22.28um 4.61um 22.89um
paint metal1 
box 5.22um 22.28um 4.94um 22.56um
erase metal1 
box 5.25um 27.25um 4.61um 26.61um
paint mvpdiffusion 
box 5.25um 27.25um 4.94um 26.94um
erase mvpdiffusion 
box 5.19um 27.19um 4.61um 26.61um
paint locali 
box 5.19um 27.19um 4.96um 26.96um
erase locali 
box 5.22um 27.22um 4.61um 26.61um
paint metal1 
box 5.22um 27.22um 4.94um 26.94um
erase metal1 
box 2.75um 27.5um 2.75um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 27.75um 4.61um 28.39um
paint mvpdiffusion 
box 5.25um 27.75um 4.94um 28.06um
erase mvpdiffusion 
box 5.19um 27.81um 4.61um 28.39um
paint locali 
box 5.19um 27.81um 4.96um 28.04um
erase locali 
box 5.22um 27.78um 4.61um 28.39um
paint metal1 
box 5.22um 27.78um 4.94um 28.06um
erase metal1 
box 5.25um 32.75um 4.61um 32.11um
paint mvpdiffusion 
box 5.25um 32.75um 4.94um 32.44um
erase mvpdiffusion 
box 5.19um 32.69um 4.61um 32.11um
paint locali 
box 5.19um 32.69um 4.96um 32.46um
erase locali 
box 5.22um 32.72um 4.61um 32.11um
paint metal1 
box 5.22um 32.72um 4.94um 32.44um
erase metal1 
box 2.75um 33um 2.75um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 33.25um 4.61um 33.89um
paint mvpdiffusion 
box 5.25um 33.25um 4.94um 33.56um
erase mvpdiffusion 
box 5.19um 33.31um 4.61um 33.89um
paint locali 
box 5.19um 33.31um 4.96um 33.54um
erase locali 
box 5.22um 33.28um 4.61um 33.89um
paint metal1 
box 5.22um 33.28um 4.94um 33.56um
erase metal1 
box 5.25um 38.25um 4.61um 37.61um
paint mvpdiffusion 
box 5.25um 38.25um 4.94um 37.94um
erase mvpdiffusion 
box 5.19um 38.19um 4.61um 37.61um
paint locali 
box 5.19um 38.19um 4.96um 37.96um
erase locali 
box 5.22um 38.22um 4.61um 37.61um
paint metal1 
box 5.22um 38.22um 4.94um 37.94um
erase metal1 
box 2.75um 38.5um 2.75um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.25um 38.75um 4.61um 39.39um
paint mvpdiffusion 
box 5.25um 38.75um 4.94um 39.06um
erase mvpdiffusion 
box 5.19um 38.81um 4.61um 39.39um
paint locali 
box 5.19um 38.81um 4.96um 39.04um
erase locali 
box 5.22um 38.78um 4.61um 39.39um
paint metal1 
box 5.22um 38.78um 4.94um 39.06um
erase metal1 
box 5.5um 2.75um 5.5um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 5.25um 6.39um 4.61um
paint mvpdiffusion 
box 5.75um 5.25um 6.06um 4.94um
erase mvpdiffusion 
box 5.81um 5.19um 6.39um 4.61um
paint locali 
box 5.81um 5.19um 6.04um 4.96um
erase locali 
box 5.78um 5.22um 6.39um 4.61um
paint metal1 
box 5.78um 5.22um 6.06um 4.94um
erase metal1 
box 10.75um 5.25um 10.11um 4.61um
paint mvpdiffusion 
box 10.75um 5.25um 10.44um 4.94um
erase mvpdiffusion 
box 10.69um 5.19um 10.11um 4.61um
paint locali 
box 10.69um 5.19um 10.46um 4.96um
erase locali 
box 10.72um 5.22um 10.11um 4.61um
paint metal1 
box 10.72um 5.22um 10.44um 4.94um
erase metal1 
box 8.25um 5.5um 8.25um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 8.25um 5.5um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 5.75um 6.39um 6.39um
paint mvpdiffusion 
box 5.75um 5.75um 6.06um 6.06um
erase mvpdiffusion 
box 5.81um 5.81um 6.39um 6.39um
paint locali 
box 5.81um 5.81um 6.04um 6.04um
erase locali 
box 5.78um 5.78um 6.39um 6.39um
paint metal1 
box 5.78um 5.78um 6.06um 6.06um
erase metal1 
box 5.75um 10.75um 6.39um 10.11um
paint mvpdiffusion 
box 5.75um 10.75um 6.06um 10.44um
erase mvpdiffusion 
box 5.81um 10.69um 6.39um 10.11um
paint locali 
box 5.81um 10.69um 6.04um 10.46um
erase locali 
box 5.78um 10.72um 6.39um 10.11um
paint metal1 
box 5.78um 10.72um 6.06um 10.44um
erase metal1 
box 10.75um 5.75um 10.11um 6.39um
paint mvpdiffusion 
box 10.75um 5.75um 10.44um 6.06um
erase mvpdiffusion 
box 10.69um 5.81um 10.11um 6.39um
paint locali 
box 10.69um 5.81um 10.46um 6.04um
erase locali 
box 10.72um 5.78um 10.11um 6.39um
paint metal1 
box 10.72um 5.78um 10.44um 6.06um
erase metal1 
box 10.75um 10.75um 10.11um 10.11um
paint mvpdiffusion 
box 10.75um 10.75um 10.44um 10.44um
erase mvpdiffusion 
box 10.69um 10.69um 10.11um 10.11um
paint locali 
box 10.69um 10.69um 10.46um 10.46um
erase locali 
box 10.72um 10.72um 10.11um 10.11um
paint metal1 
box 10.72um 10.72um 10.44um 10.44um
erase metal1 
box 8.25um 11um 8.25um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 13.75um 5.5um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 11.25um 6.39um 11.89um
paint mvpdiffusion 
box 5.75um 11.25um 6.06um 11.56um
erase mvpdiffusion 
box 5.81um 11.31um 6.39um 11.89um
paint locali 
box 5.81um 11.31um 6.04um 11.54um
erase locali 
box 5.78um 11.28um 6.39um 11.89um
paint metal1 
box 5.78um 11.28um 6.06um 11.56um
erase metal1 
box 5.75um 16.25um 6.39um 15.61um
paint mvpdiffusion 
box 5.75um 16.25um 6.06um 15.94um
erase mvpdiffusion 
box 5.81um 16.19um 6.39um 15.61um
paint locali 
box 5.81um 16.19um 6.04um 15.96um
erase locali 
box 5.78um 16.22um 6.39um 15.61um
paint metal1 
box 5.78um 16.22um 6.06um 15.94um
erase metal1 
box 10.75um 11.25um 10.11um 11.89um
paint mvpdiffusion 
box 10.75um 11.25um 10.44um 11.56um
erase mvpdiffusion 
box 10.69um 11.31um 10.11um 11.89um
paint locali 
box 10.69um 11.31um 10.46um 11.54um
erase locali 
box 10.72um 11.28um 10.11um 11.89um
paint metal1 
box 10.72um 11.28um 10.44um 11.56um
erase metal1 
box 10.75um 16.25um 10.11um 15.61um
paint mvpdiffusion 
box 10.75um 16.25um 10.44um 15.94um
erase mvpdiffusion 
box 10.69um 16.19um 10.11um 15.61um
paint locali 
box 10.69um 16.19um 10.46um 15.96um
erase locali 
box 10.72um 16.22um 10.11um 15.61um
paint metal1 
box 10.72um 16.22um 10.44um 15.94um
erase metal1 
box 8.25um 16.5um 8.25um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 19.25um 5.5um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 16.75um 6.39um 17.39um
paint mvpdiffusion 
box 5.75um 16.75um 6.06um 17.06um
erase mvpdiffusion 
box 5.81um 16.81um 6.39um 17.39um
paint locali 
box 5.81um 16.81um 6.04um 17.04um
erase locali 
box 5.78um 16.78um 6.39um 17.39um
paint metal1 
box 5.78um 16.78um 6.06um 17.06um
erase metal1 
box 5.75um 21.75um 6.39um 21.11um
paint mvpdiffusion 
box 5.75um 21.75um 6.06um 21.44um
erase mvpdiffusion 
box 5.81um 21.69um 6.39um 21.11um
paint locali 
box 5.81um 21.69um 6.04um 21.46um
erase locali 
box 5.78um 21.72um 6.39um 21.11um
paint metal1 
box 5.78um 21.72um 6.06um 21.44um
erase metal1 
box 10.75um 16.75um 10.11um 17.39um
paint mvpdiffusion 
box 10.75um 16.75um 10.44um 17.06um
erase mvpdiffusion 
box 10.69um 16.81um 10.11um 17.39um
paint locali 
box 10.69um 16.81um 10.46um 17.04um
erase locali 
box 10.72um 16.78um 10.11um 17.39um
paint metal1 
box 10.72um 16.78um 10.44um 17.06um
erase metal1 
box 10.75um 21.75um 10.11um 21.11um
paint mvpdiffusion 
box 10.75um 21.75um 10.44um 21.44um
erase mvpdiffusion 
box 10.69um 21.69um 10.11um 21.11um
paint locali 
box 10.69um 21.69um 10.46um 21.46um
erase locali 
box 10.72um 21.72um 10.11um 21.11um
paint metal1 
box 10.72um 21.72um 10.44um 21.44um
erase metal1 
box 8.25um 22um 8.25um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 24.75um 5.5um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 22.25um 6.39um 22.89um
paint mvpdiffusion 
box 5.75um 22.25um 6.06um 22.56um
erase mvpdiffusion 
box 5.81um 22.31um 6.39um 22.89um
paint locali 
box 5.81um 22.31um 6.04um 22.54um
erase locali 
box 5.78um 22.28um 6.39um 22.89um
paint metal1 
box 5.78um 22.28um 6.06um 22.56um
erase metal1 
box 5.75um 27.25um 6.39um 26.61um
paint mvpdiffusion 
box 5.75um 27.25um 6.06um 26.94um
erase mvpdiffusion 
box 5.81um 27.19um 6.39um 26.61um
paint locali 
box 5.81um 27.19um 6.04um 26.96um
erase locali 
box 5.78um 27.22um 6.39um 26.61um
paint metal1 
box 5.78um 27.22um 6.06um 26.94um
erase metal1 
box 10.75um 22.25um 10.11um 22.89um
paint mvpdiffusion 
box 10.75um 22.25um 10.44um 22.56um
erase mvpdiffusion 
box 10.69um 22.31um 10.11um 22.89um
paint locali 
box 10.69um 22.31um 10.46um 22.54um
erase locali 
box 10.72um 22.28um 10.11um 22.89um
paint metal1 
box 10.72um 22.28um 10.44um 22.56um
erase metal1 
box 10.75um 27.25um 10.11um 26.61um
paint mvpdiffusion 
box 10.75um 27.25um 10.44um 26.94um
erase mvpdiffusion 
box 10.69um 27.19um 10.11um 26.61um
paint locali 
box 10.69um 27.19um 10.46um 26.96um
erase locali 
box 10.72um 27.22um 10.11um 26.61um
paint metal1 
box 10.72um 27.22um 10.44um 26.94um
erase metal1 
box 8.25um 27.5um 8.25um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 30.25um 5.5um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 27.75um 6.39um 28.39um
paint mvpdiffusion 
box 5.75um 27.75um 6.06um 28.06um
erase mvpdiffusion 
box 5.81um 27.81um 6.39um 28.39um
paint locali 
box 5.81um 27.81um 6.04um 28.04um
erase locali 
box 5.78um 27.78um 6.39um 28.39um
paint metal1 
box 5.78um 27.78um 6.06um 28.06um
erase metal1 
box 5.75um 32.75um 6.39um 32.11um
paint mvpdiffusion 
box 5.75um 32.75um 6.06um 32.44um
erase mvpdiffusion 
box 5.81um 32.69um 6.39um 32.11um
paint locali 
box 5.81um 32.69um 6.04um 32.46um
erase locali 
box 5.78um 32.72um 6.39um 32.11um
paint metal1 
box 5.78um 32.72um 6.06um 32.44um
erase metal1 
box 10.75um 27.75um 10.11um 28.39um
paint mvpdiffusion 
box 10.75um 27.75um 10.44um 28.06um
erase mvpdiffusion 
box 10.69um 27.81um 10.11um 28.39um
paint locali 
box 10.69um 27.81um 10.46um 28.04um
erase locali 
box 10.72um 27.78um 10.11um 28.39um
paint metal1 
box 10.72um 27.78um 10.44um 28.06um
erase metal1 
box 10.75um 32.75um 10.11um 32.11um
paint mvpdiffusion 
box 10.75um 32.75um 10.44um 32.44um
erase mvpdiffusion 
box 10.69um 32.69um 10.11um 32.11um
paint locali 
box 10.69um 32.69um 10.46um 32.46um
erase locali 
box 10.72um 32.72um 10.11um 32.11um
paint metal1 
box 10.72um 32.72um 10.44um 32.44um
erase metal1 
box 8.25um 33um 8.25um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 35.75um 5.5um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 33.25um 6.39um 33.89um
paint mvpdiffusion 
box 5.75um 33.25um 6.06um 33.56um
erase mvpdiffusion 
box 5.81um 33.31um 6.39um 33.89um
paint locali 
box 5.81um 33.31um 6.04um 33.54um
erase locali 
box 5.78um 33.28um 6.39um 33.89um
paint metal1 
box 5.78um 33.28um 6.06um 33.56um
erase metal1 
box 5.75um 38.25um 6.39um 37.61um
paint mvpdiffusion 
box 5.75um 38.25um 6.06um 37.94um
erase mvpdiffusion 
box 5.81um 38.19um 6.39um 37.61um
paint locali 
box 5.81um 38.19um 6.04um 37.96um
erase locali 
box 5.78um 38.22um 6.39um 37.61um
paint metal1 
box 5.78um 38.22um 6.06um 37.94um
erase metal1 
box 10.75um 33.25um 10.11um 33.89um
paint mvpdiffusion 
box 10.75um 33.25um 10.44um 33.56um
erase mvpdiffusion 
box 10.69um 33.31um 10.11um 33.89um
paint locali 
box 10.69um 33.31um 10.46um 33.54um
erase locali 
box 10.72um 33.28um 10.11um 33.89um
paint metal1 
box 10.72um 33.28um 10.44um 33.56um
erase metal1 
box 10.75um 38.25um 10.11um 37.61um
paint mvpdiffusion 
box 10.75um 38.25um 10.44um 37.94um
erase mvpdiffusion 
box 10.69um 38.19um 10.11um 37.61um
paint locali 
box 10.69um 38.19um 10.46um 37.96um
erase locali 
box 10.72um 38.22um 10.11um 37.61um
paint metal1 
box 10.72um 38.22um 10.44um 37.94um
erase metal1 
box 8.25um 38.5um 8.25um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 5.5um 41.25um 5.5um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 5.75um 38.75um 6.39um 39.39um
paint mvpdiffusion 
box 5.75um 38.75um 6.06um 39.06um
erase mvpdiffusion 
box 5.81um 38.81um 6.39um 39.39um
paint locali 
box 5.81um 38.81um 6.04um 39.04um
erase locali 
box 5.78um 38.78um 6.39um 39.39um
paint metal1 
box 5.78um 38.78um 6.06um 39.06um
erase metal1 
box 10.75um 38.75um 10.11um 39.39um
paint mvpdiffusion 
box 10.75um 38.75um 10.44um 39.06um
erase mvpdiffusion 
box 10.69um 38.81um 10.11um 39.39um
paint locali 
box 10.69um 38.81um 10.46um 39.04um
erase locali 
box 10.72um 38.78um 10.11um 39.39um
paint metal1 
box 10.72um 38.78um 10.44um 39.06um
erase metal1 
box 11um 2.75um 11um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 5.25um 11.89um 4.61um
paint mvpdiffusion 
box 11.25um 5.25um 11.56um 4.94um
erase mvpdiffusion 
box 11.31um 5.19um 11.89um 4.61um
paint locali 
box 11.31um 5.19um 11.54um 4.96um
erase locali 
box 11.28um 5.22um 11.89um 4.61um
paint metal1 
box 11.28um 5.22um 11.56um 4.94um
erase metal1 
box 16.25um 5.25um 15.61um 4.61um
paint mvpdiffusion 
box 16.25um 5.25um 15.94um 4.94um
erase mvpdiffusion 
box 16.19um 5.19um 15.61um 4.61um
paint locali 
box 16.19um 5.19um 15.96um 4.96um
erase locali 
box 16.22um 5.22um 15.61um 4.61um
paint metal1 
box 16.22um 5.22um 15.94um 4.94um
erase metal1 
box 13.75um 5.5um 13.75um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 8.25um 11um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 5.75um 11.89um 6.39um
paint mvpdiffusion 
box 11.25um 5.75um 11.56um 6.06um
erase mvpdiffusion 
box 11.31um 5.81um 11.89um 6.39um
paint locali 
box 11.31um 5.81um 11.54um 6.04um
erase locali 
box 11.28um 5.78um 11.89um 6.39um
paint metal1 
box 11.28um 5.78um 11.56um 6.06um
erase metal1 
box 11.25um 10.75um 11.89um 10.11um
paint mvpdiffusion 
box 11.25um 10.75um 11.56um 10.44um
erase mvpdiffusion 
box 11.31um 10.69um 11.89um 10.11um
paint locali 
box 11.31um 10.69um 11.54um 10.46um
erase locali 
box 11.28um 10.72um 11.89um 10.11um
paint metal1 
box 11.28um 10.72um 11.56um 10.44um
erase metal1 
box 16.25um 5.75um 15.61um 6.39um
paint mvpdiffusion 
box 16.25um 5.75um 15.94um 6.06um
erase mvpdiffusion 
box 16.19um 5.81um 15.61um 6.39um
paint locali 
box 16.19um 5.81um 15.96um 6.04um
erase locali 
box 16.22um 5.78um 15.61um 6.39um
paint metal1 
box 16.22um 5.78um 15.94um 6.06um
erase metal1 
box 16.25um 10.75um 15.61um 10.11um
paint mvpdiffusion 
box 16.25um 10.75um 15.94um 10.44um
erase mvpdiffusion 
box 16.19um 10.69um 15.61um 10.11um
paint locali 
box 16.19um 10.69um 15.96um 10.46um
erase locali 
box 16.22um 10.72um 15.61um 10.11um
paint metal1 
box 16.22um 10.72um 15.94um 10.44um
erase metal1 
box 13.75um 11um 13.75um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 13.75um 11um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 11.25um 11.89um 11.89um
paint mvpdiffusion 
box 11.25um 11.25um 11.56um 11.56um
erase mvpdiffusion 
box 11.31um 11.31um 11.89um 11.89um
paint locali 
box 11.31um 11.31um 11.54um 11.54um
erase locali 
box 11.28um 11.28um 11.89um 11.89um
paint metal1 
box 11.28um 11.28um 11.56um 11.56um
erase metal1 
box 11.25um 16.25um 11.89um 15.61um
paint mvpdiffusion 
box 11.25um 16.25um 11.56um 15.94um
erase mvpdiffusion 
box 11.31um 16.19um 11.89um 15.61um
paint locali 
box 11.31um 16.19um 11.54um 15.96um
erase locali 
box 11.28um 16.22um 11.89um 15.61um
paint metal1 
box 11.28um 16.22um 11.56um 15.94um
erase metal1 
box 16.25um 11.25um 15.61um 11.89um
paint mvpdiffusion 
box 16.25um 11.25um 15.94um 11.56um
erase mvpdiffusion 
box 16.19um 11.31um 15.61um 11.89um
paint locali 
box 16.19um 11.31um 15.96um 11.54um
erase locali 
box 16.22um 11.28um 15.61um 11.89um
paint metal1 
box 16.22um 11.28um 15.94um 11.56um
erase metal1 
box 16.25um 16.25um 15.61um 15.61um
paint mvpdiffusion 
box 16.25um 16.25um 15.94um 15.94um
erase mvpdiffusion 
box 16.19um 16.19um 15.61um 15.61um
paint locali 
box 16.19um 16.19um 15.96um 15.96um
erase locali 
box 16.22um 16.22um 15.61um 15.61um
paint metal1 
box 16.22um 16.22um 15.94um 15.94um
erase metal1 
box 13.75um 16.5um 13.75um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 19.25um 11um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 16.75um 11.89um 17.39um
paint mvpdiffusion 
box 11.25um 16.75um 11.56um 17.06um
erase mvpdiffusion 
box 11.31um 16.81um 11.89um 17.39um
paint locali 
box 11.31um 16.81um 11.54um 17.04um
erase locali 
box 11.28um 16.78um 11.89um 17.39um
paint metal1 
box 11.28um 16.78um 11.56um 17.06um
erase metal1 
box 11.25um 21.75um 11.89um 21.11um
paint mvpdiffusion 
box 11.25um 21.75um 11.56um 21.44um
erase mvpdiffusion 
box 11.31um 21.69um 11.89um 21.11um
paint locali 
box 11.31um 21.69um 11.54um 21.46um
erase locali 
box 11.28um 21.72um 11.89um 21.11um
paint metal1 
box 11.28um 21.72um 11.56um 21.44um
erase metal1 
box 16.25um 16.75um 15.61um 17.39um
paint mvpdiffusion 
box 16.25um 16.75um 15.94um 17.06um
erase mvpdiffusion 
box 16.19um 16.81um 15.61um 17.39um
paint locali 
box 16.19um 16.81um 15.96um 17.04um
erase locali 
box 16.22um 16.78um 15.61um 17.39um
paint metal1 
box 16.22um 16.78um 15.94um 17.06um
erase metal1 
box 16.25um 21.75um 15.61um 21.11um
paint mvpdiffusion 
box 16.25um 21.75um 15.94um 21.44um
erase mvpdiffusion 
box 16.19um 21.69um 15.61um 21.11um
paint locali 
box 16.19um 21.69um 15.96um 21.46um
erase locali 
box 16.22um 21.72um 15.61um 21.11um
paint metal1 
box 16.22um 21.72um 15.94um 21.44um
erase metal1 
box 13.75um 22um 13.75um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 24.75um 11um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 22.25um 11.89um 22.89um
paint mvpdiffusion 
box 11.25um 22.25um 11.56um 22.56um
erase mvpdiffusion 
box 11.31um 22.31um 11.89um 22.89um
paint locali 
box 11.31um 22.31um 11.54um 22.54um
erase locali 
box 11.28um 22.28um 11.89um 22.89um
paint metal1 
box 11.28um 22.28um 11.56um 22.56um
erase metal1 
box 11.25um 27.25um 11.89um 26.61um
paint mvpdiffusion 
box 11.25um 27.25um 11.56um 26.94um
erase mvpdiffusion 
box 11.31um 27.19um 11.89um 26.61um
paint locali 
box 11.31um 27.19um 11.54um 26.96um
erase locali 
box 11.28um 27.22um 11.89um 26.61um
paint metal1 
box 11.28um 27.22um 11.56um 26.94um
erase metal1 
box 16.25um 22.25um 15.61um 22.89um
paint mvpdiffusion 
box 16.25um 22.25um 15.94um 22.56um
erase mvpdiffusion 
box 16.19um 22.31um 15.61um 22.89um
paint locali 
box 16.19um 22.31um 15.96um 22.54um
erase locali 
box 16.22um 22.28um 15.61um 22.89um
paint metal1 
box 16.22um 22.28um 15.94um 22.56um
erase metal1 
box 16.25um 27.25um 15.61um 26.61um
paint mvpdiffusion 
box 16.25um 27.25um 15.94um 26.94um
erase mvpdiffusion 
box 16.19um 27.19um 15.61um 26.61um
paint locali 
box 16.19um 27.19um 15.96um 26.96um
erase locali 
box 16.22um 27.22um 15.61um 26.61um
paint metal1 
box 16.22um 27.22um 15.94um 26.94um
erase metal1 
box 13.75um 27.5um 13.75um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 30.25um 11um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 27.75um 11.89um 28.39um
paint mvpdiffusion 
box 11.25um 27.75um 11.56um 28.06um
erase mvpdiffusion 
box 11.31um 27.81um 11.89um 28.39um
paint locali 
box 11.31um 27.81um 11.54um 28.04um
erase locali 
box 11.28um 27.78um 11.89um 28.39um
paint metal1 
box 11.28um 27.78um 11.56um 28.06um
erase metal1 
box 11.25um 32.75um 11.89um 32.11um
paint mvpdiffusion 
box 11.25um 32.75um 11.56um 32.44um
erase mvpdiffusion 
box 11.31um 32.69um 11.89um 32.11um
paint locali 
box 11.31um 32.69um 11.54um 32.46um
erase locali 
box 11.28um 32.72um 11.89um 32.11um
paint metal1 
box 11.28um 32.72um 11.56um 32.44um
erase metal1 
box 16.25um 27.75um 15.61um 28.39um
paint mvpdiffusion 
box 16.25um 27.75um 15.94um 28.06um
erase mvpdiffusion 
box 16.19um 27.81um 15.61um 28.39um
paint locali 
box 16.19um 27.81um 15.96um 28.04um
erase locali 
box 16.22um 27.78um 15.61um 28.39um
paint metal1 
box 16.22um 27.78um 15.94um 28.06um
erase metal1 
box 16.25um 32.75um 15.61um 32.11um
paint mvpdiffusion 
box 16.25um 32.75um 15.94um 32.44um
erase mvpdiffusion 
box 16.19um 32.69um 15.61um 32.11um
paint locali 
box 16.19um 32.69um 15.96um 32.46um
erase locali 
box 16.22um 32.72um 15.61um 32.11um
paint metal1 
box 16.22um 32.72um 15.94um 32.44um
erase metal1 
box 13.75um 33um 13.75um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 35.75um 11um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 33.25um 11.89um 33.89um
paint mvpdiffusion 
box 11.25um 33.25um 11.56um 33.56um
erase mvpdiffusion 
box 11.31um 33.31um 11.89um 33.89um
paint locali 
box 11.31um 33.31um 11.54um 33.54um
erase locali 
box 11.28um 33.28um 11.89um 33.89um
paint metal1 
box 11.28um 33.28um 11.56um 33.56um
erase metal1 
box 11.25um 38.25um 11.89um 37.61um
paint mvpdiffusion 
box 11.25um 38.25um 11.56um 37.94um
erase mvpdiffusion 
box 11.31um 38.19um 11.89um 37.61um
paint locali 
box 11.31um 38.19um 11.54um 37.96um
erase locali 
box 11.28um 38.22um 11.89um 37.61um
paint metal1 
box 11.28um 38.22um 11.56um 37.94um
erase metal1 
box 16.25um 33.25um 15.61um 33.89um
paint mvpdiffusion 
box 16.25um 33.25um 15.94um 33.56um
erase mvpdiffusion 
box 16.19um 33.31um 15.61um 33.89um
paint locali 
box 16.19um 33.31um 15.96um 33.54um
erase locali 
box 16.22um 33.28um 15.61um 33.89um
paint metal1 
box 16.22um 33.28um 15.94um 33.56um
erase metal1 
box 16.25um 38.25um 15.61um 37.61um
paint mvpdiffusion 
box 16.25um 38.25um 15.94um 37.94um
erase mvpdiffusion 
box 16.19um 38.19um 15.61um 37.61um
paint locali 
box 16.19um 38.19um 15.96um 37.96um
erase locali 
box 16.22um 38.22um 15.61um 37.61um
paint metal1 
box 16.22um 38.22um 15.94um 37.94um
erase metal1 
box 13.75um 38.5um 13.75um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 11um 41.25um 11um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 11.25um 38.75um 11.89um 39.39um
paint mvpdiffusion 
box 11.25um 38.75um 11.56um 39.06um
erase mvpdiffusion 
box 11.31um 38.81um 11.89um 39.39um
paint locali 
box 11.31um 38.81um 11.54um 39.04um
erase locali 
box 11.28um 38.78um 11.89um 39.39um
paint metal1 
box 11.28um 38.78um 11.56um 39.06um
erase metal1 
box 16.25um 38.75um 15.61um 39.39um
paint mvpdiffusion 
box 16.25um 38.75um 15.94um 39.06um
erase mvpdiffusion 
box 16.19um 38.81um 15.61um 39.39um
paint locali 
box 16.19um 38.81um 15.96um 39.04um
erase locali 
box 16.22um 38.78um 15.61um 39.39um
paint metal1 
box 16.22um 38.78um 15.94um 39.06um
erase metal1 
box 16.5um 2.75um 16.5um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 5.25um 17.39um 4.61um
paint mvpdiffusion 
box 16.75um 5.25um 17.06um 4.94um
erase mvpdiffusion 
box 16.81um 5.19um 17.39um 4.61um
paint locali 
box 16.81um 5.19um 17.04um 4.96um
erase locali 
box 16.78um 5.22um 17.39um 4.61um
paint metal1 
box 16.78um 5.22um 17.06um 4.94um
erase metal1 
box 21.75um 5.25um 21.11um 4.61um
paint mvpdiffusion 
box 21.75um 5.25um 21.44um 4.94um
erase mvpdiffusion 
box 21.69um 5.19um 21.11um 4.61um
paint locali 
box 21.69um 5.19um 21.46um 4.96um
erase locali 
box 21.72um 5.22um 21.11um 4.61um
paint metal1 
box 21.72um 5.22um 21.44um 4.94um
erase metal1 
box 19.25um 5.5um 19.25um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 8.25um 16.5um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 5.75um 17.39um 6.39um
paint mvpdiffusion 
box 16.75um 5.75um 17.06um 6.06um
erase mvpdiffusion 
box 16.81um 5.81um 17.39um 6.39um
paint locali 
box 16.81um 5.81um 17.04um 6.04um
erase locali 
box 16.78um 5.78um 17.39um 6.39um
paint metal1 
box 16.78um 5.78um 17.06um 6.06um
erase metal1 
box 16.75um 10.75um 17.39um 10.11um
paint mvpdiffusion 
box 16.75um 10.75um 17.06um 10.44um
erase mvpdiffusion 
box 16.81um 10.69um 17.39um 10.11um
paint locali 
box 16.81um 10.69um 17.04um 10.46um
erase locali 
box 16.78um 10.72um 17.39um 10.11um
paint metal1 
box 16.78um 10.72um 17.06um 10.44um
erase metal1 
box 21.75um 5.75um 21.11um 6.39um
paint mvpdiffusion 
box 21.75um 5.75um 21.44um 6.06um
erase mvpdiffusion 
box 21.69um 5.81um 21.11um 6.39um
paint locali 
box 21.69um 5.81um 21.46um 6.04um
erase locali 
box 21.72um 5.78um 21.11um 6.39um
paint metal1 
box 21.72um 5.78um 21.44um 6.06um
erase metal1 
box 21.75um 10.75um 21.11um 10.11um
paint mvpdiffusion 
box 21.75um 10.75um 21.44um 10.44um
erase mvpdiffusion 
box 21.69um 10.69um 21.11um 10.11um
paint locali 
box 21.69um 10.69um 21.46um 10.46um
erase locali 
box 21.72um 10.72um 21.11um 10.11um
paint metal1 
box 21.72um 10.72um 21.44um 10.44um
erase metal1 
box 19.25um 11um 19.25um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 13.75um 16.5um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 11.25um 17.39um 11.89um
paint mvpdiffusion 
box 16.75um 11.25um 17.06um 11.56um
erase mvpdiffusion 
box 16.81um 11.31um 17.39um 11.89um
paint locali 
box 16.81um 11.31um 17.04um 11.54um
erase locali 
box 16.78um 11.28um 17.39um 11.89um
paint metal1 
box 16.78um 11.28um 17.06um 11.56um
erase metal1 
box 16.75um 16.25um 17.39um 15.61um
paint mvpdiffusion 
box 16.75um 16.25um 17.06um 15.94um
erase mvpdiffusion 
box 16.81um 16.19um 17.39um 15.61um
paint locali 
box 16.81um 16.19um 17.04um 15.96um
erase locali 
box 16.78um 16.22um 17.39um 15.61um
paint metal1 
box 16.78um 16.22um 17.06um 15.94um
erase metal1 
box 21.75um 11.25um 21.11um 11.89um
paint mvpdiffusion 
box 21.75um 11.25um 21.44um 11.56um
erase mvpdiffusion 
box 21.69um 11.31um 21.11um 11.89um
paint locali 
box 21.69um 11.31um 21.46um 11.54um
erase locali 
box 21.72um 11.28um 21.11um 11.89um
paint metal1 
box 21.72um 11.28um 21.44um 11.56um
erase metal1 
box 21.75um 16.25um 21.11um 15.61um
paint mvpdiffusion 
box 21.75um 16.25um 21.44um 15.94um
erase mvpdiffusion 
box 21.69um 16.19um 21.11um 15.61um
paint locali 
box 21.69um 16.19um 21.46um 15.96um
erase locali 
box 21.72um 16.22um 21.11um 15.61um
paint metal1 
box 21.72um 16.22um 21.44um 15.94um
erase metal1 
box 19.25um 16.5um 19.25um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 19.25um 16.5um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 16.75um 17.39um 17.39um
paint mvpdiffusion 
box 16.75um 16.75um 17.06um 17.06um
erase mvpdiffusion 
box 16.81um 16.81um 17.39um 17.39um
paint locali 
box 16.81um 16.81um 17.04um 17.04um
erase locali 
box 16.78um 16.78um 17.39um 17.39um
paint metal1 
box 16.78um 16.78um 17.06um 17.06um
erase metal1 
box 16.75um 21.75um 17.39um 21.11um
paint mvpdiffusion 
box 16.75um 21.75um 17.06um 21.44um
erase mvpdiffusion 
box 16.81um 21.69um 17.39um 21.11um
paint locali 
box 16.81um 21.69um 17.04um 21.46um
erase locali 
box 16.78um 21.72um 17.39um 21.11um
paint metal1 
box 16.78um 21.72um 17.06um 21.44um
erase metal1 
box 21.75um 16.75um 21.11um 17.39um
paint mvpdiffusion 
box 21.75um 16.75um 21.44um 17.06um
erase mvpdiffusion 
box 21.69um 16.81um 21.11um 17.39um
paint locali 
box 21.69um 16.81um 21.46um 17.04um
erase locali 
box 21.72um 16.78um 21.11um 17.39um
paint metal1 
box 21.72um 16.78um 21.44um 17.06um
erase metal1 
box 21.75um 21.75um 21.11um 21.11um
paint mvpdiffusion 
box 21.75um 21.75um 21.44um 21.44um
erase mvpdiffusion 
box 21.69um 21.69um 21.11um 21.11um
paint locali 
box 21.69um 21.69um 21.46um 21.46um
erase locali 
box 21.72um 21.72um 21.11um 21.11um
paint metal1 
box 21.72um 21.72um 21.44um 21.44um
erase metal1 
box 19.25um 22um 19.25um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 24.75um 16.5um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 22.25um 17.39um 22.89um
paint mvpdiffusion 
box 16.75um 22.25um 17.06um 22.56um
erase mvpdiffusion 
box 16.81um 22.31um 17.39um 22.89um
paint locali 
box 16.81um 22.31um 17.04um 22.54um
erase locali 
box 16.78um 22.28um 17.39um 22.89um
paint metal1 
box 16.78um 22.28um 17.06um 22.56um
erase metal1 
box 16.75um 27.25um 17.39um 26.61um
paint mvpdiffusion 
box 16.75um 27.25um 17.06um 26.94um
erase mvpdiffusion 
box 16.81um 27.19um 17.39um 26.61um
paint locali 
box 16.81um 27.19um 17.04um 26.96um
erase locali 
box 16.78um 27.22um 17.39um 26.61um
paint metal1 
box 16.78um 27.22um 17.06um 26.94um
erase metal1 
box 21.75um 22.25um 21.11um 22.89um
paint mvpdiffusion 
box 21.75um 22.25um 21.44um 22.56um
erase mvpdiffusion 
box 21.69um 22.31um 21.11um 22.89um
paint locali 
box 21.69um 22.31um 21.46um 22.54um
erase locali 
box 21.72um 22.28um 21.11um 22.89um
paint metal1 
box 21.72um 22.28um 21.44um 22.56um
erase metal1 
box 21.75um 27.25um 21.11um 26.61um
paint mvpdiffusion 
box 21.75um 27.25um 21.44um 26.94um
erase mvpdiffusion 
box 21.69um 27.19um 21.11um 26.61um
paint locali 
box 21.69um 27.19um 21.46um 26.96um
erase locali 
box 21.72um 27.22um 21.11um 26.61um
paint metal1 
box 21.72um 27.22um 21.44um 26.94um
erase metal1 
box 19.25um 27.5um 19.25um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 30.25um 16.5um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 27.75um 17.39um 28.39um
paint mvpdiffusion 
box 16.75um 27.75um 17.06um 28.06um
erase mvpdiffusion 
box 16.81um 27.81um 17.39um 28.39um
paint locali 
box 16.81um 27.81um 17.04um 28.04um
erase locali 
box 16.78um 27.78um 17.39um 28.39um
paint metal1 
box 16.78um 27.78um 17.06um 28.06um
erase metal1 
box 16.75um 32.75um 17.39um 32.11um
paint mvpdiffusion 
box 16.75um 32.75um 17.06um 32.44um
erase mvpdiffusion 
box 16.81um 32.69um 17.39um 32.11um
paint locali 
box 16.81um 32.69um 17.04um 32.46um
erase locali 
box 16.78um 32.72um 17.39um 32.11um
paint metal1 
box 16.78um 32.72um 17.06um 32.44um
erase metal1 
box 21.75um 27.75um 21.11um 28.39um
paint mvpdiffusion 
box 21.75um 27.75um 21.44um 28.06um
erase mvpdiffusion 
box 21.69um 27.81um 21.11um 28.39um
paint locali 
box 21.69um 27.81um 21.46um 28.04um
erase locali 
box 21.72um 27.78um 21.11um 28.39um
paint metal1 
box 21.72um 27.78um 21.44um 28.06um
erase metal1 
box 21.75um 32.75um 21.11um 32.11um
paint mvpdiffusion 
box 21.75um 32.75um 21.44um 32.44um
erase mvpdiffusion 
box 21.69um 32.69um 21.11um 32.11um
paint locali 
box 21.69um 32.69um 21.46um 32.46um
erase locali 
box 21.72um 32.72um 21.11um 32.11um
paint metal1 
box 21.72um 32.72um 21.44um 32.44um
erase metal1 
box 19.25um 33um 19.25um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 35.75um 16.5um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 33.25um 17.39um 33.89um
paint mvpdiffusion 
box 16.75um 33.25um 17.06um 33.56um
erase mvpdiffusion 
box 16.81um 33.31um 17.39um 33.89um
paint locali 
box 16.81um 33.31um 17.04um 33.54um
erase locali 
box 16.78um 33.28um 17.39um 33.89um
paint metal1 
box 16.78um 33.28um 17.06um 33.56um
erase metal1 
box 16.75um 38.25um 17.39um 37.61um
paint mvpdiffusion 
box 16.75um 38.25um 17.06um 37.94um
erase mvpdiffusion 
box 16.81um 38.19um 17.39um 37.61um
paint locali 
box 16.81um 38.19um 17.04um 37.96um
erase locali 
box 16.78um 38.22um 17.39um 37.61um
paint metal1 
box 16.78um 38.22um 17.06um 37.94um
erase metal1 
box 21.75um 33.25um 21.11um 33.89um
paint mvpdiffusion 
box 21.75um 33.25um 21.44um 33.56um
erase mvpdiffusion 
box 21.69um 33.31um 21.11um 33.89um
paint locali 
box 21.69um 33.31um 21.46um 33.54um
erase locali 
box 21.72um 33.28um 21.11um 33.89um
paint metal1 
box 21.72um 33.28um 21.44um 33.56um
erase metal1 
box 21.75um 38.25um 21.11um 37.61um
paint mvpdiffusion 
box 21.75um 38.25um 21.44um 37.94um
erase mvpdiffusion 
box 21.69um 38.19um 21.11um 37.61um
paint locali 
box 21.69um 38.19um 21.46um 37.96um
erase locali 
box 21.72um 38.22um 21.11um 37.61um
paint metal1 
box 21.72um 38.22um 21.44um 37.94um
erase metal1 
box 19.25um 38.5um 19.25um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 16.5um 41.25um 16.5um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 16.75um 38.75um 17.39um 39.39um
paint mvpdiffusion 
box 16.75um 38.75um 17.06um 39.06um
erase mvpdiffusion 
box 16.81um 38.81um 17.39um 39.39um
paint locali 
box 16.81um 38.81um 17.04um 39.04um
erase locali 
box 16.78um 38.78um 17.39um 39.39um
paint metal1 
box 16.78um 38.78um 17.06um 39.06um
erase metal1 
box 21.75um 38.75um 21.11um 39.39um
paint mvpdiffusion 
box 21.75um 38.75um 21.44um 39.06um
erase mvpdiffusion 
box 21.69um 38.81um 21.11um 39.39um
paint locali 
box 21.69um 38.81um 21.46um 39.04um
erase locali 
box 21.72um 38.78um 21.11um 39.39um
paint metal1 
box 21.72um 38.78um 21.44um 39.06um
erase metal1 
box 22um 2.75um 22um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 5.25um 22.89um 4.61um
paint mvpdiffusion 
box 22.25um 5.25um 22.56um 4.94um
erase mvpdiffusion 
box 22.31um 5.19um 22.89um 4.61um
paint locali 
box 22.31um 5.19um 22.54um 4.96um
erase locali 
box 22.28um 5.22um 22.89um 4.61um
paint metal1 
box 22.28um 5.22um 22.56um 4.94um
erase metal1 
box 27.25um 5.25um 26.61um 4.61um
paint mvpdiffusion 
box 27.25um 5.25um 26.94um 4.94um
erase mvpdiffusion 
box 27.19um 5.19um 26.61um 4.61um
paint locali 
box 27.19um 5.19um 26.96um 4.96um
erase locali 
box 27.22um 5.22um 26.61um 4.61um
paint metal1 
box 27.22um 5.22um 26.94um 4.94um
erase metal1 
box 24.75um 5.5um 24.75um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 8.25um 22um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 5.75um 22.89um 6.39um
paint mvpdiffusion 
box 22.25um 5.75um 22.56um 6.06um
erase mvpdiffusion 
box 22.31um 5.81um 22.89um 6.39um
paint locali 
box 22.31um 5.81um 22.54um 6.04um
erase locali 
box 22.28um 5.78um 22.89um 6.39um
paint metal1 
box 22.28um 5.78um 22.56um 6.06um
erase metal1 
box 22.25um 10.75um 22.89um 10.11um
paint mvpdiffusion 
box 22.25um 10.75um 22.56um 10.44um
erase mvpdiffusion 
box 22.31um 10.69um 22.89um 10.11um
paint locali 
box 22.31um 10.69um 22.54um 10.46um
erase locali 
box 22.28um 10.72um 22.89um 10.11um
paint metal1 
box 22.28um 10.72um 22.56um 10.44um
erase metal1 
box 27.25um 5.75um 26.61um 6.39um
paint mvpdiffusion 
box 27.25um 5.75um 26.94um 6.06um
erase mvpdiffusion 
box 27.19um 5.81um 26.61um 6.39um
paint locali 
box 27.19um 5.81um 26.96um 6.04um
erase locali 
box 27.22um 5.78um 26.61um 6.39um
paint metal1 
box 27.22um 5.78um 26.94um 6.06um
erase metal1 
box 27.25um 10.75um 26.61um 10.11um
paint mvpdiffusion 
box 27.25um 10.75um 26.94um 10.44um
erase mvpdiffusion 
box 27.19um 10.69um 26.61um 10.11um
paint locali 
box 27.19um 10.69um 26.96um 10.46um
erase locali 
box 27.22um 10.72um 26.61um 10.11um
paint metal1 
box 27.22um 10.72um 26.94um 10.44um
erase metal1 
box 24.75um 11um 24.75um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 13.75um 22um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 11.25um 22.89um 11.89um
paint mvpdiffusion 
box 22.25um 11.25um 22.56um 11.56um
erase mvpdiffusion 
box 22.31um 11.31um 22.89um 11.89um
paint locali 
box 22.31um 11.31um 22.54um 11.54um
erase locali 
box 22.28um 11.28um 22.89um 11.89um
paint metal1 
box 22.28um 11.28um 22.56um 11.56um
erase metal1 
box 22.25um 16.25um 22.89um 15.61um
paint mvpdiffusion 
box 22.25um 16.25um 22.56um 15.94um
erase mvpdiffusion 
box 22.31um 16.19um 22.89um 15.61um
paint locali 
box 22.31um 16.19um 22.54um 15.96um
erase locali 
box 22.28um 16.22um 22.89um 15.61um
paint metal1 
box 22.28um 16.22um 22.56um 15.94um
erase metal1 
box 27.25um 11.25um 26.61um 11.89um
paint mvpdiffusion 
box 27.25um 11.25um 26.94um 11.56um
erase mvpdiffusion 
box 27.19um 11.31um 26.61um 11.89um
paint locali 
box 27.19um 11.31um 26.96um 11.54um
erase locali 
box 27.22um 11.28um 26.61um 11.89um
paint metal1 
box 27.22um 11.28um 26.94um 11.56um
erase metal1 
box 27.25um 16.25um 26.61um 15.61um
paint mvpdiffusion 
box 27.25um 16.25um 26.94um 15.94um
erase mvpdiffusion 
box 27.19um 16.19um 26.61um 15.61um
paint locali 
box 27.19um 16.19um 26.96um 15.96um
erase locali 
box 27.22um 16.22um 26.61um 15.61um
paint metal1 
box 27.22um 16.22um 26.94um 15.94um
erase metal1 
box 24.75um 16.5um 24.75um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 19.25um 22um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 16.75um 22.89um 17.39um
paint mvpdiffusion 
box 22.25um 16.75um 22.56um 17.06um
erase mvpdiffusion 
box 22.31um 16.81um 22.89um 17.39um
paint locali 
box 22.31um 16.81um 22.54um 17.04um
erase locali 
box 22.28um 16.78um 22.89um 17.39um
paint metal1 
box 22.28um 16.78um 22.56um 17.06um
erase metal1 
box 22.25um 21.75um 22.89um 21.11um
paint mvpdiffusion 
box 22.25um 21.75um 22.56um 21.44um
erase mvpdiffusion 
box 22.31um 21.69um 22.89um 21.11um
paint locali 
box 22.31um 21.69um 22.54um 21.46um
erase locali 
box 22.28um 21.72um 22.89um 21.11um
paint metal1 
box 22.28um 21.72um 22.56um 21.44um
erase metal1 
box 27.25um 16.75um 26.61um 17.39um
paint mvpdiffusion 
box 27.25um 16.75um 26.94um 17.06um
erase mvpdiffusion 
box 27.19um 16.81um 26.61um 17.39um
paint locali 
box 27.19um 16.81um 26.96um 17.04um
erase locali 
box 27.22um 16.78um 26.61um 17.39um
paint metal1 
box 27.22um 16.78um 26.94um 17.06um
erase metal1 
box 27.25um 21.75um 26.61um 21.11um
paint mvpdiffusion 
box 27.25um 21.75um 26.94um 21.44um
erase mvpdiffusion 
box 27.19um 21.69um 26.61um 21.11um
paint locali 
box 27.19um 21.69um 26.96um 21.46um
erase locali 
box 27.22um 21.72um 26.61um 21.11um
paint metal1 
box 27.22um 21.72um 26.94um 21.44um
erase metal1 
box 24.75um 22um 24.75um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 24.75um 22um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 22.25um 22.89um 22.89um
paint mvpdiffusion 
box 22.25um 22.25um 22.56um 22.56um
erase mvpdiffusion 
box 22.31um 22.31um 22.89um 22.89um
paint locali 
box 22.31um 22.31um 22.54um 22.54um
erase locali 
box 22.28um 22.28um 22.89um 22.89um
paint metal1 
box 22.28um 22.28um 22.56um 22.56um
erase metal1 
box 22.25um 27.25um 22.89um 26.61um
paint mvpdiffusion 
box 22.25um 27.25um 22.56um 26.94um
erase mvpdiffusion 
box 22.31um 27.19um 22.89um 26.61um
paint locali 
box 22.31um 27.19um 22.54um 26.96um
erase locali 
box 22.28um 27.22um 22.89um 26.61um
paint metal1 
box 22.28um 27.22um 22.56um 26.94um
erase metal1 
box 27.25um 22.25um 26.61um 22.89um
paint mvpdiffusion 
box 27.25um 22.25um 26.94um 22.56um
erase mvpdiffusion 
box 27.19um 22.31um 26.61um 22.89um
paint locali 
box 27.19um 22.31um 26.96um 22.54um
erase locali 
box 27.22um 22.28um 26.61um 22.89um
paint metal1 
box 27.22um 22.28um 26.94um 22.56um
erase metal1 
box 27.25um 27.25um 26.61um 26.61um
paint mvpdiffusion 
box 27.25um 27.25um 26.94um 26.94um
erase mvpdiffusion 
box 27.19um 27.19um 26.61um 26.61um
paint locali 
box 27.19um 27.19um 26.96um 26.96um
erase locali 
box 27.22um 27.22um 26.61um 26.61um
paint metal1 
box 27.22um 27.22um 26.94um 26.94um
erase metal1 
box 24.75um 27.5um 24.75um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 30.25um 22um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 27.75um 22.89um 28.39um
paint mvpdiffusion 
box 22.25um 27.75um 22.56um 28.06um
erase mvpdiffusion 
box 22.31um 27.81um 22.89um 28.39um
paint locali 
box 22.31um 27.81um 22.54um 28.04um
erase locali 
box 22.28um 27.78um 22.89um 28.39um
paint metal1 
box 22.28um 27.78um 22.56um 28.06um
erase metal1 
box 22.25um 32.75um 22.89um 32.11um
paint mvpdiffusion 
box 22.25um 32.75um 22.56um 32.44um
erase mvpdiffusion 
box 22.31um 32.69um 22.89um 32.11um
paint locali 
box 22.31um 32.69um 22.54um 32.46um
erase locali 
box 22.28um 32.72um 22.89um 32.11um
paint metal1 
box 22.28um 32.72um 22.56um 32.44um
erase metal1 
box 27.25um 27.75um 26.61um 28.39um
paint mvpdiffusion 
box 27.25um 27.75um 26.94um 28.06um
erase mvpdiffusion 
box 27.19um 27.81um 26.61um 28.39um
paint locali 
box 27.19um 27.81um 26.96um 28.04um
erase locali 
box 27.22um 27.78um 26.61um 28.39um
paint metal1 
box 27.22um 27.78um 26.94um 28.06um
erase metal1 
box 27.25um 32.75um 26.61um 32.11um
paint mvpdiffusion 
box 27.25um 32.75um 26.94um 32.44um
erase mvpdiffusion 
box 27.19um 32.69um 26.61um 32.11um
paint locali 
box 27.19um 32.69um 26.96um 32.46um
erase locali 
box 27.22um 32.72um 26.61um 32.11um
paint metal1 
box 27.22um 32.72um 26.94um 32.44um
erase metal1 
box 24.75um 33um 24.75um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 35.75um 22um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 33.25um 22.89um 33.89um
paint mvpdiffusion 
box 22.25um 33.25um 22.56um 33.56um
erase mvpdiffusion 
box 22.31um 33.31um 22.89um 33.89um
paint locali 
box 22.31um 33.31um 22.54um 33.54um
erase locali 
box 22.28um 33.28um 22.89um 33.89um
paint metal1 
box 22.28um 33.28um 22.56um 33.56um
erase metal1 
box 22.25um 38.25um 22.89um 37.61um
paint mvpdiffusion 
box 22.25um 38.25um 22.56um 37.94um
erase mvpdiffusion 
box 22.31um 38.19um 22.89um 37.61um
paint locali 
box 22.31um 38.19um 22.54um 37.96um
erase locali 
box 22.28um 38.22um 22.89um 37.61um
paint metal1 
box 22.28um 38.22um 22.56um 37.94um
erase metal1 
box 27.25um 33.25um 26.61um 33.89um
paint mvpdiffusion 
box 27.25um 33.25um 26.94um 33.56um
erase mvpdiffusion 
box 27.19um 33.31um 26.61um 33.89um
paint locali 
box 27.19um 33.31um 26.96um 33.54um
erase locali 
box 27.22um 33.28um 26.61um 33.89um
paint metal1 
box 27.22um 33.28um 26.94um 33.56um
erase metal1 
box 27.25um 38.25um 26.61um 37.61um
paint mvpdiffusion 
box 27.25um 38.25um 26.94um 37.94um
erase mvpdiffusion 
box 27.19um 38.19um 26.61um 37.61um
paint locali 
box 27.19um 38.19um 26.96um 37.96um
erase locali 
box 27.22um 38.22um 26.61um 37.61um
paint metal1 
box 27.22um 38.22um 26.94um 37.94um
erase metal1 
box 24.75um 38.5um 24.75um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 22um 41.25um 22um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 22.25um 38.75um 22.89um 39.39um
paint mvpdiffusion 
box 22.25um 38.75um 22.56um 39.06um
erase mvpdiffusion 
box 22.31um 38.81um 22.89um 39.39um
paint locali 
box 22.31um 38.81um 22.54um 39.04um
erase locali 
box 22.28um 38.78um 22.89um 39.39um
paint metal1 
box 22.28um 38.78um 22.56um 39.06um
erase metal1 
box 27.25um 38.75um 26.61um 39.39um
paint mvpdiffusion 
box 27.25um 38.75um 26.94um 39.06um
erase mvpdiffusion 
box 27.19um 38.81um 26.61um 39.39um
paint locali 
box 27.19um 38.81um 26.96um 39.04um
erase locali 
box 27.22um 38.78um 26.61um 39.39um
paint metal1 
box 27.22um 38.78um 26.94um 39.06um
erase metal1 
box 27.5um 2.75um 27.5um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 5.25um 28.39um 4.61um
paint mvpdiffusion 
box 27.75um 5.25um 28.06um 4.94um
erase mvpdiffusion 
box 27.81um 5.19um 28.39um 4.61um
paint locali 
box 27.81um 5.19um 28.04um 4.96um
erase locali 
box 27.78um 5.22um 28.39um 4.61um
paint metal1 
box 27.78um 5.22um 28.06um 4.94um
erase metal1 
box 32.75um 5.25um 32.11um 4.61um
paint mvpdiffusion 
box 32.75um 5.25um 32.44um 4.94um
erase mvpdiffusion 
box 32.69um 5.19um 32.11um 4.61um
paint locali 
box 32.69um 5.19um 32.46um 4.96um
erase locali 
box 32.72um 5.22um 32.11um 4.61um
paint metal1 
box 32.72um 5.22um 32.44um 4.94um
erase metal1 
box 30.25um 5.5um 30.25um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 8.25um 27.5um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 5.75um 28.39um 6.39um
paint mvpdiffusion 
box 27.75um 5.75um 28.06um 6.06um
erase mvpdiffusion 
box 27.81um 5.81um 28.39um 6.39um
paint locali 
box 27.81um 5.81um 28.04um 6.04um
erase locali 
box 27.78um 5.78um 28.39um 6.39um
paint metal1 
box 27.78um 5.78um 28.06um 6.06um
erase metal1 
box 27.75um 10.75um 28.39um 10.11um
paint mvpdiffusion 
box 27.75um 10.75um 28.06um 10.44um
erase mvpdiffusion 
box 27.81um 10.69um 28.39um 10.11um
paint locali 
box 27.81um 10.69um 28.04um 10.46um
erase locali 
box 27.78um 10.72um 28.39um 10.11um
paint metal1 
box 27.78um 10.72um 28.06um 10.44um
erase metal1 
box 32.75um 5.75um 32.11um 6.39um
paint mvpdiffusion 
box 32.75um 5.75um 32.44um 6.06um
erase mvpdiffusion 
box 32.69um 5.81um 32.11um 6.39um
paint locali 
box 32.69um 5.81um 32.46um 6.04um
erase locali 
box 32.72um 5.78um 32.11um 6.39um
paint metal1 
box 32.72um 5.78um 32.44um 6.06um
erase metal1 
box 32.75um 10.75um 32.11um 10.11um
paint mvpdiffusion 
box 32.75um 10.75um 32.44um 10.44um
erase mvpdiffusion 
box 32.69um 10.69um 32.11um 10.11um
paint locali 
box 32.69um 10.69um 32.46um 10.46um
erase locali 
box 32.72um 10.72um 32.11um 10.11um
paint metal1 
box 32.72um 10.72um 32.44um 10.44um
erase metal1 
box 30.25um 11um 30.25um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 13.75um 27.5um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 11.25um 28.39um 11.89um
paint mvpdiffusion 
box 27.75um 11.25um 28.06um 11.56um
erase mvpdiffusion 
box 27.81um 11.31um 28.39um 11.89um
paint locali 
box 27.81um 11.31um 28.04um 11.54um
erase locali 
box 27.78um 11.28um 28.39um 11.89um
paint metal1 
box 27.78um 11.28um 28.06um 11.56um
erase metal1 
box 27.75um 16.25um 28.39um 15.61um
paint mvpdiffusion 
box 27.75um 16.25um 28.06um 15.94um
erase mvpdiffusion 
box 27.81um 16.19um 28.39um 15.61um
paint locali 
box 27.81um 16.19um 28.04um 15.96um
erase locali 
box 27.78um 16.22um 28.39um 15.61um
paint metal1 
box 27.78um 16.22um 28.06um 15.94um
erase metal1 
box 32.75um 11.25um 32.11um 11.89um
paint mvpdiffusion 
box 32.75um 11.25um 32.44um 11.56um
erase mvpdiffusion 
box 32.69um 11.31um 32.11um 11.89um
paint locali 
box 32.69um 11.31um 32.46um 11.54um
erase locali 
box 32.72um 11.28um 32.11um 11.89um
paint metal1 
box 32.72um 11.28um 32.44um 11.56um
erase metal1 
box 32.75um 16.25um 32.11um 15.61um
paint mvpdiffusion 
box 32.75um 16.25um 32.44um 15.94um
erase mvpdiffusion 
box 32.69um 16.19um 32.11um 15.61um
paint locali 
box 32.69um 16.19um 32.46um 15.96um
erase locali 
box 32.72um 16.22um 32.11um 15.61um
paint metal1 
box 32.72um 16.22um 32.44um 15.94um
erase metal1 
box 30.25um 16.5um 30.25um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 19.25um 27.5um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 16.75um 28.39um 17.39um
paint mvpdiffusion 
box 27.75um 16.75um 28.06um 17.06um
erase mvpdiffusion 
box 27.81um 16.81um 28.39um 17.39um
paint locali 
box 27.81um 16.81um 28.04um 17.04um
erase locali 
box 27.78um 16.78um 28.39um 17.39um
paint metal1 
box 27.78um 16.78um 28.06um 17.06um
erase metal1 
box 27.75um 21.75um 28.39um 21.11um
paint mvpdiffusion 
box 27.75um 21.75um 28.06um 21.44um
erase mvpdiffusion 
box 27.81um 21.69um 28.39um 21.11um
paint locali 
box 27.81um 21.69um 28.04um 21.46um
erase locali 
box 27.78um 21.72um 28.39um 21.11um
paint metal1 
box 27.78um 21.72um 28.06um 21.44um
erase metal1 
box 32.75um 16.75um 32.11um 17.39um
paint mvpdiffusion 
box 32.75um 16.75um 32.44um 17.06um
erase mvpdiffusion 
box 32.69um 16.81um 32.11um 17.39um
paint locali 
box 32.69um 16.81um 32.46um 17.04um
erase locali 
box 32.72um 16.78um 32.11um 17.39um
paint metal1 
box 32.72um 16.78um 32.44um 17.06um
erase metal1 
box 32.75um 21.75um 32.11um 21.11um
paint mvpdiffusion 
box 32.75um 21.75um 32.44um 21.44um
erase mvpdiffusion 
box 32.69um 21.69um 32.11um 21.11um
paint locali 
box 32.69um 21.69um 32.46um 21.46um
erase locali 
box 32.72um 21.72um 32.11um 21.11um
paint metal1 
box 32.72um 21.72um 32.44um 21.44um
erase metal1 
box 30.25um 22um 30.25um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 24.75um 27.5um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 22.25um 28.39um 22.89um
paint mvpdiffusion 
box 27.75um 22.25um 28.06um 22.56um
erase mvpdiffusion 
box 27.81um 22.31um 28.39um 22.89um
paint locali 
box 27.81um 22.31um 28.04um 22.54um
erase locali 
box 27.78um 22.28um 28.39um 22.89um
paint metal1 
box 27.78um 22.28um 28.06um 22.56um
erase metal1 
box 27.75um 27.25um 28.39um 26.61um
paint mvpdiffusion 
box 27.75um 27.25um 28.06um 26.94um
erase mvpdiffusion 
box 27.81um 27.19um 28.39um 26.61um
paint locali 
box 27.81um 27.19um 28.04um 26.96um
erase locali 
box 27.78um 27.22um 28.39um 26.61um
paint metal1 
box 27.78um 27.22um 28.06um 26.94um
erase metal1 
box 32.75um 22.25um 32.11um 22.89um
paint mvpdiffusion 
box 32.75um 22.25um 32.44um 22.56um
erase mvpdiffusion 
box 32.69um 22.31um 32.11um 22.89um
paint locali 
box 32.69um 22.31um 32.46um 22.54um
erase locali 
box 32.72um 22.28um 32.11um 22.89um
paint metal1 
box 32.72um 22.28um 32.44um 22.56um
erase metal1 
box 32.75um 27.25um 32.11um 26.61um
paint mvpdiffusion 
box 32.75um 27.25um 32.44um 26.94um
erase mvpdiffusion 
box 32.69um 27.19um 32.11um 26.61um
paint locali 
box 32.69um 27.19um 32.46um 26.96um
erase locali 
box 32.72um 27.22um 32.11um 26.61um
paint metal1 
box 32.72um 27.22um 32.44um 26.94um
erase metal1 
box 30.25um 27.5um 30.25um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 30.25um 27.5um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 27.75um 28.39um 28.39um
paint mvpdiffusion 
box 27.75um 27.75um 28.06um 28.06um
erase mvpdiffusion 
box 27.81um 27.81um 28.39um 28.39um
paint locali 
box 27.81um 27.81um 28.04um 28.04um
erase locali 
box 27.78um 27.78um 28.39um 28.39um
paint metal1 
box 27.78um 27.78um 28.06um 28.06um
erase metal1 
box 27.75um 32.75um 28.39um 32.11um
paint mvpdiffusion 
box 27.75um 32.75um 28.06um 32.44um
erase mvpdiffusion 
box 27.81um 32.69um 28.39um 32.11um
paint locali 
box 27.81um 32.69um 28.04um 32.46um
erase locali 
box 27.78um 32.72um 28.39um 32.11um
paint metal1 
box 27.78um 32.72um 28.06um 32.44um
erase metal1 
box 32.75um 27.75um 32.11um 28.39um
paint mvpdiffusion 
box 32.75um 27.75um 32.44um 28.06um
erase mvpdiffusion 
box 32.69um 27.81um 32.11um 28.39um
paint locali 
box 32.69um 27.81um 32.46um 28.04um
erase locali 
box 32.72um 27.78um 32.11um 28.39um
paint metal1 
box 32.72um 27.78um 32.44um 28.06um
erase metal1 
box 32.75um 32.75um 32.11um 32.11um
paint mvpdiffusion 
box 32.75um 32.75um 32.44um 32.44um
erase mvpdiffusion 
box 32.69um 32.69um 32.11um 32.11um
paint locali 
box 32.69um 32.69um 32.46um 32.46um
erase locali 
box 32.72um 32.72um 32.11um 32.11um
paint metal1 
box 32.72um 32.72um 32.44um 32.44um
erase metal1 
box 30.25um 33um 30.25um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 35.75um 27.5um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 33.25um 28.39um 33.89um
paint mvpdiffusion 
box 27.75um 33.25um 28.06um 33.56um
erase mvpdiffusion 
box 27.81um 33.31um 28.39um 33.89um
paint locali 
box 27.81um 33.31um 28.04um 33.54um
erase locali 
box 27.78um 33.28um 28.39um 33.89um
paint metal1 
box 27.78um 33.28um 28.06um 33.56um
erase metal1 
box 27.75um 38.25um 28.39um 37.61um
paint mvpdiffusion 
box 27.75um 38.25um 28.06um 37.94um
erase mvpdiffusion 
box 27.81um 38.19um 28.39um 37.61um
paint locali 
box 27.81um 38.19um 28.04um 37.96um
erase locali 
box 27.78um 38.22um 28.39um 37.61um
paint metal1 
box 27.78um 38.22um 28.06um 37.94um
erase metal1 
box 32.75um 33.25um 32.11um 33.89um
paint mvpdiffusion 
box 32.75um 33.25um 32.44um 33.56um
erase mvpdiffusion 
box 32.69um 33.31um 32.11um 33.89um
paint locali 
box 32.69um 33.31um 32.46um 33.54um
erase locali 
box 32.72um 33.28um 32.11um 33.89um
paint metal1 
box 32.72um 33.28um 32.44um 33.56um
erase metal1 
box 32.75um 38.25um 32.11um 37.61um
paint mvpdiffusion 
box 32.75um 38.25um 32.44um 37.94um
erase mvpdiffusion 
box 32.69um 38.19um 32.11um 37.61um
paint locali 
box 32.69um 38.19um 32.46um 37.96um
erase locali 
box 32.72um 38.22um 32.11um 37.61um
paint metal1 
box 32.72um 38.22um 32.44um 37.94um
erase metal1 
box 30.25um 38.5um 30.25um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 27.5um 41.25um 27.5um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 27.75um 38.75um 28.39um 39.39um
paint mvpdiffusion 
box 27.75um 38.75um 28.06um 39.06um
erase mvpdiffusion 
box 27.81um 38.81um 28.39um 39.39um
paint locali 
box 27.81um 38.81um 28.04um 39.04um
erase locali 
box 27.78um 38.78um 28.39um 39.39um
paint metal1 
box 27.78um 38.78um 28.06um 39.06um
erase metal1 
box 32.75um 38.75um 32.11um 39.39um
paint mvpdiffusion 
box 32.75um 38.75um 32.44um 39.06um
erase mvpdiffusion 
box 32.69um 38.81um 32.11um 39.39um
paint locali 
box 32.69um 38.81um 32.46um 39.04um
erase locali 
box 32.72um 38.78um 32.11um 39.39um
paint metal1 
box 32.72um 38.78um 32.44um 39.06um
erase metal1 
box 33um 2.75um 33um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 5.25um 33.89um 4.61um
paint mvpdiffusion 
box 33.25um 5.25um 33.56um 4.94um
erase mvpdiffusion 
box 33.31um 5.19um 33.89um 4.61um
paint locali 
box 33.31um 5.19um 33.54um 4.96um
erase locali 
box 33.28um 5.22um 33.89um 4.61um
paint metal1 
box 33.28um 5.22um 33.56um 4.94um
erase metal1 
box 38.25um 5.25um 37.61um 4.61um
paint mvpdiffusion 
box 38.25um 5.25um 37.94um 4.94um
erase mvpdiffusion 
box 38.19um 5.19um 37.61um 4.61um
paint locali 
box 38.19um 5.19um 37.96um 4.96um
erase locali 
box 38.22um 5.22um 37.61um 4.61um
paint metal1 
box 38.22um 5.22um 37.94um 4.94um
erase metal1 
box 35.75um 5.5um 35.75um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 8.25um 33um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 5.75um 33.89um 6.39um
paint mvpdiffusion 
box 33.25um 5.75um 33.56um 6.06um
erase mvpdiffusion 
box 33.31um 5.81um 33.89um 6.39um
paint locali 
box 33.31um 5.81um 33.54um 6.04um
erase locali 
box 33.28um 5.78um 33.89um 6.39um
paint metal1 
box 33.28um 5.78um 33.56um 6.06um
erase metal1 
box 33.25um 10.75um 33.89um 10.11um
paint mvpdiffusion 
box 33.25um 10.75um 33.56um 10.44um
erase mvpdiffusion 
box 33.31um 10.69um 33.89um 10.11um
paint locali 
box 33.31um 10.69um 33.54um 10.46um
erase locali 
box 33.28um 10.72um 33.89um 10.11um
paint metal1 
box 33.28um 10.72um 33.56um 10.44um
erase metal1 
box 38.25um 5.75um 37.61um 6.39um
paint mvpdiffusion 
box 38.25um 5.75um 37.94um 6.06um
erase mvpdiffusion 
box 38.19um 5.81um 37.61um 6.39um
paint locali 
box 38.19um 5.81um 37.96um 6.04um
erase locali 
box 38.22um 5.78um 37.61um 6.39um
paint metal1 
box 38.22um 5.78um 37.94um 6.06um
erase metal1 
box 38.25um 10.75um 37.61um 10.11um
paint mvpdiffusion 
box 38.25um 10.75um 37.94um 10.44um
erase mvpdiffusion 
box 38.19um 10.69um 37.61um 10.11um
paint locali 
box 38.19um 10.69um 37.96um 10.46um
erase locali 
box 38.22um 10.72um 37.61um 10.11um
paint metal1 
box 38.22um 10.72um 37.94um 10.44um
erase metal1 
box 35.75um 11um 35.75um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 13.75um 33um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 11.25um 33.89um 11.89um
paint mvpdiffusion 
box 33.25um 11.25um 33.56um 11.56um
erase mvpdiffusion 
box 33.31um 11.31um 33.89um 11.89um
paint locali 
box 33.31um 11.31um 33.54um 11.54um
erase locali 
box 33.28um 11.28um 33.89um 11.89um
paint metal1 
box 33.28um 11.28um 33.56um 11.56um
erase metal1 
box 33.25um 16.25um 33.89um 15.61um
paint mvpdiffusion 
box 33.25um 16.25um 33.56um 15.94um
erase mvpdiffusion 
box 33.31um 16.19um 33.89um 15.61um
paint locali 
box 33.31um 16.19um 33.54um 15.96um
erase locali 
box 33.28um 16.22um 33.89um 15.61um
paint metal1 
box 33.28um 16.22um 33.56um 15.94um
erase metal1 
box 38.25um 11.25um 37.61um 11.89um
paint mvpdiffusion 
box 38.25um 11.25um 37.94um 11.56um
erase mvpdiffusion 
box 38.19um 11.31um 37.61um 11.89um
paint locali 
box 38.19um 11.31um 37.96um 11.54um
erase locali 
box 38.22um 11.28um 37.61um 11.89um
paint metal1 
box 38.22um 11.28um 37.94um 11.56um
erase metal1 
box 38.25um 16.25um 37.61um 15.61um
paint mvpdiffusion 
box 38.25um 16.25um 37.94um 15.94um
erase mvpdiffusion 
box 38.19um 16.19um 37.61um 15.61um
paint locali 
box 38.19um 16.19um 37.96um 15.96um
erase locali 
box 38.22um 16.22um 37.61um 15.61um
paint metal1 
box 38.22um 16.22um 37.94um 15.94um
erase metal1 
box 35.75um 16.5um 35.75um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 19.25um 33um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 16.75um 33.89um 17.39um
paint mvpdiffusion 
box 33.25um 16.75um 33.56um 17.06um
erase mvpdiffusion 
box 33.31um 16.81um 33.89um 17.39um
paint locali 
box 33.31um 16.81um 33.54um 17.04um
erase locali 
box 33.28um 16.78um 33.89um 17.39um
paint metal1 
box 33.28um 16.78um 33.56um 17.06um
erase metal1 
box 33.25um 21.75um 33.89um 21.11um
paint mvpdiffusion 
box 33.25um 21.75um 33.56um 21.44um
erase mvpdiffusion 
box 33.31um 21.69um 33.89um 21.11um
paint locali 
box 33.31um 21.69um 33.54um 21.46um
erase locali 
box 33.28um 21.72um 33.89um 21.11um
paint metal1 
box 33.28um 21.72um 33.56um 21.44um
erase metal1 
box 38.25um 16.75um 37.61um 17.39um
paint mvpdiffusion 
box 38.25um 16.75um 37.94um 17.06um
erase mvpdiffusion 
box 38.19um 16.81um 37.61um 17.39um
paint locali 
box 38.19um 16.81um 37.96um 17.04um
erase locali 
box 38.22um 16.78um 37.61um 17.39um
paint metal1 
box 38.22um 16.78um 37.94um 17.06um
erase metal1 
box 38.25um 21.75um 37.61um 21.11um
paint mvpdiffusion 
box 38.25um 21.75um 37.94um 21.44um
erase mvpdiffusion 
box 38.19um 21.69um 37.61um 21.11um
paint locali 
box 38.19um 21.69um 37.96um 21.46um
erase locali 
box 38.22um 21.72um 37.61um 21.11um
paint metal1 
box 38.22um 21.72um 37.94um 21.44um
erase metal1 
box 35.75um 22um 35.75um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 24.75um 33um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 22.25um 33.89um 22.89um
paint mvpdiffusion 
box 33.25um 22.25um 33.56um 22.56um
erase mvpdiffusion 
box 33.31um 22.31um 33.89um 22.89um
paint locali 
box 33.31um 22.31um 33.54um 22.54um
erase locali 
box 33.28um 22.28um 33.89um 22.89um
paint metal1 
box 33.28um 22.28um 33.56um 22.56um
erase metal1 
box 33.25um 27.25um 33.89um 26.61um
paint mvpdiffusion 
box 33.25um 27.25um 33.56um 26.94um
erase mvpdiffusion 
box 33.31um 27.19um 33.89um 26.61um
paint locali 
box 33.31um 27.19um 33.54um 26.96um
erase locali 
box 33.28um 27.22um 33.89um 26.61um
paint metal1 
box 33.28um 27.22um 33.56um 26.94um
erase metal1 
box 38.25um 22.25um 37.61um 22.89um
paint mvpdiffusion 
box 38.25um 22.25um 37.94um 22.56um
erase mvpdiffusion 
box 38.19um 22.31um 37.61um 22.89um
paint locali 
box 38.19um 22.31um 37.96um 22.54um
erase locali 
box 38.22um 22.28um 37.61um 22.89um
paint metal1 
box 38.22um 22.28um 37.94um 22.56um
erase metal1 
box 38.25um 27.25um 37.61um 26.61um
paint mvpdiffusion 
box 38.25um 27.25um 37.94um 26.94um
erase mvpdiffusion 
box 38.19um 27.19um 37.61um 26.61um
paint locali 
box 38.19um 27.19um 37.96um 26.96um
erase locali 
box 38.22um 27.22um 37.61um 26.61um
paint metal1 
box 38.22um 27.22um 37.94um 26.94um
erase metal1 
box 35.75um 27.5um 35.75um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 30.25um 33um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 27.75um 33.89um 28.39um
paint mvpdiffusion 
box 33.25um 27.75um 33.56um 28.06um
erase mvpdiffusion 
box 33.31um 27.81um 33.89um 28.39um
paint locali 
box 33.31um 27.81um 33.54um 28.04um
erase locali 
box 33.28um 27.78um 33.89um 28.39um
paint metal1 
box 33.28um 27.78um 33.56um 28.06um
erase metal1 
box 33.25um 32.75um 33.89um 32.11um
paint mvpdiffusion 
box 33.25um 32.75um 33.56um 32.44um
erase mvpdiffusion 
box 33.31um 32.69um 33.89um 32.11um
paint locali 
box 33.31um 32.69um 33.54um 32.46um
erase locali 
box 33.28um 32.72um 33.89um 32.11um
paint metal1 
box 33.28um 32.72um 33.56um 32.44um
erase metal1 
box 38.25um 27.75um 37.61um 28.39um
paint mvpdiffusion 
box 38.25um 27.75um 37.94um 28.06um
erase mvpdiffusion 
box 38.19um 27.81um 37.61um 28.39um
paint locali 
box 38.19um 27.81um 37.96um 28.04um
erase locali 
box 38.22um 27.78um 37.61um 28.39um
paint metal1 
box 38.22um 27.78um 37.94um 28.06um
erase metal1 
box 38.25um 32.75um 37.61um 32.11um
paint mvpdiffusion 
box 38.25um 32.75um 37.94um 32.44um
erase mvpdiffusion 
box 38.19um 32.69um 37.61um 32.11um
paint locali 
box 38.19um 32.69um 37.96um 32.46um
erase locali 
box 38.22um 32.72um 37.61um 32.11um
paint metal1 
box 38.22um 32.72um 37.94um 32.44um
erase metal1 
box 35.75um 33um 35.75um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 35.75um 33um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 33.25um 33.89um 33.89um
paint mvpdiffusion 
box 33.25um 33.25um 33.56um 33.56um
erase mvpdiffusion 
box 33.31um 33.31um 33.89um 33.89um
paint locali 
box 33.31um 33.31um 33.54um 33.54um
erase locali 
box 33.28um 33.28um 33.89um 33.89um
paint metal1 
box 33.28um 33.28um 33.56um 33.56um
erase metal1 
box 33.25um 38.25um 33.89um 37.61um
paint mvpdiffusion 
box 33.25um 38.25um 33.56um 37.94um
erase mvpdiffusion 
box 33.31um 38.19um 33.89um 37.61um
paint locali 
box 33.31um 38.19um 33.54um 37.96um
erase locali 
box 33.28um 38.22um 33.89um 37.61um
paint metal1 
box 33.28um 38.22um 33.56um 37.94um
erase metal1 
box 38.25um 33.25um 37.61um 33.89um
paint mvpdiffusion 
box 38.25um 33.25um 37.94um 33.56um
erase mvpdiffusion 
box 38.19um 33.31um 37.61um 33.89um
paint locali 
box 38.19um 33.31um 37.96um 33.54um
erase locali 
box 38.22um 33.28um 37.61um 33.89um
paint metal1 
box 38.22um 33.28um 37.94um 33.56um
erase metal1 
box 38.25um 38.25um 37.61um 37.61um
paint mvpdiffusion 
box 38.25um 38.25um 37.94um 37.94um
erase mvpdiffusion 
box 38.19um 38.19um 37.61um 37.61um
paint locali 
box 38.19um 38.19um 37.96um 37.96um
erase locali 
box 38.22um 38.22um 37.61um 37.61um
paint metal1 
box 38.22um 38.22um 37.94um 37.94um
erase metal1 
box 35.75um 38.5um 35.75um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 33um 41.25um 33um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 33.25um 38.75um 33.89um 39.39um
paint mvpdiffusion 
box 33.25um 38.75um 33.56um 39.06um
erase mvpdiffusion 
box 33.31um 38.81um 33.89um 39.39um
paint locali 
box 33.31um 38.81um 33.54um 39.04um
erase locali 
box 33.28um 38.78um 33.89um 39.39um
paint metal1 
box 33.28um 38.78um 33.56um 39.06um
erase metal1 
box 38.25um 38.75um 37.61um 39.39um
paint mvpdiffusion 
box 38.25um 38.75um 37.94um 39.06um
erase mvpdiffusion 
box 38.19um 38.81um 37.61um 39.39um
paint locali 
box 38.19um 38.81um 37.96um 39.04um
erase locali 
box 38.22um 38.78um 37.61um 39.39um
paint metal1 
box 38.22um 38.78um 37.94um 39.06um
erase metal1 
box 38.5um 2.75um 38.5um 2.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 5.25um 39.39um 4.61um
paint mvpdiffusion 
box 38.75um 5.25um 39.06um 4.94um
erase mvpdiffusion 
box 38.81um 5.19um 39.39um 4.61um
paint locali 
box 38.81um 5.19um 39.04um 4.96um
erase locali 
box 38.78um 5.22um 39.39um 4.61um
paint metal1 
box 38.78um 5.22um 39.06um 4.94um
erase metal1 
box 41.25um 5.5um 41.25um 5.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 8.25um 38.5um 8.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 5.75um 39.39um 6.39um
paint mvpdiffusion 
box 38.75um 5.75um 39.06um 6.06um
erase mvpdiffusion 
box 38.81um 5.81um 39.39um 6.39um
paint locali 
box 38.81um 5.81um 39.04um 6.04um
erase locali 
box 38.78um 5.78um 39.39um 6.39um
paint metal1 
box 38.78um 5.78um 39.06um 6.06um
erase metal1 
box 38.75um 10.75um 39.39um 10.11um
paint mvpdiffusion 
box 38.75um 10.75um 39.06um 10.44um
erase mvpdiffusion 
box 38.81um 10.69um 39.39um 10.11um
paint locali 
box 38.81um 10.69um 39.04um 10.46um
erase locali 
box 38.78um 10.72um 39.39um 10.11um
paint metal1 
box 38.78um 10.72um 39.06um 10.44um
erase metal1 
box 41.25um 11um 41.25um 11um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 13.75um 38.5um 13.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 11.25um 39.39um 11.89um
paint mvpdiffusion 
box 38.75um 11.25um 39.06um 11.56um
erase mvpdiffusion 
box 38.81um 11.31um 39.39um 11.89um
paint locali 
box 38.81um 11.31um 39.04um 11.54um
erase locali 
box 38.78um 11.28um 39.39um 11.89um
paint metal1 
box 38.78um 11.28um 39.06um 11.56um
erase metal1 
box 38.75um 16.25um 39.39um 15.61um
paint mvpdiffusion 
box 38.75um 16.25um 39.06um 15.94um
erase mvpdiffusion 
box 38.81um 16.19um 39.39um 15.61um
paint locali 
box 38.81um 16.19um 39.04um 15.96um
erase locali 
box 38.78um 16.22um 39.39um 15.61um
paint metal1 
box 38.78um 16.22um 39.06um 15.94um
erase metal1 
box 41.25um 16.5um 41.25um 16.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 19.25um 38.5um 19.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 16.75um 39.39um 17.39um
paint mvpdiffusion 
box 38.75um 16.75um 39.06um 17.06um
erase mvpdiffusion 
box 38.81um 16.81um 39.39um 17.39um
paint locali 
box 38.81um 16.81um 39.04um 17.04um
erase locali 
box 38.78um 16.78um 39.39um 17.39um
paint metal1 
box 38.78um 16.78um 39.06um 17.06um
erase metal1 
box 38.75um 21.75um 39.39um 21.11um
paint mvpdiffusion 
box 38.75um 21.75um 39.06um 21.44um
erase mvpdiffusion 
box 38.81um 21.69um 39.39um 21.11um
paint locali 
box 38.81um 21.69um 39.04um 21.46um
erase locali 
box 38.78um 21.72um 39.39um 21.11um
paint metal1 
box 38.78um 21.72um 39.06um 21.44um
erase metal1 
box 41.25um 22um 41.25um 22um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 24.75um 38.5um 24.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 22.25um 39.39um 22.89um
paint mvpdiffusion 
box 38.75um 22.25um 39.06um 22.56um
erase mvpdiffusion 
box 38.81um 22.31um 39.39um 22.89um
paint locali 
box 38.81um 22.31um 39.04um 22.54um
erase locali 
box 38.78um 22.28um 39.39um 22.89um
paint metal1 
box 38.78um 22.28um 39.06um 22.56um
erase metal1 
box 38.75um 27.25um 39.39um 26.61um
paint mvpdiffusion 
box 38.75um 27.25um 39.06um 26.94um
erase mvpdiffusion 
box 38.81um 27.19um 39.39um 26.61um
paint locali 
box 38.81um 27.19um 39.04um 26.96um
erase locali 
box 38.78um 27.22um 39.39um 26.61um
paint metal1 
box 38.78um 27.22um 39.06um 26.94um
erase metal1 
box 41.25um 27.5um 41.25um 27.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 30.25um 38.5um 30.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 27.75um 39.39um 28.39um
paint mvpdiffusion 
box 38.75um 27.75um 39.06um 28.06um
erase mvpdiffusion 
box 38.81um 27.81um 39.39um 28.39um
paint locali 
box 38.81um 27.81um 39.04um 28.04um
erase locali 
box 38.78um 27.78um 39.39um 28.39um
paint metal1 
box 38.78um 27.78um 39.06um 28.06um
erase metal1 
box 38.75um 32.75um 39.39um 32.11um
paint mvpdiffusion 
box 38.75um 32.75um 39.06um 32.44um
erase mvpdiffusion 
box 38.81um 32.69um 39.39um 32.11um
paint locali 
box 38.81um 32.69um 39.04um 32.46um
erase locali 
box 38.78um 32.72um 39.39um 32.11um
paint metal1 
box 38.78um 32.72um 39.06um 32.44um
erase metal1 
box 41.25um 33um 41.25um 33um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 35.75um 38.5um 35.75um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 33.25um 39.39um 33.89um
paint mvpdiffusion 
box 38.75um 33.25um 39.06um 33.56um
erase mvpdiffusion 
box 38.81um 33.31um 39.39um 33.89um
paint locali 
box 38.81um 33.31um 39.04um 33.54um
erase locali 
box 38.78um 33.28um 39.39um 33.89um
paint metal1 
box 38.78um 33.28um 39.06um 33.56um
erase metal1 
box 38.75um 38.25um 39.39um 37.61um
paint mvpdiffusion 
box 38.75um 38.25um 39.06um 37.94um
erase mvpdiffusion 
box 38.81um 38.19um 39.39um 37.61um
paint locali 
box 38.81um 38.19um 39.04um 37.96um
erase locali 
box 38.78um 38.22um 39.39um 37.61um
paint metal1 
box 38.78um 38.22um 39.06um 37.94um
erase metal1 
box 41.25um 38.5um 41.25um 38.5um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
rotate 90
shift_to_center
box 38.5um 41.25um 38.5um 41.25um
getcell sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag
shift_to_center
box 38.75um 38.75um 39.39um 39.39um
paint mvpdiffusion 
box 38.75um 38.75um 39.06um 39.06um
erase mvpdiffusion 
box 38.81um 38.81um 39.39um 39.39um
paint locali 
box 38.81um 38.81um 39.04um 39.04um
erase locali 
box 38.78um 38.78um 39.39um 39.39um
paint metal1 
box 38.78um 38.78um 39.06um 39.06um
erase metal1 
box 0.51um 0.51um 4.99um 4.99um
paint metal1 
box 1um 1um 4.5um 4.5um
paint metal2 
box 1.1um 1.1um 4.4um 4.4um
paint m2contact 
wire segment metal3 3.2um 0um 5.5um 5.5um 0um -noendcap 
wire segment metal4 3.2um 0um 5.5um 5.5um 0um -noendcap 
wire segment metal5 2.2um 0um 5.5um 5.5um 0um -noendcap 
box 2.15um 2.15um 3.35um 3.35um
paint via4 
paint via3 
paint m3contact 
box 0.51um 6.01um 4.99um 10.49um
paint metal1 
box 1um 6.5um 4.5um 10um
paint metal2 
box 1.1um 6.6um 4.4um 9.9um
paint m2contact 
wire segment metal3 3.2um 0um 11um 5.5um 5.5um -noendcap 
wire segment metal4 3.2um 0um 11um 5.5um 5.5um -noendcap 
wire segment metal5 2.2um 0um 11um 5.5um 5.5um -noendcap 
box 2.15um 7.65um 3.35um 8.85um
paint via4 
paint via3 
paint m3contact 
box 0.51um 11.51um 4.99um 15.99um
paint metal1 
box 1um 12um 4.5um 15.5um
paint metal2 
box 1.1um 12.1um 4.4um 15.4um
paint m2contact 
wire segment metal3 3.2um 0um 16.5um 5.5um 11um -noendcap 
wire segment metal4 3.2um 0um 16.5um 5.5um 11um -noendcap 
wire segment metal5 2.2um 0um 16.5um 5.5um 11um -noendcap 
box 2.15um 13.15um 3.35um 14.35um
paint via4 
paint via3 
paint m3contact 
box 0.51um 17.01um 4.99um 21.49um
paint metal1 
box 1um 17.5um 4.5um 21um
paint metal2 
box 1.1um 17.6um 4.4um 20.9um
paint m2contact 
wire segment metal3 3.2um 0um 22um 5.5um 16.5um -noendcap 
wire segment metal4 3.2um 0um 22um 5.5um 16.5um -noendcap 
wire segment metal5 2.2um 0um 22um 5.5um 16.5um -noendcap 
box 2.15um 18.65um 3.35um 19.85um
paint via4 
paint via3 
paint m3contact 
box 0.51um 22.51um 4.99um 26.99um
paint metal1 
box 1um 23um 4.5um 26.5um
paint metal2 
box 1.1um 23.1um 4.4um 26.4um
paint m2contact 
wire segment metal3 3.2um 0um 27.5um 5.5um 22um -noendcap 
wire segment metal4 3.2um 0um 27.5um 5.5um 22um -noendcap 
wire segment metal5 2.2um 0um 27.5um 5.5um 22um -noendcap 
box 2.15um 24.15um 3.35um 25.35um
paint via4 
paint via3 
paint m3contact 
box 0.51um 28.01um 4.99um 32.49um
paint metal1 
box 1um 28.5um 4.5um 32um
paint metal2 
box 1.1um 28.6um 4.4um 31.9um
paint m2contact 
wire segment metal3 3.2um 0um 33um 5.5um 27.5um -noendcap 
wire segment metal4 3.2um 0um 33um 5.5um 27.5um -noendcap 
wire segment metal5 2.2um 0um 33um 5.5um 27.5um -noendcap 
box 2.15um 29.65um 3.35um 30.85um
paint via4 
paint via3 
paint m3contact 
box 0.51um 33.51um 4.99um 37.99um
paint metal1 
box 1um 34um 4.5um 37.5um
paint metal2 
box 1.1um 34.1um 4.4um 37.4um
paint m2contact 
wire segment metal3 3.2um 0um 38.5um 5.5um 33um -noendcap 
wire segment metal4 3.2um 0um 38.5um 5.5um 33um -noendcap 
wire segment metal5 2.2um 0um 38.5um 5.5um 33um -noendcap 
box 2.15um 35.15um 3.35um 36.35um
paint via4 
paint via3 
paint m3contact 
box 0.51um 39.01um 4.99um 43.49um
paint metal1 
box 1um 39.5um 4.5um 43um
paint metal2 
box 1.1um 39.6um 4.4um 42.9um
paint m2contact 
wire segment metal3 3.2um 0um 44um 5.5um 38.5um -noendcap 
wire segment metal4 3.2um 0um 44um 5.5um 38.5um -noendcap 
wire segment metal5 2.2um 0um 44um 5.5um 38.5um -noendcap 
box 2.15um 40.65um 3.35um 41.85um
paint via4 
paint via3 
paint m3contact 
box 6.01um 0.51um 10.49um 4.99um
paint metal1 
box 6.5um 1um 10um 4.5um
paint metal2 
box 6.6um 1.1um 9.9um 4.4um
paint m2contact 
wire segment metal3 3.2um 5.5um 5.5um 11um 0um -noendcap 
wire segment metal4 3.2um 5.5um 5.5um 11um 0um -noendcap 
wire segment metal5 2.2um 5.5um 5.5um 11um 0um -noendcap 
box 7.65um 2.15um 8.85um 3.35um
paint via4 
paint via3 
paint m3contact 
box 6.01um 6.01um 10.49um 10.49um
paint metal1 
box 6.5um 6.5um 10um 10um
paint metal2 
box 6.6um 6.6um 9.9um 9.9um
paint m2contact 
wire segment metal3 3.2um 5.5um 11um 11um 5.5um -noendcap 
wire segment metal4 3.2um 5.5um 11um 11um 5.5um -noendcap 
wire segment metal5 2.2um 5.5um 11um 11um 5.5um -noendcap 
box 7.65um 7.65um 8.85um 8.85um
paint via4 
paint via3 
paint m3contact 
box 6.01um 11.51um 10.49um 15.99um
paint metal1 
box 6.5um 12um 10um 15.5um
paint metal2 
box 6.6um 12.1um 9.9um 15.4um
paint m2contact 
wire segment metal3 3.2um 5.5um 16.5um 11um 11um -noendcap 
wire segment metal4 3.2um 5.5um 16.5um 11um 11um -noendcap 
wire segment metal5 2.2um 5.5um 16.5um 11um 11um -noendcap 
box 7.65um 13.15um 8.85um 14.35um
paint via4 
paint via3 
paint m3contact 
box 6.01um 17.01um 10.49um 21.49um
paint metal1 
box 6.5um 17.5um 10um 21um
paint metal2 
box 6.6um 17.6um 9.9um 20.9um
paint m2contact 
wire segment metal3 3.2um 5.5um 22um 11um 16.5um -noendcap 
wire segment metal4 3.2um 5.5um 22um 11um 16.5um -noendcap 
wire segment metal5 2.2um 5.5um 22um 11um 16.5um -noendcap 
box 7.65um 18.65um 8.85um 19.85um
paint via4 
paint via3 
paint m3contact 
box 6.01um 22.51um 10.49um 26.99um
paint metal1 
box 6.5um 23um 10um 26.5um
paint metal2 
box 6.6um 23.1um 9.9um 26.4um
paint m2contact 
wire segment metal3 3.2um 5.5um 27.5um 11um 22um -noendcap 
wire segment metal4 3.2um 5.5um 27.5um 11um 22um -noendcap 
wire segment metal5 2.2um 5.5um 27.5um 11um 22um -noendcap 
box 7.65um 24.15um 8.85um 25.35um
paint via4 
paint via3 
paint m3contact 
box 6.01um 28.01um 10.49um 32.49um
paint metal1 
box 6.5um 28.5um 10um 32um
paint metal2 
box 6.6um 28.6um 9.9um 31.9um
paint m2contact 
wire segment metal3 3.2um 5.5um 33um 11um 27.5um -noendcap 
wire segment metal4 3.2um 5.5um 33um 11um 27.5um -noendcap 
wire segment metal5 2.2um 5.5um 33um 11um 27.5um -noendcap 
box 7.65um 29.65um 8.85um 30.85um
paint via4 
paint via3 
paint m3contact 
box 6.01um 33.51um 10.49um 37.99um
paint metal1 
box 6.5um 34um 10um 37.5um
paint metal2 
box 6.6um 34.1um 9.9um 37.4um
paint m2contact 
wire segment metal3 3.2um 5.5um 38.5um 11um 33um -noendcap 
wire segment metal4 3.2um 5.5um 38.5um 11um 33um -noendcap 
wire segment metal5 2.2um 5.5um 38.5um 11um 33um -noendcap 
box 7.65um 35.15um 8.85um 36.35um
paint via4 
paint via3 
paint m3contact 
box 6.01um 39.01um 10.49um 43.49um
paint metal1 
box 6.5um 39.5um 10um 43um
paint metal2 
box 6.6um 39.6um 9.9um 42.9um
paint m2contact 
wire segment metal3 3.2um 5.5um 44um 11um 38.5um -noendcap 
wire segment metal4 3.2um 5.5um 44um 11um 38.5um -noendcap 
wire segment metal5 2.2um 5.5um 44um 11um 38.5um -noendcap 
box 7.65um 40.65um 8.85um 41.85um
paint via4 
paint via3 
paint m3contact 
box 11.51um 0.51um 15.99um 4.99um
paint metal1 
box 12um 1um 15.5um 4.5um
paint metal2 
box 12.1um 1.1um 15.4um 4.4um
paint m2contact 
wire segment metal3 3.2um 11um 5.5um 16.5um 0um -noendcap 
wire segment metal4 3.2um 11um 5.5um 16.5um 0um -noendcap 
wire segment metal5 2.2um 11um 5.5um 16.5um 0um -noendcap 
box 13.15um 2.15um 14.35um 3.35um
paint via4 
paint via3 
paint m3contact 
box 11.51um 6.01um 15.99um 10.49um
paint metal1 
box 12um 6.5um 15.5um 10um
paint metal2 
box 12.1um 6.6um 15.4um 9.9um
paint m2contact 
wire segment metal3 3.2um 11um 11um 16.5um 5.5um -noendcap 
wire segment metal4 3.2um 11um 11um 16.5um 5.5um -noendcap 
wire segment metal5 2.2um 11um 11um 16.5um 5.5um -noendcap 
box 13.15um 7.65um 14.35um 8.85um
paint via4 
paint via3 
paint m3contact 
box 11.51um 11.51um 15.99um 15.99um
paint metal1 
box 12um 12um 15.5um 15.5um
paint metal2 
box 12.1um 12.1um 15.4um 15.4um
paint m2contact 
wire segment metal3 3.2um 11um 16.5um 16.5um 11um -noendcap 
wire segment metal4 3.2um 11um 16.5um 16.5um 11um -noendcap 
wire segment metal5 2.2um 11um 16.5um 16.5um 11um -noendcap 
box 13.15um 13.15um 14.35um 14.35um
paint via4 
paint via3 
paint m3contact 
box 11.51um 17.01um 15.99um 21.49um
paint metal1 
box 12um 17.5um 15.5um 21um
paint metal2 
box 12.1um 17.6um 15.4um 20.9um
paint m2contact 
wire segment metal3 3.2um 11um 22um 16.5um 16.5um -noendcap 
wire segment metal4 3.2um 11um 22um 16.5um 16.5um -noendcap 
wire segment metal5 2.2um 11um 22um 16.5um 16.5um -noendcap 
box 13.15um 18.65um 14.35um 19.85um
paint via4 
paint via3 
paint m3contact 
box 11.51um 22.51um 15.99um 26.99um
paint metal1 
box 12um 23um 15.5um 26.5um
paint metal2 
box 12.1um 23.1um 15.4um 26.4um
paint m2contact 
wire segment metal3 3.2um 11um 27.5um 16.5um 22um -noendcap 
wire segment metal4 3.2um 11um 27.5um 16.5um 22um -noendcap 
wire segment metal5 2.2um 11um 27.5um 16.5um 22um -noendcap 
box 13.15um 24.15um 14.35um 25.35um
paint via4 
paint via3 
paint m3contact 
box 11.51um 28.01um 15.99um 32.49um
paint metal1 
box 12um 28.5um 15.5um 32um
paint metal2 
box 12.1um 28.6um 15.4um 31.9um
paint m2contact 
wire segment metal3 3.2um 11um 33um 16.5um 27.5um -noendcap 
wire segment metal4 3.2um 11um 33um 16.5um 27.5um -noendcap 
wire segment metal5 2.2um 11um 33um 16.5um 27.5um -noendcap 
box 13.15um 29.65um 14.35um 30.85um
paint via4 
paint via3 
paint m3contact 
box 11.51um 33.51um 15.99um 37.99um
paint metal1 
box 12um 34um 15.5um 37.5um
paint metal2 
box 12.1um 34.1um 15.4um 37.4um
paint m2contact 
wire segment metal3 3.2um 11um 38.5um 16.5um 33um -noendcap 
wire segment metal4 3.2um 11um 38.5um 16.5um 33um -noendcap 
wire segment metal5 2.2um 11um 38.5um 16.5um 33um -noendcap 
box 13.15um 35.15um 14.35um 36.35um
paint via4 
paint via3 
paint m3contact 
box 11.51um 39.01um 15.99um 43.49um
paint metal1 
box 12um 39.5um 15.5um 43um
paint metal2 
box 12.1um 39.6um 15.4um 42.9um
paint m2contact 
wire segment metal3 3.2um 11um 44um 16.5um 38.5um -noendcap 
wire segment metal4 3.2um 11um 44um 16.5um 38.5um -noendcap 
wire segment metal5 2.2um 11um 44um 16.5um 38.5um -noendcap 
box 13.15um 40.65um 14.35um 41.85um
paint via4 
paint via3 
paint m3contact 
box 17.01um 0.51um 21.49um 4.99um
paint metal1 
box 17.5um 1um 21um 4.5um
paint metal2 
box 17.6um 1.1um 20.9um 4.4um
paint m2contact 
wire segment metal3 3.2um 16.5um 5.5um 22um 0um -noendcap 
wire segment metal4 3.2um 16.5um 5.5um 22um 0um -noendcap 
wire segment metal5 2.2um 16.5um 5.5um 22um 0um -noendcap 
box 18.65um 2.15um 19.85um 3.35um
paint via4 
paint via3 
paint m3contact 
box 17.01um 6.01um 21.49um 10.49um
paint metal1 
box 17.5um 6.5um 21um 10um
paint metal2 
box 17.6um 6.6um 20.9um 9.9um
paint m2contact 
wire segment metal3 3.2um 16.5um 11um 22um 5.5um -noendcap 
wire segment metal4 3.2um 16.5um 11um 22um 5.5um -noendcap 
wire segment metal5 2.2um 16.5um 11um 22um 5.5um -noendcap 
box 18.65um 7.65um 19.85um 8.85um
paint via4 
paint via3 
paint m3contact 
box 17.01um 11.51um 21.49um 15.99um
paint metal1 
box 17.5um 12um 21um 15.5um
paint metal2 
box 17.6um 12.1um 20.9um 15.4um
paint m2contact 
wire segment metal3 3.2um 16.5um 16.5um 22um 11um -noendcap 
wire segment metal4 3.2um 16.5um 16.5um 22um 11um -noendcap 
wire segment metal5 2.2um 16.5um 16.5um 22um 11um -noendcap 
box 18.65um 13.15um 19.85um 14.35um
paint via4 
paint via3 
paint m3contact 
box 17.01um 17.01um 21.49um 21.49um
paint metal1 
box 17.5um 17.5um 21um 21um
paint metal2 
box 17.6um 17.6um 20.9um 20.9um
paint m2contact 
wire segment metal3 3.2um 16.5um 22um 22um 16.5um -noendcap 
wire segment metal4 3.2um 16.5um 22um 22um 16.5um -noendcap 
wire segment metal5 2.2um 16.5um 22um 22um 16.5um -noendcap 
box 18.65um 18.65um 19.85um 19.85um
paint via4 
paint via3 
paint m3contact 
box 17.01um 22.51um 21.49um 26.99um
paint metal1 
box 17.5um 23um 21um 26.5um
paint metal2 
box 17.6um 23.1um 20.9um 26.4um
paint m2contact 
wire segment metal3 3.2um 16.5um 27.5um 22um 22um -noendcap 
wire segment metal4 3.2um 16.5um 27.5um 22um 22um -noendcap 
wire segment metal5 2.2um 16.5um 27.5um 22um 22um -noendcap 
box 18.65um 24.15um 19.85um 25.35um
paint via4 
paint via3 
paint m3contact 
box 17.01um 28.01um 21.49um 32.49um
paint metal1 
box 17.5um 28.5um 21um 32um
paint metal2 
box 17.6um 28.6um 20.9um 31.9um
paint m2contact 
wire segment metal3 3.2um 16.5um 33um 22um 27.5um -noendcap 
wire segment metal4 3.2um 16.5um 33um 22um 27.5um -noendcap 
wire segment metal5 2.2um 16.5um 33um 22um 27.5um -noendcap 
box 18.65um 29.65um 19.85um 30.85um
paint via4 
paint via3 
paint m3contact 
box 17.01um 33.51um 21.49um 37.99um
paint metal1 
box 17.5um 34um 21um 37.5um
paint metal2 
box 17.6um 34.1um 20.9um 37.4um
paint m2contact 
wire segment metal3 3.2um 16.5um 38.5um 22um 33um -noendcap 
wire segment metal4 3.2um 16.5um 38.5um 22um 33um -noendcap 
wire segment metal5 2.2um 16.5um 38.5um 22um 33um -noendcap 
box 18.65um 35.15um 19.85um 36.35um
paint via4 
paint via3 
paint m3contact 
box 17.01um 39.01um 21.49um 43.49um
paint metal1 
box 17.5um 39.5um 21um 43um
paint metal2 
box 17.6um 39.6um 20.9um 42.9um
paint m2contact 
wire segment metal3 3.2um 16.5um 44um 22um 38.5um -noendcap 
wire segment metal4 3.2um 16.5um 44um 22um 38.5um -noendcap 
wire segment metal5 2.2um 16.5um 44um 22um 38.5um -noendcap 
box 18.65um 40.65um 19.85um 41.85um
paint via4 
paint via3 
paint m3contact 
box 22.51um 0.51um 26.99um 4.99um
paint metal1 
box 23um 1um 26.5um 4.5um
paint metal2 
box 23.1um 1.1um 26.4um 4.4um
paint m2contact 
wire segment metal3 3.2um 22um 5.5um 27.5um 0um -noendcap 
wire segment metal4 3.2um 22um 5.5um 27.5um 0um -noendcap 
wire segment metal5 2.2um 22um 5.5um 27.5um 0um -noendcap 
box 24.15um 2.15um 25.35um 3.35um
paint via4 
paint via3 
paint m3contact 
box 22.51um 6.01um 26.99um 10.49um
paint metal1 
box 23um 6.5um 26.5um 10um
paint metal2 
box 23.1um 6.6um 26.4um 9.9um
paint m2contact 
wire segment metal3 3.2um 22um 11um 27.5um 5.5um -noendcap 
wire segment metal4 3.2um 22um 11um 27.5um 5.5um -noendcap 
wire segment metal5 2.2um 22um 11um 27.5um 5.5um -noendcap 
box 24.15um 7.65um 25.35um 8.85um
paint via4 
paint via3 
paint m3contact 
box 22.51um 11.51um 26.99um 15.99um
paint metal1 
box 23um 12um 26.5um 15.5um
paint metal2 
box 23.1um 12.1um 26.4um 15.4um
paint m2contact 
wire segment metal3 3.2um 22um 16.5um 27.5um 11um -noendcap 
wire segment metal4 3.2um 22um 16.5um 27.5um 11um -noendcap 
wire segment metal5 2.2um 22um 16.5um 27.5um 11um -noendcap 
box 24.15um 13.15um 25.35um 14.35um
paint via4 
paint via3 
paint m3contact 
box 22.51um 17.01um 26.99um 21.49um
paint metal1 
box 23um 17.5um 26.5um 21um
paint metal2 
box 23.1um 17.6um 26.4um 20.9um
paint m2contact 
wire segment metal3 3.2um 22um 22um 27.5um 16.5um -noendcap 
wire segment metal4 3.2um 22um 22um 27.5um 16.5um -noendcap 
wire segment metal5 2.2um 22um 22um 27.5um 16.5um -noendcap 
box 24.15um 18.65um 25.35um 19.85um
paint via4 
paint via3 
paint m3contact 
box 22.51um 22.51um 26.99um 26.99um
paint metal1 
box 23um 23um 26.5um 26.5um
paint metal2 
box 23.1um 23.1um 26.4um 26.4um
paint m2contact 
wire segment metal3 3.2um 22um 27.5um 27.5um 22um -noendcap 
wire segment metal4 3.2um 22um 27.5um 27.5um 22um -noendcap 
wire segment metal5 2.2um 22um 27.5um 27.5um 22um -noendcap 
box 24.15um 24.15um 25.35um 25.35um
paint via4 
paint via3 
paint m3contact 
box 22.51um 28.01um 26.99um 32.49um
paint metal1 
box 23um 28.5um 26.5um 32um
paint metal2 
box 23.1um 28.6um 26.4um 31.9um
paint m2contact 
wire segment metal3 3.2um 22um 33um 27.5um 27.5um -noendcap 
wire segment metal4 3.2um 22um 33um 27.5um 27.5um -noendcap 
wire segment metal5 2.2um 22um 33um 27.5um 27.5um -noendcap 
box 24.15um 29.65um 25.35um 30.85um
paint via4 
paint via3 
paint m3contact 
box 22.51um 33.51um 26.99um 37.99um
paint metal1 
box 23um 34um 26.5um 37.5um
paint metal2 
box 23.1um 34.1um 26.4um 37.4um
paint m2contact 
wire segment metal3 3.2um 22um 38.5um 27.5um 33um -noendcap 
wire segment metal4 3.2um 22um 38.5um 27.5um 33um -noendcap 
wire segment metal5 2.2um 22um 38.5um 27.5um 33um -noendcap 
box 24.15um 35.15um 25.35um 36.35um
paint via4 
paint via3 
paint m3contact 
box 22.51um 39.01um 26.99um 43.49um
paint metal1 
box 23um 39.5um 26.5um 43um
paint metal2 
box 23.1um 39.6um 26.4um 42.9um
paint m2contact 
wire segment metal3 3.2um 22um 44um 27.5um 38.5um -noendcap 
wire segment metal4 3.2um 22um 44um 27.5um 38.5um -noendcap 
wire segment metal5 2.2um 22um 44um 27.5um 38.5um -noendcap 
box 24.15um 40.65um 25.35um 41.85um
paint via4 
paint via3 
paint m3contact 
box 28.01um 0.51um 32.49um 4.99um
paint metal1 
box 28.5um 1um 32um 4.5um
paint metal2 
box 28.6um 1.1um 31.9um 4.4um
paint m2contact 
wire segment metal3 3.2um 27.5um 5.5um 33um 0um -noendcap 
wire segment metal4 3.2um 27.5um 5.5um 33um 0um -noendcap 
wire segment metal5 2.2um 27.5um 5.5um 33um 0um -noendcap 
box 29.65um 2.15um 30.85um 3.35um
paint via4 
paint via3 
paint m3contact 
box 28.01um 6.01um 32.49um 10.49um
paint metal1 
box 28.5um 6.5um 32um 10um
paint metal2 
box 28.6um 6.6um 31.9um 9.9um
paint m2contact 
wire segment metal3 3.2um 27.5um 11um 33um 5.5um -noendcap 
wire segment metal4 3.2um 27.5um 11um 33um 5.5um -noendcap 
wire segment metal5 2.2um 27.5um 11um 33um 5.5um -noendcap 
box 29.65um 7.65um 30.85um 8.85um
paint via4 
paint via3 
paint m3contact 
box 28.01um 11.51um 32.49um 15.99um
paint metal1 
box 28.5um 12um 32um 15.5um
paint metal2 
box 28.6um 12.1um 31.9um 15.4um
paint m2contact 
wire segment metal3 3.2um 27.5um 16.5um 33um 11um -noendcap 
wire segment metal4 3.2um 27.5um 16.5um 33um 11um -noendcap 
wire segment metal5 2.2um 27.5um 16.5um 33um 11um -noendcap 
box 29.65um 13.15um 30.85um 14.35um
paint via4 
paint via3 
paint m3contact 
box 28.01um 17.01um 32.49um 21.49um
paint metal1 
box 28.5um 17.5um 32um 21um
paint metal2 
box 28.6um 17.6um 31.9um 20.9um
paint m2contact 
wire segment metal3 3.2um 27.5um 22um 33um 16.5um -noendcap 
wire segment metal4 3.2um 27.5um 22um 33um 16.5um -noendcap 
wire segment metal5 2.2um 27.5um 22um 33um 16.5um -noendcap 
box 29.65um 18.65um 30.85um 19.85um
paint via4 
paint via3 
paint m3contact 
box 28.01um 22.51um 32.49um 26.99um
paint metal1 
box 28.5um 23um 32um 26.5um
paint metal2 
box 28.6um 23.1um 31.9um 26.4um
paint m2contact 
wire segment metal3 3.2um 27.5um 27.5um 33um 22um -noendcap 
wire segment metal4 3.2um 27.5um 27.5um 33um 22um -noendcap 
wire segment metal5 2.2um 27.5um 27.5um 33um 22um -noendcap 
box 29.65um 24.15um 30.85um 25.35um
paint via4 
paint via3 
paint m3contact 
box 28.01um 28.01um 32.49um 32.49um
paint metal1 
box 28.5um 28.5um 32um 32um
paint metal2 
box 28.6um 28.6um 31.9um 31.9um
paint m2contact 
wire segment metal3 3.2um 27.5um 33um 33um 27.5um -noendcap 
wire segment metal4 3.2um 27.5um 33um 33um 27.5um -noendcap 
wire segment metal5 2.2um 27.5um 33um 33um 27.5um -noendcap 
box 29.65um 29.65um 30.85um 30.85um
paint via4 
paint via3 
paint m3contact 
box 28.01um 33.51um 32.49um 37.99um
paint metal1 
box 28.5um 34um 32um 37.5um
paint metal2 
box 28.6um 34.1um 31.9um 37.4um
paint m2contact 
wire segment metal3 3.2um 27.5um 38.5um 33um 33um -noendcap 
wire segment metal4 3.2um 27.5um 38.5um 33um 33um -noendcap 
wire segment metal5 2.2um 27.5um 38.5um 33um 33um -noendcap 
box 29.65um 35.15um 30.85um 36.35um
paint via4 
paint via3 
paint m3contact 
box 28.01um 39.01um 32.49um 43.49um
paint metal1 
box 28.5um 39.5um 32um 43um
paint metal2 
box 28.6um 39.6um 31.9um 42.9um
paint m2contact 
wire segment metal3 3.2um 27.5um 44um 33um 38.5um -noendcap 
wire segment metal4 3.2um 27.5um 44um 33um 38.5um -noendcap 
wire segment metal5 2.2um 27.5um 44um 33um 38.5um -noendcap 
box 29.65um 40.65um 30.85um 41.85um
paint via4 
paint via3 
paint m3contact 
box 33.51um 0.51um 37.99um 4.99um
paint metal1 
box 34um 1um 37.5um 4.5um
paint metal2 
box 34.1um 1.1um 37.4um 4.4um
paint m2contact 
wire segment metal3 3.2um 33um 5.5um 38.5um 0um -noendcap 
wire segment metal4 3.2um 33um 5.5um 38.5um 0um -noendcap 
wire segment metal5 2.2um 33um 5.5um 38.5um 0um -noendcap 
box 35.15um 2.15um 36.35um 3.35um
paint via4 
paint via3 
paint m3contact 
box 33.51um 6.01um 37.99um 10.49um
paint metal1 
box 34um 6.5um 37.5um 10um
paint metal2 
box 34.1um 6.6um 37.4um 9.9um
paint m2contact 
wire segment metal3 3.2um 33um 11um 38.5um 5.5um -noendcap 
wire segment metal4 3.2um 33um 11um 38.5um 5.5um -noendcap 
wire segment metal5 2.2um 33um 11um 38.5um 5.5um -noendcap 
box 35.15um 7.65um 36.35um 8.85um
paint via4 
paint via3 
paint m3contact 
box 33.51um 11.51um 37.99um 15.99um
paint metal1 
box 34um 12um 37.5um 15.5um
paint metal2 
box 34.1um 12.1um 37.4um 15.4um
paint m2contact 
wire segment metal3 3.2um 33um 16.5um 38.5um 11um -noendcap 
wire segment metal4 3.2um 33um 16.5um 38.5um 11um -noendcap 
wire segment metal5 2.2um 33um 16.5um 38.5um 11um -noendcap 
box 35.15um 13.15um 36.35um 14.35um
paint via4 
paint via3 
paint m3contact 
box 33.51um 17.01um 37.99um 21.49um
paint metal1 
box 34um 17.5um 37.5um 21um
paint metal2 
box 34.1um 17.6um 37.4um 20.9um
paint m2contact 
wire segment metal3 3.2um 33um 22um 38.5um 16.5um -noendcap 
wire segment metal4 3.2um 33um 22um 38.5um 16.5um -noendcap 
wire segment metal5 2.2um 33um 22um 38.5um 16.5um -noendcap 
box 35.15um 18.65um 36.35um 19.85um
paint via4 
paint via3 
paint m3contact 
box 33.51um 22.51um 37.99um 26.99um
paint metal1 
box 34um 23um 37.5um 26.5um
paint metal2 
box 34.1um 23.1um 37.4um 26.4um
paint m2contact 
wire segment metal3 3.2um 33um 27.5um 38.5um 22um -noendcap 
wire segment metal4 3.2um 33um 27.5um 38.5um 22um -noendcap 
wire segment metal5 2.2um 33um 27.5um 38.5um 22um -noendcap 
box 35.15um 24.15um 36.35um 25.35um
paint via4 
paint via3 
paint m3contact 
box 33.51um 28.01um 37.99um 32.49um
paint metal1 
box 34um 28.5um 37.5um 32um
paint metal2 
box 34.1um 28.6um 37.4um 31.9um
paint m2contact 
wire segment metal3 3.2um 33um 33um 38.5um 27.5um -noendcap 
wire segment metal4 3.2um 33um 33um 38.5um 27.5um -noendcap 
wire segment metal5 2.2um 33um 33um 38.5um 27.5um -noendcap 
box 35.15um 29.65um 36.35um 30.85um
paint via4 
paint via3 
paint m3contact 
box 33.51um 33.51um 37.99um 37.99um
paint metal1 
box 34um 34um 37.5um 37.5um
paint metal2 
box 34.1um 34.1um 37.4um 37.4um
paint m2contact 
wire segment metal3 3.2um 33um 38.5um 38.5um 33um -noendcap 
wire segment metal4 3.2um 33um 38.5um 38.5um 33um -noendcap 
wire segment metal5 2.2um 33um 38.5um 38.5um 33um -noendcap 
box 35.15um 35.15um 36.35um 36.35um
paint via4 
paint via3 
paint m3contact 
box 33.51um 39.01um 37.99um 43.49um
paint metal1 
box 34um 39.5um 37.5um 43um
paint metal2 
box 34.1um 39.6um 37.4um 42.9um
paint m2contact 
wire segment metal3 3.2um 33um 44um 38.5um 38.5um -noendcap 
wire segment metal4 3.2um 33um 44um 38.5um 38.5um -noendcap 
wire segment metal5 2.2um 33um 44um 38.5um 38.5um -noendcap 
box 35.15um 40.65um 36.35um 41.85um
paint via4 
paint via3 
paint m3contact 
box 39.01um 0.51um 43.49um 4.99um
paint metal1 
box 39.5um 1um 43um 4.5um
paint metal2 
box 39.6um 1.1um 42.9um 4.4um
paint m2contact 
wire segment metal3 3.2um 38.5um 5.5um 44um 0um -noendcap 
wire segment metal4 3.2um 38.5um 5.5um 44um 0um -noendcap 
wire segment metal5 2.2um 38.5um 5.5um 44um 0um -noendcap 
box 40.65um 2.15um 41.85um 3.35um
paint via4 
paint via3 
paint m3contact 
box 39.01um 6.01um 43.49um 10.49um
paint metal1 
box 39.5um 6.5um 43um 10um
paint metal2 
box 39.6um 6.6um 42.9um 9.9um
paint m2contact 
wire segment metal3 3.2um 38.5um 11um 44um 5.5um -noendcap 
wire segment metal4 3.2um 38.5um 11um 44um 5.5um -noendcap 
wire segment metal5 2.2um 38.5um 11um 44um 5.5um -noendcap 
box 40.65um 7.65um 41.85um 8.85um
paint via4 
paint via3 
paint m3contact 
box 39.01um 11.51um 43.49um 15.99um
paint metal1 
box 39.5um 12um 43um 15.5um
paint metal2 
box 39.6um 12.1um 42.9um 15.4um
paint m2contact 
wire segment metal3 3.2um 38.5um 16.5um 44um 11um -noendcap 
wire segment metal4 3.2um 38.5um 16.5um 44um 11um -noendcap 
wire segment metal5 2.2um 38.5um 16.5um 44um 11um -noendcap 
box 40.65um 13.15um 41.85um 14.35um
paint via4 
paint via3 
paint m3contact 
box 39.01um 17.01um 43.49um 21.49um
paint metal1 
box 39.5um 17.5um 43um 21um
paint metal2 
box 39.6um 17.6um 42.9um 20.9um
paint m2contact 
wire segment metal3 3.2um 38.5um 22um 44um 16.5um -noendcap 
wire segment metal4 3.2um 38.5um 22um 44um 16.5um -noendcap 
wire segment metal5 2.2um 38.5um 22um 44um 16.5um -noendcap 
box 40.65um 18.65um 41.85um 19.85um
paint via4 
paint via3 
paint m3contact 
box 39.01um 22.51um 43.49um 26.99um
paint metal1 
box 39.5um 23um 43um 26.5um
paint metal2 
box 39.6um 23.1um 42.9um 26.4um
paint m2contact 
wire segment metal3 3.2um 38.5um 27.5um 44um 22um -noendcap 
wire segment metal4 3.2um 38.5um 27.5um 44um 22um -noendcap 
wire segment metal5 2.2um 38.5um 27.5um 44um 22um -noendcap 
box 40.65um 24.15um 41.85um 25.35um
paint via4 
paint via3 
paint m3contact 
box 39.01um 28.01um 43.49um 32.49um
paint metal1 
box 39.5um 28.5um 43um 32um
paint metal2 
box 39.6um 28.6um 42.9um 31.9um
paint m2contact 
wire segment metal3 3.2um 38.5um 33um 44um 27.5um -noendcap 
wire segment metal4 3.2um 38.5um 33um 44um 27.5um -noendcap 
wire segment metal5 2.2um 38.5um 33um 44um 27.5um -noendcap 
box 40.65um 29.65um 41.85um 30.85um
paint via4 
paint via3 
paint m3contact 
box 39.01um 33.51um 43.49um 37.99um
paint metal1 
box 39.5um 34um 43um 37.5um
paint metal2 
box 39.6um 34.1um 42.9um 37.4um
paint m2contact 
wire segment metal3 3.2um 38.5um 38.5um 44um 33um -noendcap 
wire segment metal4 3.2um 38.5um 38.5um 44um 33um -noendcap 
wire segment metal5 2.2um 38.5um 38.5um 44um 33um -noendcap 
box 40.65um 35.15um 41.85um 36.35um
paint via4 
paint via3 
paint m3contact 
box 39.01um 39.01um 43.49um 43.49um
paint metal1 
box 39.5um 39.5um 43um 43um
paint metal2 
box 39.6um 39.6um 42.9um 42.9um
paint m2contact 
wire segment metal3 3.2um 38.5um 44um 44um 38.5um -noendcap 
wire segment metal4 3.2um 38.5um 44um 44um 38.5um -noendcap 
wire segment metal5 2.2um 38.5um 44um 44um 38.5um -noendcap 
box 40.65um 40.65um 41.85um 41.85um
paint via4 
paint via3 
paint m3contact 
box -0.25um -0.25um 0.25um 44.25um
paint poly 
paint metal2 
box 5.25um -0.25um 5.75um 44.25um
paint poly 
paint metal2 
box 10.75um -0.25um 11.25um 44.25um
paint poly 
paint metal2 
box 16.25um -0.25um 16.75um 44.25um
paint poly 
paint metal2 
box 21.75um -0.25um 22.25um 44.25um
paint poly 
paint metal2 
box 27.25um -0.25um 27.75um 44.25um
paint poly 
paint metal2 
box 32.75um -0.25um 33.25um 44.25um
paint poly 
paint metal2 
box 38.25um -0.25um 38.75um 44.25um
paint poly 
paint metal2 
box 43.75um -0.25um 44.25um 44.25um
paint poly 
paint metal2 
box -0.25um -0.25um 44.25um 0.25um
paint poly 
paint metal2 
box -0.25um 5.25um 44.25um 5.75um
paint poly 
paint metal2 
box -0.25um 10.75um 44.25um 11.25um
paint poly 
paint metal2 
box -0.25um 16.25um 44.25um 16.75um
paint poly 
paint metal2 
box -0.25um 21.75um 44.25um 22.25um
paint poly 
paint metal2 
box -0.25um 27.25um 44.25um 27.75um
paint poly 
paint metal2 
box -0.25um 32.75um 44.25um 33.25um
paint poly 
paint metal2 
box -0.25um 38.25um 44.25um 38.75um
paint poly 
paint metal2 
box -0.25um 43.75um 44.25um 44.25um
paint poly 
paint metal2 
box -0.25um -0.25um 0.25um 0.25um
paint locali 
paint metal1 
paint metal2 
box -0.17um -0.17um 0.17um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 5.25um 0.25um 5.75um
paint locali 
paint metal1 
paint metal2 
box -0.17um 5.33um 0.17um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 10.75um 0.25um 11.25um
paint locali 
paint metal1 
paint metal2 
box -0.17um 10.83um 0.17um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 16.25um 0.25um 16.75um
paint locali 
paint metal1 
paint metal2 
box -0.17um 16.33um 0.17um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 21.75um 0.25um 22.25um
paint locali 
paint metal1 
paint metal2 
box -0.17um 21.83um 0.17um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 27.25um 0.25um 27.75um
paint locali 
paint metal1 
paint metal2 
box -0.17um 27.33um 0.17um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 32.75um 0.25um 33.25um
paint locali 
paint metal1 
paint metal2 
box -0.17um 32.83um 0.17um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 38.25um 0.25um 38.75um
paint locali 
paint metal1 
paint metal2 
box -0.17um 38.33um 0.17um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box -0.25um 43.75um 0.25um 44.25um
paint locali 
paint metal1 
paint metal2 
box -0.17um 43.83um 0.17um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um -0.25um 5.75um 0.25um
paint locali 
paint metal1 
paint metal2 
box 5.33um -0.17um 5.67um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 5.25um 5.75um 5.75um
paint locali 
paint metal1 
paint metal2 
box 5.33um 5.33um 5.67um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 10.75um 5.75um 11.25um
paint locali 
paint metal1 
paint metal2 
box 5.33um 10.83um 5.67um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 16.25um 5.75um 16.75um
paint locali 
paint metal1 
paint metal2 
box 5.33um 16.33um 5.67um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 21.75um 5.75um 22.25um
paint locali 
paint metal1 
paint metal2 
box 5.33um 21.83um 5.67um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 27.25um 5.75um 27.75um
paint locali 
paint metal1 
paint metal2 
box 5.33um 27.33um 5.67um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 32.75um 5.75um 33.25um
paint locali 
paint metal1 
paint metal2 
box 5.33um 32.83um 5.67um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 38.25um 5.75um 38.75um
paint locali 
paint metal1 
paint metal2 
box 5.33um 38.33um 5.67um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 5.25um 43.75um 5.75um 44.25um
paint locali 
paint metal1 
paint metal2 
box 5.33um 43.83um 5.67um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um -0.25um 11.25um 0.25um
paint locali 
paint metal1 
paint metal2 
box 10.83um -0.17um 11.17um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 5.25um 11.25um 5.75um
paint locali 
paint metal1 
paint metal2 
box 10.83um 5.33um 11.17um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 10.75um 11.25um 11.25um
paint locali 
paint metal1 
paint metal2 
box 10.83um 10.83um 11.17um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 16.25um 11.25um 16.75um
paint locali 
paint metal1 
paint metal2 
box 10.83um 16.33um 11.17um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 21.75um 11.25um 22.25um
paint locali 
paint metal1 
paint metal2 
box 10.83um 21.83um 11.17um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 27.25um 11.25um 27.75um
paint locali 
paint metal1 
paint metal2 
box 10.83um 27.33um 11.17um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 32.75um 11.25um 33.25um
paint locali 
paint metal1 
paint metal2 
box 10.83um 32.83um 11.17um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 38.25um 11.25um 38.75um
paint locali 
paint metal1 
paint metal2 
box 10.83um 38.33um 11.17um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 10.75um 43.75um 11.25um 44.25um
paint locali 
paint metal1 
paint metal2 
box 10.83um 43.83um 11.17um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um -0.25um 16.75um 0.25um
paint locali 
paint metal1 
paint metal2 
box 16.33um -0.17um 16.67um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 5.25um 16.75um 5.75um
paint locali 
paint metal1 
paint metal2 
box 16.33um 5.33um 16.67um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 10.75um 16.75um 11.25um
paint locali 
paint metal1 
paint metal2 
box 16.33um 10.83um 16.67um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 16.25um 16.75um 16.75um
paint locali 
paint metal1 
paint metal2 
box 16.33um 16.33um 16.67um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 21.75um 16.75um 22.25um
paint locali 
paint metal1 
paint metal2 
box 16.33um 21.83um 16.67um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 27.25um 16.75um 27.75um
paint locali 
paint metal1 
paint metal2 
box 16.33um 27.33um 16.67um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 32.75um 16.75um 33.25um
paint locali 
paint metal1 
paint metal2 
box 16.33um 32.83um 16.67um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 38.25um 16.75um 38.75um
paint locali 
paint metal1 
paint metal2 
box 16.33um 38.33um 16.67um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 16.25um 43.75um 16.75um 44.25um
paint locali 
paint metal1 
paint metal2 
box 16.33um 43.83um 16.67um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um -0.25um 22.25um 0.25um
paint locali 
paint metal1 
paint metal2 
box 21.83um -0.17um 22.17um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 5.25um 22.25um 5.75um
paint locali 
paint metal1 
paint metal2 
box 21.83um 5.33um 22.17um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 10.75um 22.25um 11.25um
paint locali 
paint metal1 
paint metal2 
box 21.83um 10.83um 22.17um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 16.25um 22.25um 16.75um
paint locali 
paint metal1 
paint metal2 
box 21.83um 16.33um 22.17um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 21.75um 22.25um 22.25um
paint locali 
paint metal1 
paint metal2 
box 21.83um 21.83um 22.17um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 27.25um 22.25um 27.75um
paint locali 
paint metal1 
paint metal2 
box 21.83um 27.33um 22.17um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 32.75um 22.25um 33.25um
paint locali 
paint metal1 
paint metal2 
box 21.83um 32.83um 22.17um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 38.25um 22.25um 38.75um
paint locali 
paint metal1 
paint metal2 
box 21.83um 38.33um 22.17um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 21.75um 43.75um 22.25um 44.25um
paint locali 
paint metal1 
paint metal2 
box 21.83um 43.83um 22.17um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um -0.25um 27.75um 0.25um
paint locali 
paint metal1 
paint metal2 
box 27.33um -0.17um 27.67um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 5.25um 27.75um 5.75um
paint locali 
paint metal1 
paint metal2 
box 27.33um 5.33um 27.67um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 10.75um 27.75um 11.25um
paint locali 
paint metal1 
paint metal2 
box 27.33um 10.83um 27.67um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 16.25um 27.75um 16.75um
paint locali 
paint metal1 
paint metal2 
box 27.33um 16.33um 27.67um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 21.75um 27.75um 22.25um
paint locali 
paint metal1 
paint metal2 
box 27.33um 21.83um 27.67um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 27.25um 27.75um 27.75um
paint locali 
paint metal1 
paint metal2 
box 27.33um 27.33um 27.67um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 32.75um 27.75um 33.25um
paint locali 
paint metal1 
paint metal2 
box 27.33um 32.83um 27.67um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 38.25um 27.75um 38.75um
paint locali 
paint metal1 
paint metal2 
box 27.33um 38.33um 27.67um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 27.25um 43.75um 27.75um 44.25um
paint locali 
paint metal1 
paint metal2 
box 27.33um 43.83um 27.67um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um -0.25um 33.25um 0.25um
paint locali 
paint metal1 
paint metal2 
box 32.83um -0.17um 33.17um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 5.25um 33.25um 5.75um
paint locali 
paint metal1 
paint metal2 
box 32.83um 5.33um 33.17um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 10.75um 33.25um 11.25um
paint locali 
paint metal1 
paint metal2 
box 32.83um 10.83um 33.17um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 16.25um 33.25um 16.75um
paint locali 
paint metal1 
paint metal2 
box 32.83um 16.33um 33.17um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 21.75um 33.25um 22.25um
paint locali 
paint metal1 
paint metal2 
box 32.83um 21.83um 33.17um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 27.25um 33.25um 27.75um
paint locali 
paint metal1 
paint metal2 
box 32.83um 27.33um 33.17um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 32.75um 33.25um 33.25um
paint locali 
paint metal1 
paint metal2 
box 32.83um 32.83um 33.17um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 38.25um 33.25um 38.75um
paint locali 
paint metal1 
paint metal2 
box 32.83um 38.33um 33.17um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 32.75um 43.75um 33.25um 44.25um
paint locali 
paint metal1 
paint metal2 
box 32.83um 43.83um 33.17um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um -0.25um 38.75um 0.25um
paint locali 
paint metal1 
paint metal2 
box 38.33um -0.17um 38.67um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 5.25um 38.75um 5.75um
paint locali 
paint metal1 
paint metal2 
box 38.33um 5.33um 38.67um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 10.75um 38.75um 11.25um
paint locali 
paint metal1 
paint metal2 
box 38.33um 10.83um 38.67um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 16.25um 38.75um 16.75um
paint locali 
paint metal1 
paint metal2 
box 38.33um 16.33um 38.67um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 21.75um 38.75um 22.25um
paint locali 
paint metal1 
paint metal2 
box 38.33um 21.83um 38.67um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 27.25um 38.75um 27.75um
paint locali 
paint metal1 
paint metal2 
box 38.33um 27.33um 38.67um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 32.75um 38.75um 33.25um
paint locali 
paint metal1 
paint metal2 
box 38.33um 32.83um 38.67um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 38.25um 38.75um 38.75um
paint locali 
paint metal1 
paint metal2 
box 38.33um 38.33um 38.67um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 38.25um 43.75um 38.75um 44.25um
paint locali 
paint metal1 
paint metal2 
box 38.33um 43.83um 38.67um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um -0.25um 44.25um 0.25um
paint locali 
paint metal1 
paint metal2 
box 43.83um -0.17um 44.17um 0.17um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 5.25um 44.25um 5.75um
paint locali 
paint metal1 
paint metal2 
box 43.83um 5.33um 44.17um 5.67um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 10.75um 44.25um 11.25um
paint locali 
paint metal1 
paint metal2 
box 43.83um 10.83um 44.17um 11.17um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 16.25um 44.25um 16.75um
paint locali 
paint metal1 
paint metal2 
box 43.83um 16.33um 44.17um 16.67um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 21.75um 44.25um 22.25um
paint locali 
paint metal1 
paint metal2 
box 43.83um 21.83um 44.17um 22.17um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 27.25um 44.25um 27.75um
paint locali 
paint metal1 
paint metal2 
box 43.83um 27.33um 44.17um 27.67um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 32.75um 44.25um 33.25um
paint locali 
paint metal1 
paint metal2 
box 43.83um 32.83um 44.17um 33.17um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 38.25um 44.25um 38.75um
paint locali 
paint metal1 
paint metal2 
box 43.83um 38.33um 44.17um 38.67um
paint pcontact 
paint viali 
paint m2contact 
box 43.75um 43.75um 44.25um 44.25um
paint locali 
paint metal1 
paint metal2 
box 43.83um 43.83um 44.17um 44.17um
paint pcontact 
paint viali 
paint m2contact 
box 0.48um 0.48um 5.02um 5.02um
paint locali 
box 0.54um 0.54um 4.96um 4.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 0.48um 11.48um 5.02um 16.02um
paint locali 
box 0.54um 11.54um 4.96um 15.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 0.48um 22.48um 5.02um 27.02um
paint locali 
box 0.54um 22.54um 4.96um 26.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 0.48um 33.48um 5.02um 38.02um
paint locali 
box 0.54um 33.54um 4.96um 37.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 5.98um 5.98um 10.52um 10.52um
paint locali 
box 6.04um 6.04um 10.46um 10.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 5.98um 16.98um 10.52um 21.52um
paint locali 
box 6.04um 17.04um 10.46um 21.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 5.98um 27.98um 10.52um 32.52um
paint locali 
box 6.04um 28.04um 10.46um 32.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 5.98um 38.98um 10.52um 43.52um
paint locali 
box 6.04um 39.04um 10.46um 43.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 11.48um 0.48um 16.02um 5.02um
paint locali 
box 11.54um 0.54um 15.96um 4.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 11.48um 11.48um 16.02um 16.02um
paint locali 
box 11.54um 11.54um 15.96um 15.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 11.48um 22.48um 16.02um 27.02um
paint locali 
box 11.54um 22.54um 15.96um 26.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 11.48um 33.48um 16.02um 38.02um
paint locali 
box 11.54um 33.54um 15.96um 37.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 16.98um 5.98um 21.52um 10.52um
paint locali 
box 17.04um 6.04um 21.46um 10.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 16.98um 16.98um 21.52um 21.52um
paint locali 
box 17.04um 17.04um 21.46um 21.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 16.98um 27.98um 21.52um 32.52um
paint locali 
box 17.04um 28.04um 21.46um 32.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 16.98um 38.98um 21.52um 43.52um
paint locali 
box 17.04um 39.04um 21.46um 43.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 22.48um 0.48um 27.02um 5.02um
paint locali 
box 22.54um 0.54um 26.96um 4.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 22.48um 11.48um 27.02um 16.02um
paint locali 
box 22.54um 11.54um 26.96um 15.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 22.48um 22.48um 27.02um 27.02um
paint locali 
box 22.54um 22.54um 26.96um 26.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 22.48um 33.48um 27.02um 38.02um
paint locali 
box 22.54um 33.54um 26.96um 37.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 27.98um 5.98um 32.52um 10.52um
paint locali 
box 28.04um 6.04um 32.46um 10.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 27.98um 16.98um 32.52um 21.52um
paint locali 
box 28.04um 17.04um 32.46um 21.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 27.98um 27.98um 32.52um 32.52um
paint locali 
box 28.04um 28.04um 32.46um 32.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 27.98um 38.98um 32.52um 43.52um
paint locali 
box 28.04um 39.04um 32.46um 43.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 33.48um 0.48um 38.02um 5.02um
paint locali 
box 33.54um 0.54um 37.96um 4.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 33.48um 11.48um 38.02um 16.02um
paint locali 
box 33.54um 11.54um 37.96um 15.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 33.48um 22.48um 38.02um 27.02um
paint locali 
box 33.54um 22.54um 37.96um 26.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 33.48um 33.48um 38.02um 38.02um
paint locali 
box 33.54um 33.54um 37.96um 37.96um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 38.98um 5.98um 43.52um 10.52um
paint locali 
box 39.04um 6.04um 43.46um 10.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 38.98um 16.98um 43.52um 21.52um
paint locali 
box 39.04um 17.04um 43.46um 21.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 38.98um 27.98um 43.52um 32.52um
paint locali 
box 39.04um 28.04um 43.46um 32.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box 38.98um 38.98um 43.52um 43.52um
paint locali 
box 39.04um 39.04um 43.46um 43.46um
paint mvpdiffusion 
box  shrink center 0.3um
paint mvnsubdiff 
paint viali 
box  shrink center 0.12um
paint mvnsubdiffcont 
box  shrink center 0.46um
erase mvnsubdiff 
paint mvnsubdiff 
box  shrink center 0.12um
erase mvnsubdiff 
box -6um -6um 50um 50um
paint nwell 
box -5um -5um 49um -2um
paint mvnsubdiff 
paint locali 
paint metal1 
box shrink center 0.12um 
paint mvnsubdiffcont 
paint viali 
box -5um 46um 49um 49um
paint mvnsubdiff 
paint locali 
paint metal1 
box shrink center 0.12um 
paint mvnsubdiffcont 
paint viali 
box -5um -5um -2um 49um
paint mvnsubdiff 
paint locali 
paint metal1 
box shrink center 0.12um 
paint mvnsubdiffcont 
paint viali 
box 46um -5um 49um 49um
paint mvnsubdiff 
paint locali 
paint metal1 
box shrink center 0.12um 
paint mvnsubdiffcont 
paint viali 
box -54um -54um 98um -6um
paint pwell 
box -54um 50um 98um 98um
paint pwell 
box -54um -54um -6um 98um
paint pwell 
box 50um -54um 98um 98um
paint pwell 
box -50um -50um 94um -10um
paint locali 
box -50um 54um 94um 94um
paint locali 
box -50um -50um -10um 94um
paint locali 
box 54um -50um 94um 94um
paint locali 
box -50um -50um 94um -10um
paint metal1 
box -50um 54um 94um 94um
paint metal1 
box -50um -50um -10um 94um
paint metal1 
box 54um -50um 94um 94um
paint metal1 
box -50um -50um 94um -10um
paint metal2 
box -50um 54um 94um 94um
paint metal2 
box -50um -50um -10um 94um
paint metal2 
box 54um -50um 94um 94um
paint metal2 
box -50um -50um 94um -10um
paint metal1 
box -50um 54um 94um 94um
paint metal1 
box -50um -50um -10um 94um
paint metal1 
box 54um -50um 94um 94um
paint metal1 
box -49.88um -49.88um 93.88um -10.12um
paint viali 
box -49.88um 54.12um 93.88um 93.88um
paint viali 
box -49.88um -49.88um -10.12um 93.88um
paint viali 
box 54.12um -49.88um 93.88um 93.88um
paint viali 
box -49.88um -49.88um 93.88um -10.12um
paint m2contact 
box -49.88um 54.12um 93.88um 93.88um
paint m2contact 
box -49.88um -49.88um -10.12um 93.88um
paint m2contact 
box 54.12um -49.88um 93.88um 93.88um
paint m2contact 
box -50um -50um 94um -45.25um
paint mvpsubdiff 
box -50um 89.25um 94um 94um
paint mvpsubdiff 
box -50um -50um -45.25um 94um
paint mvpsubdiff 
box 89.25um -50um 94um 94um
paint mvpsubdiff 
box -49.88um -49.88um 93.88um -45.37um
paint mvpsubdiffcont 
box -49.88um 89.37um 93.88um 93.88um
paint mvpsubdiffcont 
box -49.88um -49.88um -45.37um 93.88um
paint mvpsubdiffcont 
box 89.37um -49.88um 93.88um 93.88um
paint mvpsubdiffcont 
box -38.25um -38.25um 82.25um -33.5um
paint mvpsubdiff 
box -38.25um 77.5um 82.25um 82.25um
paint mvpsubdiff 
box -38.25um -38.25um -33.5um 82.25um
paint mvpsubdiff 
box 77.5um -38.25um 82.25um 82.25um
paint mvpsubdiff 
box -38.13um -38.13um 82.13um -33.62um
paint mvpsubdiffcont 
box -38.13um 77.62um 82.13um 82.13um
paint mvpsubdiffcont 
box -38.13um -38.13um -33.62um 82.13um
paint mvpsubdiffcont 
box 77.62um -38.13um 82.13um 82.13um
paint mvpsubdiffcont 
box -26.5um -26.5um 70.5um -21.75um
paint mvpsubdiff 
box -26.5um 65.75um 70.5um 70.5um
paint mvpsubdiff 
box -26.5um -26.5um -21.75um 70.5um
paint mvpsubdiff 
box 65.75um -26.5um 70.5um 70.5um
paint mvpsubdiff 
box -26.38um -26.38um 70.38um -21.87um
paint mvpsubdiffcont 
box -26.38um 65.87um 70.38um 70.38um
paint mvpsubdiffcont 
box -26.38um -26.38um -21.87um 70.38um
paint mvpsubdiffcont 
box 65.87um -26.38um 70.38um 70.38um
paint mvpsubdiffcont 
box -14.75um -14.75um 58.75um -10um
paint mvpsubdiff 
box -14.75um 54um 58.75um 58.75um
paint mvpsubdiff 
box -14.75um -14.75um -10um 58.75um
paint mvpsubdiff 
box 54um -14.75um 58.75um 58.75um
paint mvpsubdiff 
box -14.63um -14.63um 58.63um -10.12um
paint mvpsubdiffcont 
box -14.63um 54.12um 58.63um 58.63um
paint mvpsubdiffcont 
box -14.63um -14.63um -10.12um 58.63um
paint mvpsubdiffcont 
box 54.12um -14.63um 58.63um 58.63um
paint mvpsubdiffcont 
box -50um -50um -10um 16.5um
erase metal2 
box -50um -50um -10um 16.5um
box grow center 0.3um
erase m2contact 
box grow E 0.12um
box grow W 0.12um
erase metal2 
box -50um -50um 0um -10um
erase metal2 
box grow center 0.3um
erase m2contact 
box grow N 0.12um
box grow S 0.12um
erase metal2 
flatten mos_grid
load mos_grid
save
load temp2
box 0um 0um 0um 0um
getcell mos_grid
shift_to_center
move 22um 22um
box -5um 2.11137um 1.13137um 6.63137um
paint metal3 
paint metal4 
box -5um 3.16782um 0.777817um 6.27782um
paint metal5 
box -5um 7.61137um 1.13137um 12.1314um
paint metal3 
paint metal4 
box -5um 8.66782um 0.777817um 11.7778um
paint metal5 
box -5um 13.1114um 1.13137um 17.6314um
paint metal3 
paint metal4 
box -5um 14.1678um 0.777817um 17.2778um
paint metal5 
box -5um 18.6114um 1.13137um 23.1314um
paint metal3 
paint metal4 
box -5um 19.6678um 0.777817um 22.7778um
paint metal5 
box -5um 24.1114um 1.13137um 28.6314um
paint metal3 
paint metal4 
box -5um 25.1678um 0.777817um 28.2778um
paint metal5 
box -5um 29.6114um 1.13137um 34.1314um
paint metal3 
paint metal4 
box -5um 30.6678um 0.777817um 33.7778um
paint metal5 
box -5um 35.1114um 1.13137um 39.6314um
paint metal3 
paint metal4 
box -5um 36.1678um 0.777817um 39.2778um
paint metal5 
box -5um 40.6114um 1.13137um 45.1314um
paint metal3 
paint metal4 
box -5um 41.6678um 0.777817um 44.7778um
paint metal5 
box 2.11137um -5um 6.63137um 1.13137um
paint metal3 
paint metal4 
box 3.16782um -5um 6.27782um 0.777817um
paint metal5 
box 7.61137um -5um 12.1314um 1.13137um
paint metal3 
paint metal4 
box 8.66782um -5um 11.7778um 0.777817um
paint metal5 
box 13.1114um -5um 17.6314um 1.13137um
paint metal3 
paint metal4 
box 14.1678um -5um 17.2778um 0.777817um
paint metal5 
box 18.6114um -5um 23.1314um 1.13137um
paint metal3 
paint metal4 
box 19.6678um -5um 22.7778um 0.777817um
paint metal5 
box 24.1114um -5um 28.6314um 1.13137um
paint metal3 
paint metal4 
box 25.1678um -5um 28.2778um 0.777817um
paint metal5 
box 29.6114um -5um 34.1314um 1.13137um
paint metal3 
paint metal4 
box 30.6678um -5um 33.7778um 0.777817um
paint metal5 
box 35.1114um -5um 39.6314um 1.13137um
paint metal3 
paint metal4 
box 36.1678um -5um 39.2778um 0.777817um
paint metal5 
box 40.6114um -5um 45.1314um 1.13137um
paint metal3 
paint metal4 
box 41.6678um -5um 44.7778um 0.777817um
paint metal5 
box -1.13137um 42.8686um 3.38863um 49um
paint metal3 
paint metal4 
box -0.777817um 43.2222um 2.33218um 49um
paint metal5 
box 4.36863um 42.8686um 8.88863um 49um
paint metal3 
paint metal4 
box 4.72218um 43.2222um 7.83218um 49um
paint metal5 
box 9.86863um 42.8686um 14.3886um 49um
paint metal3 
paint metal4 
box 10.2222um 43.2222um 13.3322um 49um
paint metal5 
box 15.3686um 42.8686um 19.8886um 49um
paint metal3 
paint metal4 
box 15.7222um 43.2222um 18.8322um 49um
paint metal5 
box 20.8686um 42.8686um 25.3886um 49um
paint metal3 
paint metal4 
box 21.2222um 43.2222um 24.3322um 49um
paint metal5 
box 26.3686um 42.8686um 30.8886um 49um
paint metal3 
paint metal4 
box 26.7222um 43.2222um 29.8322um 49um
paint metal5 
box 31.8686um 42.8686um 36.3886um 49um
paint metal3 
paint metal4 
box 32.2222um 43.2222um 35.3322um 49um
paint metal5 
box 37.3686um 42.8686um 41.8886um 49um
paint metal3 
paint metal4 
box 37.7222um 43.2222um 40.8322um 49um
paint metal5 
box 42.8686um -1.13137um 49um 3.38863um
paint metal3 
paint metal4 
box 43.2222um -0.777817um 49um 2.33218um
paint metal5 
box 42.8686um 4.36863um 49um 8.88863um
paint metal3 
paint metal4 
box 43.2222um 4.72218um 49um 7.83218um
paint metal5 
box 42.8686um 9.86863um 49um 14.3886um
paint metal3 
paint metal4 
box 43.2222um 10.2222um 49um 13.3322um
paint metal5 
box 42.8686um 15.3686um 49um 19.8886um
paint metal3 
paint metal4 
box 43.2222um 15.7222um 49um 18.8322um
paint metal5 
box 42.8686um 20.8686um 49um 25.3886um
paint metal3 
paint metal4 
box 43.2222um 21.2222um 49um 24.3322um
paint metal5 
box 42.8686um 26.3686um 49um 30.8886um
paint metal3 
paint metal4 
box 43.2222um 26.7222um 49um 29.8322um
paint metal5 
box 42.8686um 31.8686um 49um 36.3886um
paint metal3 
paint metal4 
box 43.2222um 32.2222um 49um 35.3322um
paint metal5 
box 42.8686um 37.3686um 49um 41.8886um
paint metal3 
paint metal4 
box 43.2222um 37.7222um 49um 40.8322um
paint metal5 
box -3.5um 4.37137um -3.5um 4.37137um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box -3.5um 15.3714um -3.5um 15.3714um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box -3.5um 26.3714um -3.5um 26.3714um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box -3.5um 37.3714um -3.5um 37.3714um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 4.37137um -3.5um 4.37137um -3.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 15.3714um -3.5um 15.3714um -3.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 26.3714um -3.5um 26.3714um -3.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 37.3714um -3.5um 37.3714um -3.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 47.5um 6.62863um 47.5um 6.62863um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 47.5um 17.6286um 47.5um 17.6286um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 47.5um 28.6286um 47.5um 28.6286um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 47.5um 39.6286um 47.5um 39.6286um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 6.62863um 47.5um 6.62863um 47.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 17.6286um 47.5um 17.6286um 47.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 28.6286um 47.5um 28.6286um 47.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box 39.6286um 47.5um 39.6286um 47.5um
box grow center 0.5um
paint m2contact 
paint m3contact 
paint via3 
box grow center 0.1um
paint metal2 
box -10um 7.61137um -5um 12.1314um
paint metal3 
paint metal4 
box -10um 8.66782um -5um 11.7778um
paint metal5 
box -10um 18.6114um -5um 23.1314um
paint metal3 
paint metal4 
box -10um 19.6678um -5um 22.7778um
paint metal5 
box -10um 29.6114um -5um 34.1314um
paint metal3 
paint metal4 
box -10um 30.6678um -5um 33.7778um
paint metal5 
box -10um 40.6114um -5um 45.1314um
paint metal3 
paint metal4 
box -10um 41.6678um -5um 44.7778um
paint metal5 
box -1.13137um 49um 3.38863um 54um
paint metal3 
paint metal4 
box -0.777817um 49um 2.33218um 54um
paint metal5 
box 9.86863um 49um 14.3886um 54um
paint metal3 
paint metal4 
box 10.2222um 49um 13.3322um 54um
paint metal5 
box 20.8686um 49um 25.3886um 54um
paint metal3 
paint metal4 
box 21.2222um 49um 24.3322um 54um
paint metal5 
box 31.8686um 49um 36.3886um 54um
paint metal3 
paint metal4 
box 32.2222um 49um 35.3322um 54um
paint metal5 
box 2.11137um -10um 6.63137um -5um
paint metal3 
paint metal4 
box 3.16782um -10um 6.27782um -5um
paint metal5 
box 13.1114um -10um 17.6314um -5um
paint metal3 
paint metal4 
box 14.1678um -10um 17.2778um -5um
paint metal5 
box 24.1114um -10um 28.6314um -5um
paint metal3 
paint metal4 
box 25.1678um -10um 28.2778um -5um
paint metal5 
box 35.1114um -10um 39.6314um -5um
paint metal3 
paint metal4 
box 36.1678um -10um 39.2778um -5um
paint metal5 
box 49um 4.36863um 54um 8.88863um
paint metal3 
paint metal4 
box 49um 4.72218um 54um 7.83218um
paint metal5 
box 49um 15.3686um 54um 19.8886um
paint metal3 
paint metal4 
box 49um 15.7222um 54um 18.8322um
paint metal5 
box 49um 26.3686um 54um 30.8886um
paint metal3 
paint metal4 
box 49um 26.7222um 54um 29.8322um
paint metal5 
box 49um 37.3686um 54um 41.8886um
paint metal3 
paint metal4 
box 49um 37.7222um 54um 40.8322um
paint metal5 
box -20um 54um 44um 64um
paint metal3 
paint metal4 
paint metal5 
box -20um 16.5um -10um 64um
paint metal3 
paint metal4 
paint metal5 
box 54um -20um 64um 44um
paint metal3 
paint metal4 
paint metal5 
box 0um -20um 64um -10um
paint metal3 
paint metal4 
paint metal5 
box -2um -2um 46um 0um
paint metal2 
box 44um -2um 46um 46um
paint metal2 
box -2um -2um 0um 46um
paint metal2 
box -2um 44um 46um 46um
paint metal2 
box -10um -8um -2um 2um
paint metal2 
box -10um -8um 2um -2um
paint metal2 
box -10um -8um -9um 2um
label gate FreeSans 30 -metal2
box -10um 8.66782um -5um 11.7778um
label drain_sense FreeSans 30 -metal5
box -20um 16.5um -10um 64um
label drain_power FreeSans 30 -metal5
box 0um -20um 64um -10um
label source FreeSans 30 -metal5
flatten pmos_waffle_8 
load pmos_waffle_8 
box -50um 93um 94um 94um
label ptap FreeSans 30 -metal2
file delete temp.mag
file delete mos_grid.mag
save
quit
