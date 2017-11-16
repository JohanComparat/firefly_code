#! /usr/bin/env python

import sys
from os.path import join
import os
import time
import numpy as np
import glob

# for one galaxy spectrum
import GalaxySpectrumFIREFLY as gs

plate = int(float(sys.argv[1]))
print(plate)
output_dir = join( os.environ['EBOSSDR14_DIR'], 'SNR', str(plate).zfill(4))
if os.path.isdir(output_dir)==False :
	os.system("mkdir -p "+output_dir)

outputFile = join( output_dir, 'snr-' + str(plate).zfill(4) + ".ascii")
print(outputFile)

fileList = np.array(glob.glob(join( os.environ['EBOSSDR14_DIR'], 'spectra', str(plate).zfill(4), 'spec-*.fits')))
fileList.sort()

print(len(fileList), 'to process')

def runSpec(specLiteFile, output_dir):
	t0=time.time()
	baseN = os.path.basename(specLiteFile).split('-')
	plate = baseN[1] #7457# sys.argv[1] #7619
	mjd = baseN[2] # 56746#sys.argv[2] # 56900
	fibre = baseN[3][:-5] # 471#sys.argv[3] #300
	spec=gs.GalaxySpectrumFIREFLY(specLiteFile, milky_way_reddening=True)
	snrs = spec.measure_SNR_SDSS_spectrum(survey='sdss4')
	#print(specLiteFile, time.time()-t0 ) 
	return np.hstack((np.array([int(plate), int(mjd), int(fibre)]), snrs))
	

out = np.zeros((len(fileList), 11))
for ii, el in enumerate(fileList):
	out[ii] = runSpec(el, output_dir)

#print(out.shape)
np.savetxt(outputFile, out)
