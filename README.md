# portfolio-var-analysis-reliance-tcs
Value at Risk (VaR) estimation for a Rs 100 crore portfolio equally invested in Reliance Industries and TCS using historical, parametric, and modified (Monte Carlo) methods in R. Includes daily returns analysis, risk visualization, and interpretation of losses at 95% confidence.

# 📉 Portfolio Value at Risk (VaR) Analysis — Reliance & TCS

## 📝 Project Overview
This project calculates and interprets the **Value at Risk (VaR)** for a Rs 100 crore portfolio equally allocated to **Reliance Industries** and **TCS**. Using daily returns and multiple VaR methodologies, the analysis quantifies the potential one-day loss at a 95% confidence level and visualizes the return distribution with risk thresholds.

---

## 📚 Topics Covered
- Portfolio construction with two Indian large-cap stocks (Reliance & TCS)
- Daily log return calculation
- Portfolio variance-covariance estimation
- VaR computation methods:
  - Historical Simulation
  - Parametric (Gaussian)
  - Modified (Cornish-Fisher / Monte Carlo)
- Visualization of return distribution and VaR lines
- Risk interpretation for portfolio value

---

## ⚙️ Methodology
1. **Data Collection**  
   Historical prices (2020-01-01 to 2025-03-31) from Yahoo Finance for `RELIANCE.BO` and `TCS.BO`.

2. **Portfolio Setup**  
   - Equal weights: 50% Reliance, 50% TCS  
   - Portfolio value: Rs 100 crores  
   - Holding period: 1 trading day

3. **Risk Computation**  
   - Compute daily log returns
   - Build covariance matrix
   - Apply three VaR approaches for 95% confidence

4. **Visualization**  
   - Histogram of portfolio returns with density curve
   - VaR lines for Historical, Gaussian, and Modified methods

---

## 📊 Key Result & Interpretation
- **Maximum 1-Day Loss @ 95% Confidence:** ~ **Rs 2.48 crores**
- **Interpretation:**
  - There is a 5% probability that the portfolio will lose **more than Rs 2.48 crores** in a single day under current market conditions.

---

## 📦 Requirements
Install required R packages:
install.packages(c("quantmod", "PerformanceAnalytics", "tidyverse", "tseries"))


---

## ▶️ Usage
1. Clone/download this repository.
2. Open `Case-study-on-VaR-Portfolio.R` in R or RStudio.
3. Run the script — outputs include:
   - VaR values in Rs for each method
   - Histogram with VaR thresholds
   - Interpretation statements in console

---

## 📂 Repository Structure


---

## 📖 References
- Jorion, P. (2007), *Value at Risk: The New Benchmark for Managing Financial Risk*
- Yahoo Finance historical data
- R packages: `quantmod`, `PerformanceAnalytics`, `tidyverse`, `tseries`

---

*This project is for educational purposes and demonstrates portfolio risk measurement techniques for equity investments using R.*

