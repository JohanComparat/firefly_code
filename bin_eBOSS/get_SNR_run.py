import os
from os.path import join
import numpy as n
import glob

plate_list = n.loadtxt(join(os.environ['EBOSSDR14_DIR'],"plateList_v5_10_0"), unpack=True)

for plate in plate_list[2000:]:
	os.system("python3 get_SNR.py "+str(plate))
