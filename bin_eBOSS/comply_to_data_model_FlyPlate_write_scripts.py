import glob
import os
from os.path import join
import numpy as n

def writeScript(rootName, plate, env, sFlyList):
	f=open(rootName+".sh",'w')
	f.write("#!/bin/bash \n")
	f.write("#PBS -l walltime=00:30:00 \n")
	f.write("#PBS -o "+plate+".o.$PBS_JOBID \n")
	f.write("#PBS -e "+plate+".e$PBS_JOBID \n")
	f.write("#PBS -M comparat@mpe.mpg.de \n")
	f.write("module load apps/anaconda/2.4.1 \n")
	f.write("module load apps/python/2.7.8/gcc-4.4.7 \n")
	f.write("export PYTHONPATH=$PYTHONPATH:/users/comparat/firefly_code/python/ \n")
	f.write(" \n")
	f.write("cd /users/comparat/firefly_code/bin_eBOSS \n")
	for el in sFlyList:
		print(el)
		el2 = el.split('/')[-1][:-5].split('-')
		print(el2)
		command = "python comply_to_data_model_FlyPlate.py "+env+" "+plate+" "+el2[2]+" \n"
		f.write(command)

	f.write(" \n")
	f.close()


env="SDSSDR12_DIR"
plates = n.loadtxt( join(os.environ[env], "catalogs", "plateNumberList"), unpack=True, dtype='str')
for plate in plates:
	print(plate)
	rootName = join(os.environ['HOME'], "batch_data_model_compliance_flyPlate", plate)
	sFlyList = n.array(glob.glob(join(os.environ[env], 'stellarpop', plate, 'spFlyPlate-????-?????.fits')))
	print(sFlyList)
	print(rootName, plate, env, sFlyList)
	writeScript(rootName, plate, env, sFlyList)

env="EBOSSDR14_DIR"
plates = n.loadtxt( join(os.environ[env], "catalogs", "plateNumberList"), unpack=True, dtype='str')
for plate in plates:
	print(plate)
	rootName = join(os.environ['HOME'], "batch_data_model_compliance_flyPlate", plate)
        sFlyList = n.array(glob.glob(join(os.environ[env], 'stellarpop', plate, 'spFlyPlate-????-?????.fits')))
	writeScript(rootName, plate, env, sFlyList)
