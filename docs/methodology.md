# Methodology

## Data
Monthly adjusted closing prices from January 2015 through December 2023 were used for eight equities, SPY, and the S&P 500 index. Adjusted prices incorporate dividends and corporate actions.

## Return calculations
Monthly holding-period return was calculated as the percentage change in adjusted closing price. The factor-regression data are expressed in percentage points.

## Descriptive analysis
The portfolio version reports mean monthly return, sample monthly standard deviation, skewness, excess kurtosis, and Jarque-Bera normality-test p-values. 

## Portfolio optimization
A sample covariance matrix was estimated from monthly returns. Excel Solver was used to:
- minimize variance for the global minimum-variance portfolio;
- maximize the Sharpe ratio for the optimal risky portfolio;
- minimize variance at specified target risk premiums to map the frontier.

Weights were constrained to sum to one. Negative weights were permitted.

## Annualization
Monthly volatility was annualized by multiplying by the square root of 12. Annualized returns in the final workbook use the original project’s compounded-return calculations. Sharpe ratios use consistently annualized returns, volatility, and risk-free rates.

## Factor regressions
The corrected market model is:

`ExcessOP_t = alpha + beta * ExcessSP500_t + error_t`

The multifactor models are:

`ExcessOP_t = alpha + beta_M MktRF_t + beta_S SMB_t + beta_H HML_t + error_t`

`ExcessOP_t = alpha + beta_M MktRF_t + beta_S SMB_t + beta_H HML_t + beta_Mom Mom_t + error_t`

A Carhart model was also estimated for JNJ as an individual-stock comparison.
