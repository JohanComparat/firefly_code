#!/bin/bash
#PBS -l walltime=260:00:00
#PBS -o $EBOSSDR14_DIR/spallFly.eboss.o.$PBS_JOBID
#PBS -e $EBOSSDR14_DIR/spallFly.eboss.e$PBS_JOBID
#PBS -M comparat@mpe.mpg.de

cd $EBOSSDR14_DIR/catalogs
ls $EBOSSDR14_DIR/stellarpop/*/spFlyPlate*.fits > flyAllList

java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Chabrier_MILES_age_lightW Chabrier_MILES_age_lightW_up Chabrier_MILES_age_lightW_low Chabrier_MILES_metallicity_lightW Chabrier_MILES_metallicity_lightW_up Chabrier_MILES_metallicity_lightW_low Chabrier_MILES_stellar_mass Chabrier_MILES_stellar_mass_up Chabrier_MILES_stellar_mass_low Chabrier_MILES_spm_EBV Chabrier_MILES_nComponentsSSP Salpeter_MILES_age_lightW Salpeter_MILES_age_lightW_up Salpeter_MILES_age_lightW_low Salpeter_MILES_metallicity_lightW Salpeter_MILES_metallicity_lightW_up Salpeter_MILES_metallicity_lightW_low Salpeter_MILES_stellar_mass Salpeter_MILES_stellar_mass_up Salpeter_MILES_stellar_mass_low Salpeter_MILES_spm_EBV Salpeter_MILES_nComponentsSSP Kroupa_MILES_age_lightW Kroupa_MILES_age_lightW_up Kroupa_MILES_age_lightW_low Kroupa_MILES_metallicity_lightW Kroupa_MILES_metallicity_lightW_up Kroupa_MILES_metallicity_lightW_low Kroupa_MILES_stellar_mass Kroupa_MILES_stellar_mass_up Kroupa_MILES_stellar_mass_low Kroupa_MILES_spm_EBV Kroupa_MILES_nComponentsSSP Chabrier_ELODIE_age_lightW Chabrier_ELODIE_age_lightW_up Chabrier_ELODIE_age_lightW_low Chabrier_ELODIE_metallicity_lightW Chabrier_ELODIE_metallicity_lightW_up Chabrier_ELODIE_metallicity_lightW_low Chabrier_ELODIE_stellar_mass Chabrier_ELODIE_stellar_mass_up Chabrier_ELODIE_stellar_mass_low Chabrier_ELODIE_spm_EBV Chabrier_ELODIE_nComponentsSSP Salpeter_ELODIE_age_lightW Salpeter_ELODIE_age_lightW_up Salpeter_ELODIE_age_lightW_low Salpeter_ELODIE_metallicity_lightW Salpeter_ELODIE_metallicity_lightW_up Salpeter_ELODIE_metallicity_lightW_low Salpeter_ELODIE_stellar_mass Salpeter_ELODIE_stellar_mass_up Salpeter_ELODIE_stellar_mass_low Salpeter_ELODIE_spm_EBV Salpeter_ELODIE_nComponentsSSP Kroupa_ELODIE_age_lightW Kroupa_ELODIE_age_lightW_up Kroupa_ELODIE_age_lightW_low Kroupa_ELODIE_metallicity_lightW Kroupa_ELODIE_metallicity_lightW_up Kroupa_ELODIE_metallicity_lightW_low Kroupa_ELODIE_stellar_mass Kroupa_ELODIE_stellar_mass_up Kroupa_ELODIE_stellar_mass_low Kroupa_ELODIE_spm_EBV Kroupa_ELODIE_nComponentsSSP Chabrier_STELIB_age_lightW Chabrier_STELIB_age_lightW_up Chabrier_STELIB_age_lightW_low Chabrier_STELIB_metallicity_lightW Chabrier_STELIB_metallicity_lightW_up Chabrier_STELIB_metallicity_lightW_low Chabrier_STELIB_stellar_mass Chabrier_STELIB_stellar_mass_up Chabrier_STELIB_stellar_mass_low Chabrier_STELIB_spm_EBV Chabrier_STELIB_nComponentsSSP Salpeter_STELIB_age_lightW Salpeter_STELIB_age_lightW_up Salpeter_STELIB_age_lightW_low Salpeter_STELIB_metallicity_lightW Salpeter_STELIB_metallicity_lightW_up Salpeter_STELIB_metallicity_lightW_low Salpeter_STELIB_stellar_mass Salpeter_STELIB_stellar_mass_up Salpeter_STELIB_stellar_mass_low Salpeter_STELIB_spm_EBV Salpeter_STELIB_nComponentsSSP Kroupa_STELIB_age_lightW Kroupa_STELIB_age_lightW_up Kroupa_STELIB_age_lightW_low Kroupa_STELIB_metallicity_lightW Kroupa_STELIB_metallicity_lightW_up Kroupa_STELIB_metallicity_lightW_low Kroupa_STELIB_stellar_mass Kroupa_STELIB_stellar_mass_up Kroupa_STELIB_stellar_mass_low Kroupa_STELIB_spm_EBV Kroupa_STELIB_nComponentsSSP Chabrier_MILES_chi2 Chabrier_MILES_ndof Salpeter_MILES_chi2 Salpeter_MILES_ndof Kroupa_MILES_chi2 Kroupa_MILES_ndof Chabrier_ELODIE_chi2 Chabrier_ELODIE_ndof Salpeter_ELODIE_chi2 Salpeter_ELODIE_ndof Kroupa_ELODIE_chi2 Kroupa_ELODIE_ndof Chabrier_STELIB_chi2 Chabrier_STELIB_ndof Salpeter_STELIB_chi2 Salpeter_STELIB_ndof Kroupa_STELIB_chi2 Kroupa_STELIB_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14.fits

java -jar ~/stilts.jar tpipe in=FireflyGalaxyEbossDR14.fits ifmt=fits \
cmd='keepcols "SPECOBJID OBJID BESTOBJID RUN2D RUN1D PLATE MJD FIBERID PLUG_RA PLUG_DEC Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SN_MEDIAN_ALL Chabrier_MILES_age_lightW Chabrier_MILES_age_lightW_up Chabrier_MILES_age_lightW_low Chabrier_MILES_metallicity_lightW Chabrier_MILES_metallicity_lightW_up Chabrier_MILES_metallicity_lightW_low Chabrier_MILES_stellar_mass Chabrier_MILES_stellar_mass_up Chabrier_MILES_stellar_mass_low Chabrier_MILES_spm_EBV Chabrier_MILES_nComponentsSSP Salpeter_MILES_age_lightW Salpeter_MILES_age_lightW_up Salpeter_MILES_age_lightW_low Salpeter_MILES_metallicity_lightW Salpeter_MILES_metallicity_lightW_up Salpeter_MILES_metallicity_lightW_low Salpeter_MILES_stellar_mass Salpeter_MILES_stellar_mass_up Salpeter_MILES_stellar_mass_low Salpeter_MILES_spm_EBV Salpeter_MILES_nComponentsSSP Kroupa_MILES_age_lightW Kroupa_MILES_age_lightW_up Kroupa_MILES_age_lightW_low Kroupa_MILES_metallicity_lightW Kroupa_MILES_metallicity_lightW_up Kroupa_MILES_metallicity_lightW_low Kroupa_MILES_stellar_mass Kroupa_MILES_stellar_mass_up Kroupa_MILES_stellar_mass_low Kroupa_MILES_spm_EBV Kroupa_MILES_nComponentsSSP Chabrier_ELODIE_age_lightW Chabrier_ELODIE_age_lightW_up Chabrier_ELODIE_age_lightW_low Chabrier_ELODIE_metallicity_lightW Chabrier_ELODIE_metallicity_lightW_up Chabrier_ELODIE_metallicity_lightW_low Chabrier_ELODIE_stellar_mass Chabrier_ELODIE_stellar_mass_up Chabrier_ELODIE_stellar_mass_low Chabrier_ELODIE_spm_EBV Chabrier_ELODIE_nComponentsSSP Salpeter_ELODIE_age_lightW Salpeter_ELODIE_age_lightW_up Salpeter_ELODIE_age_lightW_low Salpeter_ELODIE_metallicity_lightW Salpeter_ELODIE_metallicity_lightW_up Salpeter_ELODIE_metallicity_lightW_low Salpeter_ELODIE_stellar_mass Salpeter_ELODIE_stellar_mass_up Salpeter_ELODIE_stellar_mass_low Salpeter_ELODIE_spm_EBV Salpeter_ELODIE_nComponentsSSP Kroupa_ELODIE_age_lightW Kroupa_ELODIE_age_lightW_up Kroupa_ELODIE_age_lightW_low Kroupa_ELODIE_metallicity_lightW Kroupa_ELODIE_metallicity_lightW_up Kroupa_ELODIE_metallicity_lightW_low Kroupa_ELODIE_stellar_mass Kroupa_ELODIE_stellar_mass_up Kroupa_ELODIE_stellar_mass_low Kroupa_ELODIE_spm_EBV Kroupa_ELODIE_nComponentsSSP Chabrier_STELIB_age_lightW Chabrier_STELIB_age_lightW_up Chabrier_STELIB_age_lightW_low Chabrier_STELIB_metallicity_lightW Chabrier_STELIB_metallicity_lightW_up Chabrier_STELIB_metallicity_lightW_low Chabrier_STELIB_stellar_mass Chabrier_STELIB_stellar_mass_up Chabrier_STELIB_stellar_mass_low Chabrier_STELIB_spm_EBV Chabrier_STELIB_nComponentsSSP Salpeter_STELIB_age_lightW Salpeter_STELIB_age_lightW_up Salpeter_STELIB_age_lightW_low Salpeter_STELIB_metallicity_lightW Salpeter_STELIB_metallicity_lightW_up Salpeter_STELIB_metallicity_lightW_low Salpeter_STELIB_stellar_mass Salpeter_STELIB_stellar_mass_up Salpeter_STELIB_stellar_mass_low Salpeter_STELIB_spm_EBV Salpeter_STELIB_nComponentsSSP Kroupa_STELIB_age_lightW Kroupa_STELIB_age_lightW_up Kroupa_STELIB_age_lightW_low Kroupa_STELIB_metallicity_lightW Kroupa_STELIB_metallicity_lightW_up Kroupa_STELIB_metallicity_lightW_low Kroupa_STELIB_stellar_mass Kroupa_STELIB_stellar_mass_up Kroupa_STELIB_stellar_mass_low Kroupa_STELIB_spm_EBV Kroupa_STELIB_nComponentsSSP Chabrier_MILES_chi2 Chabrier_MILES_ndof Salpeter_MILES_chi2 Salpeter_MILES_ndof Kroupa_MILES_chi2 Kroupa_MILES_ndof Chabrier_ELODIE_chi2 Chabrier_ELODIE_ndof Salpeter_ELODIE_chi2 Salpeter_ELODIE_ndof Kroupa_ELODIE_chi2 Kroupa_ELODIE_ndof Chabrier_STELIB_chi2 Chabrier_STELIB_ndof Salpeter_STELIB_chi2 Salpeter_STELIB_ndof Kroupa_STELIB_chi2 Kroupa_STELIB_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
omode=out ofmt=fits out=firefly_galaxy_eboss-v5_10_0.fits

rm flyAllList

