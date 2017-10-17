"""
postprocessing of firefly's outputs.

Modifies the spFly files to complyt to the data model.

1. computes chi2, ndof for each fit

fixes the header types

removes the original spectrum from the output fits

"""
import time
t0t=time.time()
from os.path import join
import os
import numpy as n
import astropy.io.fits as fits
import sys
env = sys.argv[1] #  'EBOSSDR14_DIR' # sys.argv[1] # 'EBOSSDR14_DIR'
plate = sys.argv[2] # '9003' # sys.argv[2] # '9003'
mjd = sys.argv[3] # '57488' #sys.argv[3]

print( plate, mjd, env )

spFly_file = os.path.join(os.environ[env], 'stellarpop', plate, 'spFlyPlate-'+plate+'-'+mjd+".fits")

# opens the model file with 9 model hdus
model = fits.open(spFly_file, mode='update')

priHD = model[0].header
priHD.set('PLATE',int(plate))
priHD.set('MJD',int(mjd))
priHD.set('FILENAME',os.path.basename(spFly_file))
priHD.remove('author')

model.close()
print(time.time()-t0t)
