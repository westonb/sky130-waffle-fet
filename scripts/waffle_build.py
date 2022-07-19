from math import floor
import argparse 



def draw_ring(x1_in, x2_in, y1_in, y2_in, width, material):
	#draw bottom
	x1 = x1_in
	x2 = x2_in
	y1 = y1_in
	y2 = y1_in + width 

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (material)
	fout.write(cmd_str)

	#draw top 
	x1 = x1_in
	x2 = x2_in
	y1 = y2_in - width
	y2 = y2_in

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (material)
	fout.write(cmd_str)

	#draw left 
	x1 = x1_in
	x2 = x1_in + width
	y1 = y1_in
	y2 = y2_in

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (material)
	fout.write(cmd_str)

	#draw right
	x1 = x2_in - width 
	x2 = x2_in
	y1 = y1_in
	y2 = y2_in

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (material)
	fout.write(cmd_str)





parser = argparse.ArgumentParser(description='Generate TCL script to build waffle fet in Magic VLSI')

parser.add_argument("-s", "--size", type=int, default=8, dest='size',help="Grid Size")
parser.add_argument( "--nmos", action='store_true', dest='nmos', help="Produce NMOS")
parsed_args = parser.parse_args()
NMOS_OPTION  = parsed_args.nmos 

NO_GUI = False #no longer needed with automated build

ARRAY_SIZE = parsed_args.size

if NMOS_OPTION:
	MOS_NAME = "sky130_fd_pr__nfet_g5v0d10v5_W4_38_L0_5.mag"
	DIFF_LAYER = "mvndiffusion"
	WELL_LAYER = "pwell"
	SUBSTRATE_DIFF = "mvpsubdiff"
	SUBSTRATE_DIFF_CONTACT = "mvpsubdiffcont"
	OUTER_GUARD_WELL = "nwell"
	OUTER_GUARD_DIFF = "mvnsubdiff"
	#OUTFILE = "N_waffle_gen.tcl"
	OUTER_GUARD_CONTACT = "mvnsubdiffcont"
	MODULE_NAME = "nmos_waffle" +"_" + str(ARRAY_SIZE)
	#ARRAY_SIZE = 8

#pmos waffle
else:
	MOS_NAME = "sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag"
	DIFF_LAYER = "mvpdiffusion"
	WELL_LAYER = "nwell"
	SUBSTRATE_DIFF = "mvnsubdiff"
	OUTER_GUARD_WELL = "pwell"
	OUTER_GUARD_DIFF = "mvpsubdiff"
	#OUTFILE = "P_waffle_gen.tcl"
	OUTER_GUARD_CONTACT = "mvpsubdiffcont"
	SUBSTRATE_DIFF_CONTACT = "mvnsubdiffcont"
	MODULE_NAME = "pmos_waffle" +"_" + str(ARRAY_SIZE)
	#ARRAY_SIZE = 8


OUTFILE = MODULE_NAME + "_gen.tcl"

PITCH = 5.5
CONTACT_CENTER_SPACING = 0.56
POLY_LAYER = "poly"
POLY_CONTACT_LAYER = "pcontact"
LOCALI_LAYER = "locali"
LOCALI_CONTACT_LAYER = "viali"
M1_LAYER = "metal1"
M1_CONTACT_LAYER = "m2contact"
M2_LAYER = "metal2"
M2_CONTACT_LAYER = "m3contact"
M3_LAYER = "metal3"
M3_CONTACT_LAYER = "via3"
M4_LAYER = "metal4"
M4_CONTACT_LAYER = "via4"
M5_LAYER = "metal5"


SUBSTRATE_DIFF_CONTACT_SPACING = 0.12

DIFF_SPACING = 0.54 #spacing from center of channel to edge of diffusion
CHANNEL_LENGTH = 0.5
CHANNEL_M1_SPACING = 0.03
CHANNEL_LOCALI_SPACING = 0.06

M2_VIA_SPACE = 0.1
M3_VIA_SPACE = 0.1
M4_VIA_SPACE = 0.1


#spacing between diagonals is sqrt(2)* PITCH /2 = 3.85

M3_SPACE = 0.6
M4_SPACE = 0.6
M5_SPACE = 1.6

M3_WIDTH = floor(10* (2**(1/2) * PITCH - 2*M3_SPACE)/2) /10 
M4_WIDTH = floor(10* (2**(1/2) * PITCH - 2*M4_SPACE)/2) /10 
M5_WIDTH = floor(10* (2**(1/2) * PITCH - 2*M5_SPACE)/2) /10 
M4_VIA_SIZE = 1.2

M3_HORIZONTAL_WIDTH = floor(100*M3_WIDTH * 2**(1/2))/100
M4_HORIZONTAL_WIDTH = floor(100*M4_WIDTH * 2**(1/2))/100
M5_HORIZONTAL_WIDTH = floor(100*M5_WIDTH * 2**(1/2))/100

WELL_EXTENTION = 6

INNER_GUARD_WIDTH = 3

OUTER_GUARD_WIDTH = 40
OUTER_GUARD_SPACING = 4



EXTENTION_LEN = 5
EXTENTION_LEN2 = 5

BUSBAR_WIDTH = 10



#contact center to channel spacing is 0.56um


fin = open("helper_functions.tcl", "r")
fout = open(OUTFILE, "w")
for line in fin:
	fout.write(line)


if(NO_GUI):
	fout.write("suspendall\n")

#delete old temp files just in case
fout.write("file delete  temp.mag\n")
fout.write("file delete  mos_grid.mag\n")

fout.write("load temp\n")

#place fets 

for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		#place fets aligned to X axis
		if (y_index != 0):

			x_center = PITCH * x_index + PITCH/2
			y_center = PITCH * y_index

			cmd_str = "box %gum %gum %gum %gum\n" % (x_center, y_center, x_center, y_center)
			fout.write(cmd_str)

			cmd_str = "getcell %s\n" % (MOS_NAME)
			fout.write(cmd_str)

			#generated fet is vertical 
			cmd_str = "rotate 90\n"
			fout.write(cmd_str)

			#call center function
			cmd_str = "shift_to_center\n"
			fout.write(cmd_str)



		#place fets aligned to Y axis:

		if (x_index != 0):

			x_center = PITCH * x_index
			y_center = PITCH * y_index + PITCH/2

			cmd_str = "box %gum %gum %gum %gum\n" % (x_center, y_center, x_center, y_center)
			fout.write(cmd_str)

			cmd_str = "getcell %s\n" % (MOS_NAME)
			fout.write(cmd_str)

			#call center function
			cmd_str = "shift_to_center\n"
			fout.write(cmd_str)


		#repair MVN diffusion, M1, and LOCALI 
		#0.64 x 0.64 square aligned to edge of channel
		#subtract out 0.31x0.31 box 

		x_center = PITCH/2 + PITCH * x_index
		y_center = PITCH/2 + PITCH * y_index

		#ll corner 
		if (x_index != 0) and (y_index != 0):

			#diff
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2  
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)




		#ul corner

		if (x_index != 0) and (y_index != (ARRAY_SIZE-1)):
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2  
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)

		#lr corner 
		if (x_index != (ARRAY_SIZE-1)) and (y_index != 0):
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2  
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)





		#ur corner 
		if (x_index != (ARRAY_SIZE-1)) and (y_index != (ARRAY_SIZE-1)):
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2  
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)


#diagonal runners and contacts
for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		#m1 first layer 
		x_center = PITCH * x_index + PITCH/2
		y_center = PITCH * y_index + PITCH/2

		x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING + 0.23
		y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING + 0.23

		x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING - 0.23
		y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING - 0.23

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M1_LAYER)
		fout.write(cmd_str)

		#m2 second layer 

		x1 = x_center - PITCH/2 + 1
		y1 = y_center - PITCH/2 + 1

		x2 = x_center + PITCH/2 - 1
		y2 = y_center + PITCH/2 - 1

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)

		#m1 contact

		x1 = x_center - PITCH/2 + 1.1
		y1 = y_center - PITCH/2 + 1.1

		x2 = x_center + PITCH/2 - 1.1
		y2 = y_center + PITCH/2 - 1.1

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)


		#place runners 

		x1 = x_center - PITCH/2
		y1 = y_center + PITCH/2

		x2 = x_center + PITCH/2
		y2 = y_center - PITCH/2

		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M3_LAYER, M3_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)
		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M4_LAYER, M4_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)
		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M5_LAYER, M5_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)


		x1 = x_center - M4_VIA_SIZE/2
		y1 = y_center - M4_VIA_SIZE/2

		x2 = x_center + M4_VIA_SIZE/2
		y2 = y_center + M4_VIA_SIZE/2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M4_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M3_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_CONTACT_LAYER)
		fout.write(cmd_str)




#gate interconnect

#vertical interconnect
for x_index in range(ARRAY_SIZE+1):
	x_center = PITCH * x_index

	x1 = x_center - CHANNEL_LENGTH/2
	x2 = x_center + CHANNEL_LENGTH/2

	y1 = -CHANNEL_LENGTH/2
	y2 = PITCH * ARRAY_SIZE + CHANNEL_LENGTH/2

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (POLY_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M2_LAYER)
	fout.write(cmd_str)

#horizontal interconnect
for y_index in range (ARRAY_SIZE+1):
	y_center = PITCH * y_index

	x1 = -CHANNEL_LENGTH/2
	x2 = PITCH * ARRAY_SIZE + CHANNEL_LENGTH/2

	y1 = y_center - CHANNEL_LENGTH/2
	y2 = y_center + CHANNEL_LENGTH/2

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (POLY_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M2_LAYER)
	fout.write(cmd_str)

# gate vias
for x_index in range(ARRAY_SIZE+1):
	for y_index in range(ARRAY_SIZE+1):

		#0.5 x 0.5 locali, M1, M2, 
		# 0.4 x 0.4 pcontact, vialocali, M1-M2 via 

		x_center = x_index * PITCH
		y_center = y_index * PITCH

		x1 = x_center - CHANNEL_LENGTH/2
		y1 = y_center - CHANNEL_LENGTH/2

		x2 = x_center + CHANNEL_LENGTH/2
		y2 = y_center + CHANNEL_LENGTH/2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)


		cmd_str = "paint %s \n" % (LOCALI_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)


		x1 = x_center - CHANNEL_LENGTH/2 + 0.08
		y1 = y_center - CHANNEL_LENGTH/2 + 0.08

		x2 = x_center + CHANNEL_LENGTH/2 - 0.08
		y2 = y_center + CHANNEL_LENGTH/2 - 0.08

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (POLY_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)


#substrate contacts
for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		if((x_index+y_index)%2==0):

			x_center = PITCH * x_index + PITCH/2
			y_center = PITCH * y_index + PITCH/2

			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING + 0.17
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING + 0.17

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING - 0.17
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING - 0.17

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)


			

			#fill source area with diff

			x1 = x_center - PITCH/2 + 0.54
			y1 = y_center - PITCH/2 + 0.54

			x2 = x_center + PITCH/2 - 0.54
			y2 = y_center + PITCH/2 - 0.54

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)


			#contact area

			offset = 0.3


			cmd_str = "box  shrink center %gum\n" % (offset)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
			fout.write(cmd_str)

			offset = 0.12 # minimum required N tap overlap

		

			#cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			#fout.write(cmd_str)
			cmd_str = "box  shrink center %gum\n" % (offset)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
			fout.write(cmd_str)


			#fix for FOM density limit, add cuttout in middle of tap



			offset = 0.46 #total of 0.7um tap width
			cmd_str = "box  shrink center %gum\n" % (offset)
			fout.write(cmd_str)
			cmd_str = "erase %s \n" % (SUBSTRATE_DIFF)
			fout.write(cmd_str)
			cmd_str = "paint %s \n" % (SUBSTRATE_DIFF) #repaint so everything else gets erased
			fout.write(cmd_str)



			offset = 0.12 #0.12um is minimum contact spacing
			cmd_str = "box  shrink center %gum\n" % (offset)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (SUBSTRATE_DIFF)
			fout.write(cmd_str)


			#cmd_str = "paint %s \n" % (DIFF_LAYER)
			#fout.write(cmd_str)

			#offset = 0.3 #minimum width of diff
			#cmd_str = "box  shrink center %gum\n" % (offset)
			#fout.write(cmd_str)


			#cmd_str = "erase %s \n" % (DIFF_LAYER)
			#fout.write(cmd_str)


			


# well and inner guard ring (well connected)
x1 = -WELL_EXTENTION
y1 = -WELL_EXTENTION

x2 = PITCH * ARRAY_SIZE + WELL_EXTENTION
y2 = PITCH * ARRAY_SIZE + WELL_EXTENTION

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (WELL_LAYER)
fout.write(cmd_str)



#inner guard ring diff
#spaced 1um from edge of well

#bottom
x1 = -WELL_EXTENTION + 1
y1 = -WELL_EXTENTION + 1

x2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1
y2 = -WELL_EXTENTION + 1 + INNER_GUARD_WIDTH


cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_LAYER)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (M1_LAYER)
fout.write(cmd_str)

cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
fout.write(cmd_str)

#top
x1 = -WELL_EXTENTION + 1
y1 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1 - INNER_GUARD_WIDTH

x2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1
y2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_LAYER)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (M1_LAYER)
fout.write(cmd_str)

cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
fout.write(cmd_str)

#left 

x1 = -WELL_EXTENTION + 1
y1 = -WELL_EXTENTION + 1

x2 = -WELL_EXTENTION + 1 + INNER_GUARD_WIDTH
y2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_LAYER)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (M1_LAYER)
fout.write(cmd_str)

cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
fout.write(cmd_str)

#right
x1 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1 - INNER_GUARD_WIDTH
y1 = -WELL_EXTENTION + 1

x2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1 
y2 = PITCH * ARRAY_SIZE + WELL_EXTENTION - 1

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_LAYER)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (M1_LAYER)
fout.write(cmd_str)

cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
fout.write(cmd_str)

cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
fout.write(cmd_str)


#outer guard ring (opposite supply connected)
#center points for guard ring
x_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
y_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
x_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
y_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2

#draw other well region 
#bottom
x1 = x_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
y1 = y_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
x2 = x_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
y2 = y_ll + OUTER_GUARD_SPACING+ OUTER_GUARD_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (OUTER_GUARD_WELL)
fout.write(cmd_str)
#top
x1 = x_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
y1 = y_ur - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
x2 = x_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
y2 = y_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (OUTER_GUARD_WELL)
fout.write(cmd_str)

#left
x1 = x_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
y1 = y_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
x2 = x_ll + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
y2 = y_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (OUTER_GUARD_WELL)
fout.write(cmd_str)

#right
x1 = x_ur - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
y1 = y_ll - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
x2 = x_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
y2 = y_ur + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (OUTER_GUARD_WELL)
fout.write(cmd_str)

#well contacts
#due to FOM density limits ring is split into multiple well taps 
#40um ring, split into 4 rings / 3 space 
#4.75um ring width 
#7um ring space


#draw metal rings (full single ring)

x1_in = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH
y1_in = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH
x2_in = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH
y2_in = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH

draw_ring(x1_in, x2_in, y1_in, y2_in, OUTER_GUARD_WIDTH, LOCALI_LAYER)
draw_ring(x1_in, x2_in, y1_in, y2_in, OUTER_GUARD_WIDTH, M1_LAYER)
draw_ring(x1_in, x2_in, y1_in, y2_in, OUTER_GUARD_WIDTH, M2_LAYER)
draw_ring(x1_in, x2_in, y1_in, y2_in, OUTER_GUARD_WIDTH, M1_LAYER)

draw_ring(x1_in + SUBSTRATE_DIFF_CONTACT_SPACING, x2_in - SUBSTRATE_DIFF_CONTACT_SPACING, y1_in+SUBSTRATE_DIFF_CONTACT_SPACING, y2_in-SUBSTRATE_DIFF_CONTACT_SPACING, OUTER_GUARD_WIDTH-2*SUBSTRATE_DIFF_CONTACT_SPACING, LOCALI_CONTACT_LAYER)
draw_ring(x1_in + SUBSTRATE_DIFF_CONTACT_SPACING, x2_in - SUBSTRATE_DIFF_CONTACT_SPACING, y1_in+SUBSTRATE_DIFF_CONTACT_SPACING, y2_in-SUBSTRATE_DIFF_CONTACT_SPACING, OUTER_GUARD_WIDTH-2*SUBSTRATE_DIFF_CONTACT_SPACING, M1_CONTACT_LAYER)

#draw concentric tap rings
for index in range(4):
	#draw diffusion 
	x1 = x1_in + 11.75*index
	x2 = x2_in - 11.75*index

	y1 = y1_in + 11.75*index
	y2 = y2_in - 11.75*index

	#draw diffusion ring
	draw_ring(x1, x2, y1, y2, 4.75, OUTER_GUARD_DIFF)
	#draw contact
	draw_ring(x1+SUBSTRATE_DIFF_CONTACT_SPACING, x2-SUBSTRATE_DIFF_CONTACT_SPACING, y1+SUBSTRATE_DIFF_CONTACT_SPACING, y2-SUBSTRATE_DIFF_CONTACT_SPACING, 4.75-2*SUBSTRATE_DIFF_CONTACT_SPACING, OUTER_GUARD_CONTACT)




# #bottom
# x1 = x_ll - OUTER_GUARD_WIDTH/2
# y1 = y_ll - OUTER_GUARD_WIDTH/2
# x2 = x_ur + OUTER_GUARD_WIDTH/2
# y2 = y_ll + OUTER_GUARD_WIDTH/2
# cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_DIFF)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M2_LAYER)
# fout.write(cmd_str)
# cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_CONTACT)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
# fout.write(cmd_str)


# #top
# x1 = x_ll - OUTER_GUARD_WIDTH/2
# y1 = y_ur - OUTER_GUARD_WIDTH/2
# x2 = x_ur + OUTER_GUARD_WIDTH/2
# y2 = y_ur + OUTER_GUARD_WIDTH/2
# cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_DIFF)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M2_LAYER)
# fout.write(cmd_str)
# cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_CONTACT)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
# fout.write(cmd_str)

# #left
# x1 = x_ll - OUTER_GUARD_WIDTH/2
# y1 = y_ll - OUTER_GUARD_WIDTH/2
# x2 = x_ll + OUTER_GUARD_WIDTH/2
# y2 = y_ur + OUTER_GUARD_WIDTH/2
# cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_DIFF)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M2_LAYER)
# fout.write(cmd_str)
# cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_CONTACT)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
# fout.write(cmd_str)

# #right
# x1 = x_ur - OUTER_GUARD_WIDTH/2
# y1 = y_ll - OUTER_GUARD_WIDTH/2
# x2 = x_ur + OUTER_GUARD_WIDTH/2
# y2 = y_ur + OUTER_GUARD_WIDTH/2
# cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_DIFF)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M2_LAYER)
# fout.write(cmd_str)
# cmd_str = "box shrink center %gum \n" % (SUBSTRATE_DIFF_CONTACT_SPACING)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (OUTER_GUARD_CONTACT)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
# fout.write(cmd_str)
# cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
# fout.write(cmd_str)


#strip out M2 / contacts for gate pass through 
x1 = x_ll - OUTER_GUARD_WIDTH/2
y1 = y_ll - OUTER_GUARD_WIDTH/2
x2 = x_ll + OUTER_GUARD_WIDTH/2
y2 = PITCH*3

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)


cmd_str = "erase %s \n" % (M2_LAYER)
fout.write(cmd_str)

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "box grow center 0.3um\n"
fout.write(cmd_str)
cmd_str = "erase %s \n" % (M1_CONTACT_LAYER)
fout.write(cmd_str)

#hard coded fix for remainder M2. Not sure where its coming from 
cmd_str = "box grow E 0.12um\n"
fout.write(cmd_str)
cmd_str = "box grow W 0.12um\n"
fout.write(cmd_str)

cmd_str = "erase %s \n" % (M2_LAYER)
fout.write(cmd_str)

x1 = x_ll - OUTER_GUARD_WIDTH/2
y1 = y_ll - OUTER_GUARD_WIDTH/2
x2 = 0
y2 = y_ll + OUTER_GUARD_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)



cmd_str = "erase %s \n" % (M2_LAYER)
fout.write(cmd_str)


cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
cmd_str = "box grow center 0.3um\n"
fout.write(cmd_str)
cmd_str = "erase %s \n" % (M1_CONTACT_LAYER)
fout.write(cmd_str)

#hard coded fix for remainder M2. Not sure where its coming from 
cmd_str = "box grow N 0.12um\n"
fout.write(cmd_str)
cmd_str = "box grow S 0.12um\n"
fout.write(cmd_str)
cmd_str = "erase %s \n" % (M2_LAYER)
fout.write(cmd_str)

#bug fix: write out grid before doing edge terminations 
fout.write("flatten mos_grid\n")
fout.write("load mos_grid\n")
fout.write("save\n")

fout.write("load temp2\n")
x1 = 0
y1 = 0
x2 = 0
y2 = 0
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
fout.write("getcell mos_grid\n")
fout.write("shift_to_center\n")
x1 = PITCH * ARRAY_SIZE/2
y1 = PITCH * ARRAY_SIZE/2
cmd_str = "move %gum %gum\n" % (x1, y1)
fout.write(cmd_str)


#terminations
# source goes bottom / right 
#drain goes out left / top
#sense finger goes out bottom left

#left side
for index in range(ARRAY_SIZE):
	center_x = 0
	center_y = index*PITCH+PITCH

	#M3 and M4 finger
	x1 = center_x - EXTENTION_LEN
	y1 = center_y - M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2))
	x2 = center_x + (M3_WIDTH/2 /2**(1/2))
	y2 = center_y + (M3_WIDTH/2 /2**(1/2))

	#round 
	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M3_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M4_LAYER)
	fout.write(cmd_str)

	x1 = center_x - EXTENTION_LEN
	y1 = center_y - M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2))
	x2 = center_x + (M5_WIDTH/2/2**(1/2))
	y2 = center_y + (M5_WIDTH/2/2**(1/2))

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M5_LAYER)
	fout.write(cmd_str)

#bottom
for index in range(ARRAY_SIZE):
	center_x = index*PITCH+PITCH
	center_y = 0

	#M3 and M4 finger
	y1 = center_y - EXTENTION_LEN
	x1 = center_x - M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2))
	y2 = center_y + (M3_WIDTH/2 /2**(1/2))
	x2 = center_x + (M3_WIDTH/2 /2**(1/2))

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M3_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M4_LAYER)
	fout.write(cmd_str)

	y1 = center_y - EXTENTION_LEN
	x1 = center_x - M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2))
	y2 = center_y + (M5_WIDTH/2/2**(1/2))
	x2 = center_x + (M5_WIDTH/2/2**(1/2))

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M5_LAYER)
	fout.write(cmd_str)

#top
for index in range(ARRAY_SIZE):
	center_x = index*PITCH+PITCH
	center_y = ARRAY_SIZE*PITCH


	#M3 and M4 finger

	x1 = center_x - (M3_WIDTH/2 /2**(1/2)) - PITCH
	y1 = center_y - (M3_WIDTH/2 /2**(1/2))
	x2 = center_x + M3_HORIZONTAL_WIDTH - (M3_WIDTH/2/2**(1/2)) - PITCH
	y2 = center_y + EXTENTION_LEN

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M3_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M4_LAYER)
	fout.write(cmd_str)

	x1 = center_x - (M5_WIDTH/2 /2**(1/2)) - PITCH
	y1 = center_y - (M5_WIDTH/2 /2**(1/2))
	x2 = center_x + M5_HORIZONTAL_WIDTH - (M5_WIDTH/2/2**(1/2)) - PITCH
	y2 = center_y + EXTENTION_LEN

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M5_LAYER)
	fout.write(cmd_str)

#right 
for index in range(ARRAY_SIZE):
	center_x = ARRAY_SIZE*PITCH
	center_y = index*PITCH+PITCH

	#M3 and M4 finger

	x2 = center_x + EXTENTION_LEN
	y1 = center_y - (M3_WIDTH/2 /2**(1/2)) - PITCH
	x1 = center_x - (M3_WIDTH/2 /2**(1/2))
	y2 = center_y + M3_HORIZONTAL_WIDTH - (M3_WIDTH/2/2**(1/2)) - PITCH
	#round 
	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M3_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M4_LAYER)
	fout.write(cmd_str)

	x2 = center_x + EXTENTION_LEN
	y1 = center_y - (M5_WIDTH/2 /2**(1/2)) - PITCH
	x1 = center_x - (M5_WIDTH/2 /2**(1/2))
	y2 = center_y + M5_HORIZONTAL_WIDTH - (M5_WIDTH/2/2**(1/2)) - PITCH

	# x1 = round(x1*200)/200
	# y1 = round(y1*200)/200
	# x2 = round(x2*200)/200
	# y2 = round(y2*200)/200

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M5_LAYER)
	fout.write(cmd_str)


#vias to inner guard ring

M3_TOP_OFFSET = -M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2))
M3_BOTTOM_OFFSET = (M3_WIDTH/2 /2**(1/2))

M5_TOP_OFFSET = -M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2))
M5_BOTTOM_OFFSET = (M5_WIDTH/2 /2**(1/2))

#add vias to guard ring

#left side
for index in range(ARRAY_SIZE):

	center_x = -EXTENTION_LEN + INNER_GUARD_WIDTH/2
	center_y = index*PITCH+PITCH + ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2

	if (index%2 ==0):
		x1 = center_x
		x2 = center_x
		y1 = center_y
		y2 = center_y
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.5)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M3_CONTACT_LAYER)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.1)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)


#bottom
for index in range(ARRAY_SIZE):
	center_y = -EXTENTION_LEN + INNER_GUARD_WIDTH/2
	center_x = index*PITCH+PITCH + (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2

	if (index%2 ==0):
		x1 = center_x
		x2 = center_x
		y1 = center_y
		y2 = center_y
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.5)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M3_CONTACT_LAYER)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.1)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)

#right 
for index in range(ARRAY_SIZE):

	center_x = ARRAY_SIZE * PITCH + EXTENTION_LEN - INNER_GUARD_WIDTH/2
	center_y = index*PITCH - ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2

	if (index%2 ==1):
		x1 = center_x
		x2 = center_x
		y1 = center_y
		y2 = center_y
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.5)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M3_CONTACT_LAYER)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.1)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)

#top 
for index in range(ARRAY_SIZE):
	center_y = ARRAY_SIZE*PITCH + EXTENTION_LEN - INNER_GUARD_WIDTH/2
	center_x = index*PITCH - (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2

	if (index%2 ==1):
		x1 = center_x
		x2 = center_x
		y1 = center_y
		y2 = center_y
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.5)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M3_CONTACT_LAYER)
		fout.write(cmd_str)

		cmd_str = "box grow center %gum\n" % (0.1)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)

#extend source / drain connections
# source goes bottom / right 
#drain goes out left / top
#sense finger goes out bottom left

#left (drain)
for index in range(ARRAY_SIZE):

	center_x = -EXTENTION_LEN + INNER_GUARD_WIDTH/2
	center_y = index*PITCH+PITCH + ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2

	if (index%2 ==1):
		#M3, 4

		x1 = -EXTENTION_LEN - EXTENTION_LEN2
		x2 = -EXTENTION_LEN

		y1 = index*PITCH+PITCH + ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2 - M3_HORIZONTAL_WIDTH/2
		y2 = index*PITCH+PITCH + ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2 + M3_HORIZONTAL_WIDTH/2
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

	
		cmd_str = "paint %s \n" % (M3_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M4_LAYER)
		fout.write(cmd_str)

		#M5
		x1 = -EXTENTION_LEN - EXTENTION_LEN2
		x2 = -EXTENTION_LEN

		y1 = index*PITCH+PITCH + ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 - M5_HORIZONTAL_WIDTH/2
		y2 = index*PITCH+PITCH + ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 + M5_HORIZONTAL_WIDTH/2
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

	
		cmd_str = "paint %s \n" % (M5_LAYER)
		fout.write(cmd_str)

#top (drain)
for index in range(ARRAY_SIZE):


	if (index%2 ==0):
		#M3, 4


		x1 = index*PITCH - (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2 - M3_HORIZONTAL_WIDTH/2
		x2 = index*PITCH - (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2 + M3_HORIZONTAL_WIDTH/2

		y1 = ARRAY_SIZE*PITCH + EXTENTION_LEN
		y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

	
		cmd_str = "paint %s \n" % (M3_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M4_LAYER)
		fout.write(cmd_str)

		#M5
		x1 = index*PITCH - (- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)) + (M5_WIDTH/2 /2**(1/2)))/2 - M5_HORIZONTAL_WIDTH/2
		x2 = index*PITCH - (- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)) + (M5_WIDTH/2 /2**(1/2)))/2 + M5_HORIZONTAL_WIDTH/2

		y1 = ARRAY_SIZE*PITCH + EXTENTION_LEN
		y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)
	
		cmd_str = "paint %s \n" % (M5_LAYER)
		fout.write(cmd_str)

#bottom (source)
for index in range(ARRAY_SIZE):


	if (index%2 ==0):
		#M3, 4

		center_y = -EXTENTION_LEN + INNER_GUARD_WIDTH/2
		center_x = index*PITCH+PITCH + (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2

		y1 = -EXTENTION_LEN - EXTENTION_LEN2
		y2 = -EXTENTION_LEN

		x1 = index*PITCH+PITCH + (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2 - M3_HORIZONTAL_WIDTH/2
		x2 = index*PITCH+PITCH + (- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)) + (M3_WIDTH/2 /2**(1/2)))/2 + M3_HORIZONTAL_WIDTH/2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

	
		cmd_str = "paint %s \n" % (M3_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M4_LAYER)
		fout.write(cmd_str)

		#M5
		y1 = -EXTENTION_LEN - EXTENTION_LEN2
		y2 = -EXTENTION_LEN

		x1 = index*PITCH+PITCH + (- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)) + (M5_WIDTH/2 /2**(1/2)))/2 - M5_HORIZONTAL_WIDTH/2
		x2 = index*PITCH+PITCH + (- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)) + (M5_WIDTH/2 /2**(1/2)))/2 + M5_HORIZONTAL_WIDTH/2
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)
	
		cmd_str = "paint %s \n" % (M5_LAYER)
		fout.write(cmd_str)

#right (source)

for index in range(ARRAY_SIZE):


	if (index%2 ==1):
		#M3, 4

		x1 = ARRAY_SIZE * PITCH + EXTENTION_LEN
		x2 = ARRAY_SIZE * PITCH + EXTENTION_LEN + EXTENTION_LEN2

		y1 = index*PITCH - ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2 - M3_HORIZONTAL_WIDTH/2
		y2 = index*PITCH - ((M3_WIDTH/2 /2**(1/2))- M3_HORIZONTAL_WIDTH + (M3_WIDTH/2/2**(1/2)))/2 + M3_HORIZONTAL_WIDTH/2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

	
		cmd_str = "paint %s \n" % (M3_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M4_LAYER)
		fout.write(cmd_str)

		#M5
		x1 = ARRAY_SIZE * PITCH + EXTENTION_LEN
		x2 = ARRAY_SIZE * PITCH + EXTENTION_LEN + EXTENTION_LEN2

		y1 = index*PITCH - ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 - M5_HORIZONTAL_WIDTH/2
		y2 = index*PITCH - ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 + M5_HORIZONTAL_WIDTH/2
		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)
	
		cmd_str = "paint %s \n" % (M5_LAYER)
		fout.write(cmd_str)


#BUS bars

#skip area for sense finger

#top side

x1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
x2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH - BUSBAR_WIDTH*2
y1 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2
y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M3_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M4_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M5_LAYER)
fout.write(cmd_str)

#left side 
x1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
x2 = -EXTENTION_LEN - EXTENTION_LEN2
y1 = 3*PITCH #space for sense finger
y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M3_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M4_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M5_LAYER)
fout.write(cmd_str)

#right side
x1 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2
x2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
y1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH - 2*BUSBAR_WIDTH
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M3_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M4_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M5_LAYER)
fout.write(cmd_str)

#bottom side
x1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH + 2*BUSBAR_WIDTH
x2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
y1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
y2 = -EXTENTION_LEN - EXTENTION_LEN2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M3_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M4_LAYER)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M5_LAYER)
fout.write(cmd_str)


#gate busbar
#bottom
x1 = -2 
x2 = ARRAY_SIZE*PITCH + 2
y1 = -2
y2 = 0
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)

#right
x1 = ARRAY_SIZE*PITCH
x2 = ARRAY_SIZE*PITCH + 2
y1 = -2
y2 = ARRAY_SIZE*PITCH+2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)

#left
x1 = -2 
x2 = 0
y1 = -2
y2 = ARRAY_SIZE*PITCH+2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)

#top
x1 = -2 
x2 = ARRAY_SIZE*PITCH + 2
y1 = ARRAY_SIZE*PITCH
y2 = ARRAY_SIZE*PITCH+2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)

#add gate extention
x1 = -EXTENTION_LEN - EXTENTION_LEN2
x2 = -2
y1 = -8
y2 = 2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)

#add other corner of gate extention
x1 = -EXTENTION_LEN - EXTENTION_LEN2
x2 = 2
y1 = -8
y2 = -2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "paint %s \n" % (M2_LAYER)
fout.write(cmd_str)




#add labels
#gate label
x1 = -EXTENTION_LEN - EXTENTION_LEN2
x2 = x1 + 1
y1 = -8
y2 = 2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "label gate FreeSans 30 -metal2\n"
fout.write(cmd_str)

#sense drain label (reuse code from metal runner extentions)
index = 1
x1 = -EXTENTION_LEN - EXTENTION_LEN2
x2 = -EXTENTION_LEN

y1 = index*PITCH+PITCH + ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 - M5_HORIZONTAL_WIDTH/2
y2 = index*PITCH+PITCH + ((M5_WIDTH/2 /2**(1/2))- M5_HORIZONTAL_WIDTH + (M5_WIDTH/2/2**(1/2)))/2 + M5_HORIZONTAL_WIDTH/2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "label drain_sense FreeSans 30 -metal5\n"
fout.write(cmd_str)


#power drain label 
x1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
x2 = -EXTENTION_LEN - EXTENTION_LEN2
y1 = 3*PITCH #space for sense finger
y2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "label drain_power FreeSans 30 -metal5\n"
fout.write(cmd_str)

#source label
x1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH + 2*BUSBAR_WIDTH
x2 = ARRAY_SIZE*PITCH + EXTENTION_LEN + EXTENTION_LEN2 + BUSBAR_WIDTH
y1 = -EXTENTION_LEN - EXTENTION_LEN2 - BUSBAR_WIDTH
y2 = -EXTENTION_LEN - EXTENTION_LEN2
cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)
cmd_str = "label source FreeSans 30 -metal5\n"
fout.write(cmd_str)





fout.write("flatten %s \n" % (MODULE_NAME))
fout.write("load %s \n" % (MODULE_NAME))

#well tap 
#for some reason this needs to be after flattening
if NMOS_OPTION:
	x_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
	y_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
	x_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
	y_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2

	x1 = x_ll - OUTER_GUARD_WIDTH/2

	x2 = x_ur + OUTER_GUARD_WIDTH/2
	y2 = y_ur + OUTER_GUARD_WIDTH/2
	y1 = y2 - 1


	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "label ntap FreeSans 30 -metal2\n"
	fout.write(cmd_str)

else:
	#metal 1 guard ring connecting to pwell tap
	x_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
	y_ll = -WELL_EXTENTION - OUTER_GUARD_SPACING - OUTER_GUARD_WIDTH/2
	x_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2
	y_ur = PITCH * ARRAY_SIZE + WELL_EXTENTION + OUTER_GUARD_SPACING + OUTER_GUARD_WIDTH/2

	x1 = x_ll - OUTER_GUARD_WIDTH/2

	x2 = x_ur + OUTER_GUARD_WIDTH/2
	y2 = y_ur + OUTER_GUARD_WIDTH/2
	y1 = y2 - 1


	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)
	cmd_str = "label ptap FreeSans 30 -metal2\n"
	fout.write(cmd_str)

if(NO_GUI):
	fout.write("resumeall\n")

#delete newly generated temp files
fout.write("file delete temp.mag\n")
fout.write("file delete mos_grid.mag\n")
#close magic
fout.write("save\n")
fout.write("quit\n")

fout.close()




