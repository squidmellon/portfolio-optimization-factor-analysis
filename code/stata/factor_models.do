*******************************************************
* Portfolio Optimization & Factor Analysis
* Corrected, reproducible asset-pricing regressions
* Input: data/processed/factor_regression_data.csv
*******************************************************

clear all
set more off
version 18

* Run from repository root.
local datafile "data/processed/factor_regression_data.csv"
local outdir  "outputs/tables"

import delimited using "`datafile'", clear varnames(1)

rename mktrf MktRF
rename excessop ExcessOP
rename excesssp500 ExcessSP500
rename mom Mom
rename jnj JNJ

destring date MktRF SMB HML Rf Mom ExcessOP ExcessSP500 JNJ, replace force
assert _N == 108
misstable summarize

* Correct market specification:
* optimized portfolio excess return is the dependent variable.
regress ExcessOP ExcessSP500
estimates store Market

* Fama-French three-factor model
regress ExcessOP MktRF SMB HML
estimates store FF3

* Carhart four-factor model
regress ExcessOP MktRF SMB HML Mom
estimates store Carhart4

* Individual-stock comparison
regress JNJ MktRF SMB HML Mom
estimates store JNJ_Carhart4

* Display compact comparison
estimates table Market FF3 Carhart4 JNJ_Carhart4, ///
    b(%9.4f) se(%9.4f) stats(N r2 r2_a)

* Optional log for GitHub review
log using "`outdir'/stata_regression_log.txt", text replace
estimates table Market FF3 Carhart4 JNJ_Carhart4, ///
    b(%9.4f) se(%9.4f) stats(N r2 r2_a)
log close
