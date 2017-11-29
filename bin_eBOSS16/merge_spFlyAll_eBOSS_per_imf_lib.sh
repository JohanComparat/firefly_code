#!/bin/bash
#PBS -l walltime=260:00:00
#PBS -o $EBOSSDR14_DIR/spallFly.eboss.o.$PBS_JOBID
#PBS -e $EBOSSDR14_DIR/spallFly.eboss.e$PBS_JOBID
#PBS -M comparat@mpe.mpg.de

cd $EBOSSDR16_DIR/catalogs
ls $EBOSSDR16_DIR/stellarpop/*/spFlyPlate*.fits > flyAllList

java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Chabrier_MILES_age_lightW Chabrier_MILES_age_lightW_up Chabrier_MILES_age_lightW_low Chabrier_MILES_metallicity_lightW Chabrier_MILES_metallicity_lightW_up Chabrier_MILES_metallicity_lightW_low Chabrier_MILES_age_massW Chabrier_MILES_age_massW_up Chabrier_MILES_age_massW_low Chabrier_MILES_metallicity_massW Chabrier_MILES_metallicity_massW_up Chabrier_MILES_metallicity_massW_low Chabrier_MILES_stellar_mass Chabrier_MILES_stellar_mass_up Chabrier_MILES_stellar_mass_low Chabrier_MILES_spm_EBV Chabrier_MILES_nComponentsSSP Chabrier_MILES_stellar_mass_ssp_0 Chabrier_MILES_age_ssp_0 Chabrier_MILES_metal_ssp_0 Chabrier_MILES_weightMass_ssp_0 Chabrier_MILES_weightLight_ssp_0 Chabrier_MILES_stellar_mass_ssp_1 Chabrier_MILES_age_ssp_1 Chabrier_MILES_metal_ssp_1 Chabrier_MILES_weightMass_ssp_1 Chabrier_MILES_weightLight_ssp_1 Chabrier_MILES_stellar_mass_ssp_2 Chabrier_MILES_age_ssp_2 Chabrier_MILES_metal_ssp_2 Chabrier_MILES_weightMass_ssp_2 Chabrier_MILES_weightLight_ssp_2 Chabrier_MILES_stellar_mass_ssp_3 Chabrier_MILES_age_ssp_3 Chabrier_MILES_metal_ssp_3 Chabrier_MILES_weightMass_ssp_3 Chabrier_MILES_weightLight_ssp_3 Chabrier_MILES_stellar_mass_ssp_4 Chabrier_MILES_age_ssp_4 Chabrier_MILES_metal_ssp_4 Chabrier_MILES_weightMass_ssp_4 Chabrier_MILES_weightLight_ssp_4 Chabrier_MILES_stellar_mass_ssp_5 Chabrier_MILES_age_ssp_5 Chabrier_MILES_metal_ssp_5 Chabrier_MILES_weightMass_ssp_5 Chabrier_MILES_weightLight_ssp_5 Chabrier_MILES_stellar_mass_ssp_6 Chabrier_MILES_age_ssp_6 Chabrier_MILES_metal_ssp_6 Chabrier_MILES_weightMass_ssp_6 Chabrier_MILES_weightLight_ssp_6 Chabrier_MILES_stellar_mass_ssp_7 Chabrier_MILES_age_ssp_7 Chabrier_MILES_metal_ssp_7 Chabrier_MILES_weightMass_ssp_7 Chabrier_MILES_weightLight_ssp_7 Chabrier_MILES_chi2 Chabrier_MILES_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Chabrier_MILES.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Chabrier_STELIB_age_lightW Chabrier_STELIB_age_lightW_up Chabrier_STELIB_age_lightW_low Chabrier_STELIB_metallicity_lightW Chabrier_STELIB_metallicity_lightW_up Chabrier_STELIB_metallicity_lightW_low Chabrier_STELIB_age_massW Chabrier_STELIB_age_massW_up Chabrier_STELIB_age_massW_low Chabrier_STELIB_metallicity_massW Chabrier_STELIB_metallicity_massW_up Chabrier_STELIB_metallicity_massW_low Chabrier_STELIB_stellar_mass Chabrier_STELIB_stellar_mass_up Chabrier_STELIB_stellar_mass_low Chabrier_STELIB_spm_EBV Chabrier_STELIB_nComponentsSSP Chabrier_STELIB_stellar_mass_ssp_0 Chabrier_STELIB_age_ssp_0 Chabrier_STELIB_metal_ssp_0 Chabrier_STELIB_weightMass_ssp_0 Chabrier_STELIB_weightLight_ssp_0 Chabrier_STELIB_stellar_mass_ssp_1 Chabrier_STELIB_age_ssp_1 Chabrier_STELIB_metal_ssp_1 Chabrier_STELIB_weightMass_ssp_1 Chabrier_STELIB_weightLight_ssp_1 Chabrier_STELIB_stellar_mass_ssp_2 Chabrier_STELIB_age_ssp_2 Chabrier_STELIB_metal_ssp_2 Chabrier_STELIB_weightMass_ssp_2 Chabrier_STELIB_weightLight_ssp_2 Chabrier_STELIB_stellar_mass_ssp_3 Chabrier_STELIB_age_ssp_3 Chabrier_STELIB_metal_ssp_3 Chabrier_STELIB_weightMass_ssp_3 Chabrier_STELIB_weightLight_ssp_3 Chabrier_STELIB_stellar_mass_ssp_4 Chabrier_STELIB_age_ssp_4 Chabrier_STELIB_metal_ssp_4 Chabrier_STELIB_weightMass_ssp_4 Chabrier_STELIB_weightLight_ssp_4 Chabrier_STELIB_stellar_mass_ssp_5 Chabrier_STELIB_age_ssp_5 Chabrier_STELIB_metal_ssp_5 Chabrier_STELIB_weightMass_ssp_5 Chabrier_STELIB_weightLight_ssp_5 Chabrier_STELIB_stellar_mass_ssp_6 Chabrier_STELIB_age_ssp_6 Chabrier_STELIB_metal_ssp_6 Chabrier_STELIB_weightMass_ssp_6 Chabrier_STELIB_weightLight_ssp_6 Chabrier_STELIB_stellar_mass_ssp_7 Chabrier_STELIB_age_ssp_7 Chabrier_STELIB_metal_ssp_7 Chabrier_STELIB_weightMass_ssp_7 Chabrier_STELIB_weightLight_ssp_7 Chabrier_STELIB_chi2 Chabrier_STELIB_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Chabrier_STELIB.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Chabrier_ELODIE_age_lightW Chabrier_ELODIE_age_lightW_up Chabrier_ELODIE_age_lightW_low Chabrier_ELODIE_metallicity_lightW Chabrier_ELODIE_metallicity_lightW_up Chabrier_ELODIE_metallicity_lightW_low Chabrier_ELODIE_age_massW Chabrier_ELODIE_age_massW_up Chabrier_ELODIE_age_massW_low Chabrier_ELODIE_metallicity_massW Chabrier_ELODIE_metallicity_massW_up Chabrier_ELODIE_metallicity_massW_low Chabrier_ELODIE_stellar_mass Chabrier_ELODIE_stellar_mass_up Chabrier_ELODIE_stellar_mass_low Chabrier_ELODIE_spm_EBV Chabrier_ELODIE_nComponentsSSP Chabrier_ELODIE_stellar_mass_ssp_0 Chabrier_ELODIE_age_ssp_0 Chabrier_ELODIE_metal_ssp_0 Chabrier_ELODIE_weightMass_ssp_0 Chabrier_ELODIE_weightLight_ssp_0 Chabrier_ELODIE_stellar_mass_ssp_1 Chabrier_ELODIE_age_ssp_1 Chabrier_ELODIE_metal_ssp_1 Chabrier_ELODIE_weightMass_ssp_1 Chabrier_ELODIE_weightLight_ssp_1 Chabrier_ELODIE_stellar_mass_ssp_2 Chabrier_ELODIE_age_ssp_2 Chabrier_ELODIE_metal_ssp_2 Chabrier_ELODIE_weightMass_ssp_2 Chabrier_ELODIE_weightLight_ssp_2 Chabrier_ELODIE_stellar_mass_ssp_3 Chabrier_ELODIE_age_ssp_3 Chabrier_ELODIE_metal_ssp_3 Chabrier_ELODIE_weightMass_ssp_3 Chabrier_ELODIE_weightLight_ssp_3 Chabrier_ELODIE_stellar_mass_ssp_4 Chabrier_ELODIE_age_ssp_4 Chabrier_ELODIE_metal_ssp_4 Chabrier_ELODIE_weightMass_ssp_4 Chabrier_ELODIE_weightLight_ssp_4 Chabrier_ELODIE_stellar_mass_ssp_5 Chabrier_ELODIE_age_ssp_5 Chabrier_ELODIE_metal_ssp_5 Chabrier_ELODIE_weightMass_ssp_5 Chabrier_ELODIE_weightLight_ssp_5 Chabrier_ELODIE_stellar_mass_ssp_6 Chabrier_ELODIE_age_ssp_6 Chabrier_ELODIE_metal_ssp_6 Chabrier_ELODIE_weightMass_ssp_6 Chabrier_ELODIE_weightLight_ssp_6 Chabrier_ELODIE_stellar_mass_ssp_7 Chabrier_ELODIE_age_ssp_7 Chabrier_ELODIE_metal_ssp_7 Chabrier_ELODIE_weightMass_ssp_7 Chabrier_ELODIE_weightLight_ssp_7 Chabrier_ELODIE_chi2 Chabrier_ELODIE_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Chabrier_ELODIE.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Salpeter_UVMILES_age_lightW Salpeter_UVMILES_age_lightW_up Salpeter_UVMILES_age_lightW_low Salpeter_UVMILES_metallicity_lightW Salpeter_UVMILES_metallicity_lightW_up Salpeter_UVMILES_metallicity_lightW_low Salpeter_UVMILES_age_massW Salpeter_UVMILES_age_massW_up Salpeter_UVMILES_age_massW_low Salpeter_UVMILES_metallicity_massW Salpeter_UVMILES_metallicity_massW_up Salpeter_UVMILES_metallicity_massW_low Salpeter_UVMILES_stellar_mass Salpeter_UVMILES_stellar_mass_up Salpeter_UVMILES_stellar_mass_low Salpeter_UVMILES_spm_EBV Salpeter_UVMILES_nComponentsSSP Salpeter_UVMILES_stellar_mass_ssp_0 Salpeter_UVMILES_age_ssp_0 Salpeter_UVMILES_metal_ssp_0 Salpeter_UVMILES_weightMass_ssp_0 Salpeter_UVMILES_weightLight_ssp_0 Salpeter_UVMILES_stellar_mass_ssp_1 Salpeter_UVMILES_age_ssp_1 Salpeter_UVMILES_metal_ssp_1 Salpeter_UVMILES_weightMass_ssp_1 Salpeter_UVMILES_weightLight_ssp_1 Salpeter_UVMILES_stellar_mass_ssp_2 Salpeter_UVMILES_age_ssp_2 Salpeter_UVMILES_metal_ssp_2 Salpeter_UVMILES_weightMass_ssp_2 Salpeter_UVMILES_weightLight_ssp_2 Salpeter_UVMILES_stellar_mass_ssp_3 Salpeter_UVMILES_age_ssp_3 Salpeter_UVMILES_metal_ssp_3 Salpeter_UVMILES_weightMass_ssp_3 Salpeter_UVMILES_weightLight_ssp_3 Salpeter_UVMILES_stellar_mass_ssp_4 Salpeter_UVMILES_age_ssp_4 Salpeter_UVMILES_metal_ssp_4 Salpeter_UVMILES_weightMass_ssp_4 Salpeter_UVMILES_weightLight_ssp_4 Salpeter_UVMILES_stellar_mass_ssp_5 Salpeter_UVMILES_age_ssp_5 Salpeter_UVMILES_metal_ssp_5 Salpeter_UVMILES_weightMass_ssp_5 Salpeter_UVMILES_weightLight_ssp_5 Salpeter_UVMILES_stellar_mass_ssp_6 Salpeter_UVMILES_age_ssp_6 Salpeter_UVMILES_metal_ssp_6 Salpeter_UVMILES_weightMass_ssp_6 Salpeter_UVMILES_weightLight_ssp_6 Salpeter_UVMILES_stellar_mass_ssp_7 Salpeter_UVMILES_age_ssp_7 Salpeter_UVMILES_metal_ssp_7 Salpeter_UVMILES_weightMass_ssp_7 Salpeter_UVMILES_weightLight_ssp_7 Salpeter_UVMILES_chi2 Salpeter_UVMILES_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Salpeter_MILES.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Salpeter_STELIB_age_lightW Salpeter_STELIB_age_lightW_up Salpeter_STELIB_age_lightW_low Salpeter_STELIB_metallicity_lightW Salpeter_STELIB_metallicity_lightW_up Salpeter_STELIB_metallicity_lightW_low Salpeter_STELIB_age_massW Salpeter_STELIB_age_massW_up Salpeter_STELIB_age_massW_low Salpeter_STELIB_metallicity_massW Salpeter_STELIB_metallicity_massW_up Salpeter_STELIB_metallicity_massW_low Salpeter_STELIB_stellar_mass Salpeter_STELIB_stellar_mass_up Salpeter_STELIB_stellar_mass_low Salpeter_STELIB_spm_EBV Salpeter_STELIB_nComponentsSSP Salpeter_STELIB_stellar_mass_ssp_0 Salpeter_STELIB_age_ssp_0 Salpeter_STELIB_metal_ssp_0 Salpeter_STELIB_weightMass_ssp_0 Salpeter_STELIB_weightLight_ssp_0 Salpeter_STELIB_stellar_mass_ssp_1 Salpeter_STELIB_age_ssp_1 Salpeter_STELIB_metal_ssp_1 Salpeter_STELIB_weightMass_ssp_1 Salpeter_STELIB_weightLight_ssp_1 Salpeter_STELIB_stellar_mass_ssp_2 Salpeter_STELIB_age_ssp_2 Salpeter_STELIB_metal_ssp_2 Salpeter_STELIB_weightMass_ssp_2 Salpeter_STELIB_weightLight_ssp_2 Salpeter_STELIB_stellar_mass_ssp_3 Salpeter_STELIB_age_ssp_3 Salpeter_STELIB_metal_ssp_3 Salpeter_STELIB_weightMass_ssp_3 Salpeter_STELIB_weightLight_ssp_3 Salpeter_STELIB_stellar_mass_ssp_4 Salpeter_STELIB_age_ssp_4 Salpeter_STELIB_metal_ssp_4 Salpeter_STELIB_weightMass_ssp_4 Salpeter_STELIB_weightLight_ssp_4 Salpeter_STELIB_stellar_mass_ssp_5 Salpeter_STELIB_age_ssp_5 Salpeter_STELIB_metal_ssp_5 Salpeter_STELIB_weightMass_ssp_5 Salpeter_STELIB_weightLight_ssp_5 Salpeter_STELIB_stellar_mass_ssp_6 Salpeter_STELIB_age_ssp_6 Salpeter_STELIB_metal_ssp_6 Salpeter_STELIB_weightMass_ssp_6 Salpeter_STELIB_weightLight_ssp_6 Salpeter_STELIB_stellar_mass_ssp_7 Salpeter_STELIB_age_ssp_7 Salpeter_STELIB_metal_ssp_7 Salpeter_STELIB_weightMass_ssp_7 Salpeter_STELIB_weightLight_ssp_7 Salpeter_STELIB_chi2 Salpeter_STELIB_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Salpeter_STELIB.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Salpeter_ELODIE_age_lightW Salpeter_ELODIE_age_lightW_up Salpeter_ELODIE_age_lightW_low Salpeter_ELODIE_metallicity_lightW Salpeter_ELODIE_metallicity_lightW_up Salpeter_ELODIE_metallicity_lightW_low Salpeter_ELODIE_age_massW Salpeter_ELODIE_age_massW_up Salpeter_ELODIE_age_massW_low Salpeter_ELODIE_metallicity_massW Salpeter_ELODIE_metallicity_massW_up Salpeter_ELODIE_metallicity_massW_low Salpeter_ELODIE_stellar_mass Salpeter_ELODIE_stellar_mass_up Salpeter_ELODIE_stellar_mass_low Salpeter_ELODIE_spm_EBV Salpeter_ELODIE_nComponentsSSP Salpeter_ELODIE_stellar_mass_ssp_0 Salpeter_ELODIE_age_ssp_0 Salpeter_ELODIE_metal_ssp_0 Salpeter_ELODIE_weightMass_ssp_0 Salpeter_ELODIE_weightLight_ssp_0 Salpeter_ELODIE_stellar_mass_ssp_1 Salpeter_ELODIE_age_ssp_1 Salpeter_ELODIE_metal_ssp_1 Salpeter_ELODIE_weightMass_ssp_1 Salpeter_ELODIE_weightLight_ssp_1 Salpeter_ELODIE_stellar_mass_ssp_2 Salpeter_ELODIE_age_ssp_2 Salpeter_ELODIE_metal_ssp_2 Salpeter_ELODIE_weightMass_ssp_2 Salpeter_ELODIE_weightLight_ssp_2 Salpeter_ELODIE_stellar_mass_ssp_3 Salpeter_ELODIE_age_ssp_3 Salpeter_ELODIE_metal_ssp_3 Salpeter_ELODIE_weightMass_ssp_3 Salpeter_ELODIE_weightLight_ssp_3 Salpeter_ELODIE_stellar_mass_ssp_4 Salpeter_ELODIE_age_ssp_4 Salpeter_ELODIE_metal_ssp_4 Salpeter_ELODIE_weightMass_ssp_4 Salpeter_ELODIE_weightLight_ssp_4 Salpeter_ELODIE_stellar_mass_ssp_5 Salpeter_ELODIE_age_ssp_5 Salpeter_ELODIE_metal_ssp_5 Salpeter_ELODIE_weightMass_ssp_5 Salpeter_ELODIE_weightLight_ssp_5 Salpeter_ELODIE_stellar_mass_ssp_6 Salpeter_ELODIE_age_ssp_6 Salpeter_ELODIE_metal_ssp_6 Salpeter_ELODIE_weightMass_ssp_6 Salpeter_ELODIE_weightLight_ssp_6 Salpeter_ELODIE_stellar_mass_ssp_7 Salpeter_ELODIE_age_ssp_7 Salpeter_ELODIE_metal_ssp_7 Salpeter_ELODIE_weightMass_ssp_7 Salpeter_ELODIE_weightLight_ssp_7 Salpeter_ELODIE_chi2 Salpeter_ELODIE_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Salpeter_ELODIE.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Kroupa_MILES_age_lightW Kroupa_MILES_age_lightW_up Kroupa_MILES_age_lightW_low Kroupa_MILES_metallicity_lightW Kroupa_MILES_metallicity_lightW_up Kroupa_MILES_metallicity_lightW_low Kroupa_MILES_age_massW Kroupa_MILES_age_massW_up Kroupa_MILES_age_massW_low Kroupa_MILES_metallicity_massW Kroupa_MILES_metallicity_massW_up Kroupa_MILES_metallicity_massW_low Kroupa_MILES_stellar_mass Kroupa_MILES_stellar_mass_up Kroupa_MILES_stellar_mass_low Kroupa_MILES_spm_EBV Kroupa_MILES_nComponentsSSP Kroupa_MILES_stellar_mass_ssp_0 Kroupa_MILES_age_ssp_0 Kroupa_MILES_metal_ssp_0 Kroupa_MILES_weightMass_ssp_0 Kroupa_MILES_weightLight_ssp_0 Kroupa_MILES_stellar_mass_ssp_1 Kroupa_MILES_age_ssp_1 Kroupa_MILES_metal_ssp_1 Kroupa_MILES_weightMass_ssp_1 Kroupa_MILES_weightLight_ssp_1 Kroupa_MILES_stellar_mass_ssp_2 Kroupa_MILES_age_ssp_2 Kroupa_MILES_metal_ssp_2 Kroupa_MILES_weightMass_ssp_2 Kroupa_MILES_weightLight_ssp_2 Kroupa_MILES_stellar_mass_ssp_3 Kroupa_MILES_age_ssp_3 Kroupa_MILES_metal_ssp_3 Kroupa_MILES_weightMass_ssp_3 Kroupa_MILES_weightLight_ssp_3 Kroupa_MILES_stellar_mass_ssp_4 Kroupa_MILES_age_ssp_4 Kroupa_MILES_metal_ssp_4 Kroupa_MILES_weightMass_ssp_4 Kroupa_MILES_weightLight_ssp_4 Kroupa_MILES_stellar_mass_ssp_5 Kroupa_MILES_age_ssp_5 Kroupa_MILES_metal_ssp_5 Kroupa_MILES_weightMass_ssp_5 Kroupa_MILES_weightLight_ssp_5 Kroupa_MILES_stellar_mass_ssp_6 Kroupa_MILES_age_ssp_6 Kroupa_MILES_metal_ssp_6 Kroupa_MILES_weightMass_ssp_6 Kroupa_MILES_weightLight_ssp_6 Kroupa_MILES_stellar_mass_ssp_7 Kroupa_MILES_age_ssp_7 Kroupa_MILES_metal_ssp_7 Kroupa_MILES_weightMass_ssp_7 Kroupa_MILES_weightLight_ssp_7 Kroupa_MILES_chi2 Kroupa_MILES_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Kroupa_MILES.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Kroupa_STELIB_age_lightW Kroupa_STELIB_age_lightW_up Kroupa_STELIB_age_lightW_low Kroupa_STELIB_metallicity_lightW Kroupa_STELIB_metallicity_lightW_up Kroupa_STELIB_metallicity_lightW_low Kroupa_STELIB_age_massW Kroupa_STELIB_age_massW_up Kroupa_STELIB_age_massW_low Kroupa_STELIB_metallicity_massW Kroupa_STELIB_metallicity_massW_up Kroupa_STELIB_metallicity_massW_low Kroupa_STELIB_stellar_mass Kroupa_STELIB_stellar_mass_up Kroupa_STELIB_stellar_mass_low Kroupa_STELIB_spm_EBV Kroupa_STELIB_nComponentsSSP Kroupa_STELIB_stellar_mass_ssp_0 Kroupa_STELIB_age_ssp_0 Kroupa_STELIB_metal_ssp_0 Kroupa_STELIB_weightMass_ssp_0 Kroupa_STELIB_weightLight_ssp_0 Kroupa_STELIB_stellar_mass_ssp_1 Kroupa_STELIB_age_ssp_1 Kroupa_STELIB_metal_ssp_1 Kroupa_STELIB_weightMass_ssp_1 Kroupa_STELIB_weightLight_ssp_1 Kroupa_STELIB_stellar_mass_ssp_2 Kroupa_STELIB_age_ssp_2 Kroupa_STELIB_metal_ssp_2 Kroupa_STELIB_weightMass_ssp_2 Kroupa_STELIB_weightLight_ssp_2 Kroupa_STELIB_stellar_mass_ssp_3 Kroupa_STELIB_age_ssp_3 Kroupa_STELIB_metal_ssp_3 Kroupa_STELIB_weightMass_ssp_3 Kroupa_STELIB_weightLight_ssp_3 Kroupa_STELIB_stellar_mass_ssp_4 Kroupa_STELIB_age_ssp_4 Kroupa_STELIB_metal_ssp_4 Kroupa_STELIB_weightMass_ssp_4 Kroupa_STELIB_weightLight_ssp_4 Kroupa_STELIB_stellar_mass_ssp_5 Kroupa_STELIB_age_ssp_5 Kroupa_STELIB_metal_ssp_5 Kroupa_STELIB_weightMass_ssp_5 Kroupa_STELIB_weightLight_ssp_5 Kroupa_STELIB_stellar_mass_ssp_6 Kroupa_STELIB_age_ssp_6 Kroupa_STELIB_metal_ssp_6 Kroupa_STELIB_weightMass_ssp_6 Kroupa_STELIB_weightLight_ssp_6 Kroupa_STELIB_stellar_mass_ssp_7 Kroupa_STELIB_age_ssp_7 Kroupa_STELIB_metal_ssp_7 Kroupa_STELIB_weightMass_ssp_7 Kroupa_STELIB_weightLight_ssp_7 Kroupa_STELIB_chi2 Kroupa_STELIB_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Kroupa_STELIB.fits


java -jar ~/stilts.jar tcat in=@flyAllList ifmt=fits \
icmd='keepcols "SURVEY INSTRUMENT CHUNK PROGRAMNAME PLATERUN PLATEQUALITY PLATESN2 DEREDSN2 LAMBDA_EFF BLUEFIBER ZOFFSET SNTURNOFF NTURNOFF SPECPRIMARY SPECSDSS SPECLEGACY SPECSEGUE SPECSEGUE1 SPECSEGUE2 SPECBOSS BOSS_SPECOBJ_ID SPECOBJID FLUXOBJID BESTOBJID TARGETOBJID PLATEID NSPECOBS FIRSTRELEASE RUN2D RUN1D DESIGNID CX CY CZ XFOCAL YFOCAL SOURCETYPE TARGETTYPE THING_ID_TARGETING THING_ID PRIMTARGET SECTARGET LEGACY_TARGET1 LEGACY_TARGET2 SPECIAL_TARGET1 SPECIAL_TARGET2 SEGUE1_TARGET1 SEGUE1_TARGET2 SEGUE2_TARGET1 SEGUE2_TARGET2 MARVELS_TARGET1 MARVELS_TARGET2 BOSS_TARGET1 BOSS_TARGET2 EBOSS_TARGET0 EBOSS_TARGET1 EBOSS_TARGET2 EBOSS_TARGET_ID ANCILLARY_TARGET1 ANCILLARY_TARGET2 SPECTROGRAPHID PLATE TILE MJD FIBERID OBJID PLUG_RA PLUG_DEC CLASS SUBCLASS Z Z_ERR RCHI2 DOF RCHI2DIFF TFILE TCOLUMN NPOLY THETA VDISP VDISP_ERR VDISPZ VDISPZ_ERR VDISPCHI2 VDISPNPIX VDISPDOF WAVEMIN WAVEMAX WCOVERAGE ZWARNING SN_MEDIAN_ALL SN_MEDIAN CHI68P FRACNSIGMA FRACNSIGHI FRACNSIGLO SPECTROFLUX SPECTROFLUX_IVAR SPECTROSYNFLUX SPECTROSYNFLUX_IVAR SPECTROSKYFLUX ANYANDMASK ANYORMASK SPEC1_G SPEC1_R SPEC1_I SPEC2_G SPEC2_R SPEC2_I ELODIE_FILENAME ELODIE_OBJECT ELODIE_SPTYPE ELODIE_BV ELODIE_TEFF ELODIE_LOGG ELODIE_FEH ELODIE_Z ELODIE_Z_ERR ELODIE_Z_MODELERR ELODIE_RCHI2 ELODIE_DOF Z_NOQSO Z_ERR_NOQSO ZWARNING_NOQSO CLASS_NOQSO SUBCLASS_NOQSO RCHI2DIFF_NOQSO Z_PERSON CLASS_PERSON Z_CONF_PERSON COMMENTS_PERSON CALIBFLUX CALIBFLUX_IVAR Kroupa_ELODIE_age_lightW Kroupa_ELODIE_age_lightW_up Kroupa_ELODIE_age_lightW_low Kroupa_ELODIE_metallicity_lightW Kroupa_ELODIE_metallicity_lightW_up Kroupa_ELODIE_metallicity_lightW_low Kroupa_ELODIE_age_massW Kroupa_ELODIE_age_massW_up Kroupa_ELODIE_age_massW_low Kroupa_ELODIE_metallicity_massW Kroupa_ELODIE_metallicity_massW_up Kroupa_ELODIE_metallicity_massW_low Kroupa_ELODIE_stellar_mass Kroupa_ELODIE_stellar_mass_up Kroupa_ELODIE_stellar_mass_low Kroupa_ELODIE_spm_EBV Kroupa_ELODIE_nComponentsSSP Kroupa_ELODIE_stellar_mass_ssp_0 Kroupa_ELODIE_age_ssp_0 Kroupa_ELODIE_metal_ssp_0 Kroupa_ELODIE_weightMass_ssp_0 Kroupa_ELODIE_weightLight_ssp_0 Kroupa_ELODIE_stellar_mass_ssp_1 Kroupa_ELODIE_age_ssp_1 Kroupa_ELODIE_metal_ssp_1 Kroupa_ELODIE_weightMass_ssp_1 Kroupa_ELODIE_weightLight_ssp_1 Kroupa_ELODIE_stellar_mass_ssp_2 Kroupa_ELODIE_age_ssp_2 Kroupa_ELODIE_metal_ssp_2 Kroupa_ELODIE_weightMass_ssp_2 Kroupa_ELODIE_weightLight_ssp_2 Kroupa_ELODIE_stellar_mass_ssp_3 Kroupa_ELODIE_age_ssp_3 Kroupa_ELODIE_metal_ssp_3 Kroupa_ELODIE_weightMass_ssp_3 Kroupa_ELODIE_weightLight_ssp_3 Kroupa_ELODIE_stellar_mass_ssp_4 Kroupa_ELODIE_age_ssp_4 Kroupa_ELODIE_metal_ssp_4 Kroupa_ELODIE_weightMass_ssp_4 Kroupa_ELODIE_weightLight_ssp_4 Kroupa_ELODIE_stellar_mass_ssp_5 Kroupa_ELODIE_age_ssp_5 Kroupa_ELODIE_metal_ssp_5 Kroupa_ELODIE_weightMass_ssp_5 Kroupa_ELODIE_weightLight_ssp_5 Kroupa_ELODIE_stellar_mass_ssp_6 Kroupa_ELODIE_age_ssp_6 Kroupa_ELODIE_metal_ssp_6 Kroupa_ELODIE_weightMass_ssp_6 Kroupa_ELODIE_weightLight_ssp_6 Kroupa_ELODIE_stellar_mass_ssp_7 Kroupa_ELODIE_age_ssp_7 Kroupa_ELODIE_metal_ssp_7 Kroupa_ELODIE_weightMass_ssp_7 Kroupa_ELODIE_weightLight_ssp_7 Kroupa_ELODIE_chi2 Kroupa_ELODIE_ndof abs_mag_u_spec abs_mag_g_spec abs_mag_r_spec abs_mag_i_spec abs_mag_u_noise abs_mag_g_noise abs_mag_r_noise abs_mag_i_noise "' \
ocmd='sort plate' \
omode=out ofmt=fits out=FireflyGalaxyEbossDR14_Kroupa_ELODIE.fits

