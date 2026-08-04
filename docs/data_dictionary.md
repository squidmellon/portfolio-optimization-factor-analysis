# Data dictionary

## monthly_returns_percent.csv
- `Date`: month-end date
- `CI`, `F`, `IBM`, `JNJ`, `MU`, `SHW`, `WBD`, `XOM`: monthly adjusted-price returns in percent
- `SPY`: monthly SPY return in percent
- `S&P 500`: monthly index return in percent
- `Rf`: monthly risk-free rate in percent

## factor_regression_data.csv
- `Date`: YYYYMM month identifier
- `MktRF`: market factor in percentage points
- `SMB`: size factor
- `HML`: value factor
- `Rf`: risk-free rate
- `Mom`: momentum factor
- `ExcessOP`: optimized-portfolio excess return
- `ExcessSP500`: S&P 500 excess return
- `JNJ`: Johnson & Johnson return series used in the comparison regression
