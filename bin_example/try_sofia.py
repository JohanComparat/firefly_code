"""
.. moduleauthor:: Daniel Goddard <daniel.goddard__at__port.ac.uk>

General purpose:
................

Reads in a MaNGA datacube and analyses each spectrum from Voronoi binned spectra.

*Imports*::

	from os.path import join
	import os
	import glob
	import numpy as np
	import pyfits
	import astropy.cosmology as co
	import matplotlib.pyplot as plt
	import GalaxySpectrumFIREFLY as gs
	import StellarPopulationModel as spm
	from firefly_dust import get_dust_radec

"""
#! /usr/bin/env python
from os.path import join
import os
import glob
import numpy as np
import pyfits
import astropy.cosmology as co
cosmo = co.Planck15
import matplotlib.pyplot as plt
import GalaxySpectrumFIREFLY as gs
import StellarPopulationModel as spm
from firefly_dust import get_dust_radec



spec_MaNGA = gs.GalaxySpectrumFIREFLY('/Users/Daniel/ESO382-G016.fits')
spec_MaNGA.openEllipticalsSMG()
outFile = "/Users/Daniel/Documents/NEW_7495-12704"
model_sdss = spm.StellarPopulationModel(spec_MaNGA, outFile, cosmo, models = 'm11', model_libs = ['MARCS'], imfs = ['kr'], age_limits = [6,10], downgrade_models = True, data_wave_medium = 'vacuum', Z_limits = [-3.,1.],suffix="-SPM-MILES.fits", use_downgraded_models = False, write_results=True, wave_limits = [22000.,23000.])
model_sdss.fit_models_to_data()

stop


