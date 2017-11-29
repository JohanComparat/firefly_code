
Welcome to the FIREFLY python documentation
===========================================

FIREFLY is a chi-squared minimisation fitting code that for a given input Spectral Energy Distribution (SED), compares combinations of single-burst stellar population models (SSP), following an iterative best-fitting process until convergence is achieved. The weight of each component can be arbitrary and no regularization or additional prior than the adopted model grid is applied. Dust attenuation is added in a novel way, using a High-Pass Filter (HPF) in order to rectify the continuum before fitting. The returned attenuation array is then matched to known analytical approximations to return an E(B-V) value. This procedure allows for removal of large scale modes of the spectrum associated with dust and/or poor flux calibration. FIREFLY provides light- and mass-weighted stellar population properties (age and metallicity), E(B-V) values and stellar mass for the most likely best fitting model. Errors on these properties are obtained by the likelihood of solutions within the statistical cut (of order 100-1000). 

The code can fit a wide range of stellar population models and galaxy spectra. At present, the code contains functionality to fit the observed galaxy spectra from SDSS, DEEP2, and MaNGA.  

Contacts
--------
 - Johan Comparat : comparat@mpe.mpg.de
 - Claudia Maraston : claudia.maraston@port.ac.uk
 - Violeta Gonzalez-Perez: violeta.gonzalez-perez@port.ac.uk

Acknowledgment
==============

If you use this code as a resource to produce a scientific result, please cite accordingly :
 * Comparat et al. 2017 (https://arxiv.org/abs/1711.06575) 
 * Wilkinson et al. 2017 (http://adsabs.harvard.edu/abs/2017MNRAS.472.4297W)
 * Goddard et al. 2017 (https://arxiv.org/abs/1612.01546).

Install
=======

git clone https://github.com/FireflySpectra/firefly_release

dependencies :
 - python 3 and its main packages all installable through pip: numpy, scipy, matplotlib, math ...
 - astro dependencies: astropy, installable with pip

Add all the python folders from the FF_DIR to your pythonpath.

The Maraston 2011 models available via the command
  - svn checkout https://svn.sdss.org/public/data/sdss/stellarpopmodels/tags/v1_0_1/

Current run
===========

Our current runs on 
 * SDSS data are available at http://www.sdss.org/dr14/spectro/galaxy_firefly
 * DEEP2 data are available at http://www.mpe.mpg.de/~comparat/DEEP2

Stellar population model 
========================

.. toctree::
   :maxdepth: 2 

   StellarPopulationModel
   GalaxySpectrumFIREFLY
   firefly_fitter
   firefly_dust
   firefly_instrument
   firefly_library

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

