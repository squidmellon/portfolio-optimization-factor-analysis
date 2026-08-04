# Portfolio Optimization & Factor Analysis

## Overview

This project applies mean-variance optimization to eight U.S. equities using monthly adjusted-price data from January 2015 through December 2023. Excel Solver was used to construct a global minimum-variance portfolio, a maximum-Sharpe portfolio, and a ten-point minimum-variance frontier. The optimized portfolio was then evaluated using a market regression, the Fama-French three-factor model, and the Carhart four-factor model in Stata.

## Headline results

- The maximum-Sharpe portfolio achieved an **in-sample annualized Sharpe ratio of 0.925**, compared with **0.900 for SPY**.
- The portfolio's annualized return was approximately **22.4%**, with annualized volatility of **22.8%**.
- The global minimum-variance portfolio had an annualized return of approximately **10.1%**, volatility of **15.2%**, and Sharpe ratio of **0.581**.
- The Fama-French three-factor and Carhart four-factor models explained only approximately **2%-3%** of the optimized portfolio's monthly return variation.
- The optimized portfolio required concentrated positions and short exposures, limiting the economic significance of its small Sharpe advantage over SPY.

## Repository structure

```text
portfolio-optimization-factor-analysis/
├── README.md
├── analysis/
│   ├── portfolio_optimization_factor_analysis.xlsx
│   └── original_final_workbook.xlsx
├── code/stata/
│   └── factor_models.do
├── data/
│   ├── raw/
│   └── processed/
├── docs/
├── outputs/
│   ├── figures/
│   └── tables/
└── report/
    ├── project_summary.pdf
    ├── corrected_project_report.pdf
    └── original_group_report.pdf
```

## Methodology

The eight-stock universe contains Cigna, Ford, IBM, Johnson & Johnson, Micron Technology, Sherwin-Williams, Warner Bros. Discovery, and Exxon Mobil. Monthly adjusted closing prices were converted to holding-period returns. A sample covariance matrix was used in Excel Solver.

- **Global minimum-variance portfolio:** minimized portfolio variance subject to weights summing to one.
- **Maximum-Sharpe portfolio:** maximized the monthly risk-premium-to-volatility ratio, with short sales permitted.
- **Efficient frontier:** minimized volatility at a sequence of target monthly risk premiums.
- **Benchmarking:** annualized return, volatility, and Sharpe ratios were compared with SPY and the S&P 500.
- **Factor analysis:** market, Fama-French three-factor, and Carhart four-factor regressions were estimated on 108 monthly observations.

## Key limitations

The analysis is entirely in-sample. Expected returns, covariances, weights, and performance are estimated over the same period. Results do not account for transaction costs, taxes, short-borrow fees, or implementation constraints. Mean-variance portfolios are sensitive to estimation error, and the maximum-Sharpe portfolio contains substantial short and concentrated positions.
