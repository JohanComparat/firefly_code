
Welcome to the FIREFLY python documentation
===========================================

FIREFLY is a chi-squared minimisation fitting code that for a given input Spectral Energy Distribution (SED), compares combinations of single-burst stellar population models (SSP), following an iterative best-fitting process until convergence is achieved. The weight of each component can be arbitrary and no regularization or additional prior than the adopted model grid is applied. Dust attenuation is added in a novel way, using a High-Pass Filter (HPF) in order to rectify the continuum before fitting. The returned attenuation array is then matched to known analytical approximations to return an E(B-V) value. This procedure allows for removal of large scale modes of the spectrum associated with dust and/or poor flux calibration. FIREFLY provides light- and mass-weighted stellar population properties (age and metallicity), E(B-V) values and stellar mass for the most likely best fitting model. Errors on these properties are obtained by the likelihood of solutions within the statistical cut (of order 100-1000). 

The code can fit a wide range of stellar population models and galaxy spectra. At present, the code contains functionality to fit the observed galaxy spectra from SDSS, DEEP2, VVDS, VIPERS and MaNGA.  

Contacts
--------
 - Johan Comparat : comparat@mpe.mpg.de
 - Dan Goddard : daniel.goddard@port.ac.uk

Acknowledgment
==============

If you use this code as a resource to produce a scientific result, please :
 * cite the paper Wilkinson et al. 2016 (https://arxiv.org/abs/1503.01124) and Goddard et al. 2017 (https://arxiv.org/abs/1612.01546).

Install
=======

requirements :
 - python 2.7.8 and its main packages all installable through pip: numpy, scipy, matplotlib, math ...
 - astro dependencies: astropy, installable with pip

git clone https://bitbucket.org/firefly_spm/firefly_code

Add all the python folders you can list them like this: ls $FF_DIR/*/python) to your pythonpath.

Stellar population model 
========================
Library in development (caution !), it is the twin of FIREFLY developed in ICG portsmouth and described in Wilkinson et al. 2015 https://arxiv.org/abs/1503.01124 and soon in greater details in Wilkinson et al. in prep.

.. toctree::
   :maxdepth: 2 

   firefly_dust
   firefly_fitter
   firefly_instrument
   firefly_library
   GalaxySpectrumFIREFLY
   StellarPopulationModel

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

