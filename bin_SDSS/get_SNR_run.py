import os
from os.path import join
import numpy as n
import glob
os.chdir('/home/comparat/software/linux/firefly_code/bin_SDSS')
plate_list = n.loadtxt(join(os.environ['SDSSDR14_DIR'],"plateList_26"), unpack=True)

for plate in plate_list[2000:]:
	os.system("python3 get_SNR.py "+str(plate))
