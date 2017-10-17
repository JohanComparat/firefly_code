"""
Postprocessing of firefly's outputs.

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
fiberid = sys.argv[4] # '0999' #sys.argv[4]

print( plate, mjd, fiberid, env )

spFly_file = os.path.join(os.environ[env], 'stellarpop', plate, 'spFly-'+plate+'-'+mjd+'-'+fiberid+".fits")

# opens the model file with 9 model hdus
model = fits.open(spFly_file, mode='update')

priHD = model[0].header
priHD.set('PLATE',int(plate))
priHD.set('MJD',int(mjd))
priHD.set('FIBERID',int(fiberid))
priHD.set('AGEMIN',-6.0)
priHD.set('AGEMAX',10.0)
priHD.set('ZMIN',-3.0)
priHD.set('ZMAX',3.0)

for id, hdu in enumerate(model[1:]):
   print(id, hdu)
   try :
	hdu.columns.del_col('original_data')
	hdu.columns.del_col('flux_error')
   except(KeyError):
	print('not there')
   hdr = hdu.header
   for ii in n.arange(hdr['ssp_number']):
 	hdr.set('SFR_ssp_'+str(ii), 10**hdr['stellar_mass_ssp_'+str(ii)]/(10**(9+hdr['age_ssp_'+str(ii)])))

model.close()
print(time.time()-t0t)
