# Portfolio Value at Risk (VaR) Analysis — Reliance & TCS
Value at Risk (VaR) estimation for a Rs 100 crore portfolio equally invested in Reliance Industries and TCS using historical, parametric, and modified (Monte Carlo) methods. Includes daily returns analysis, risk visualization, and interpretation of losses at 99% confidence for Reliance and 95% confidence for TCS, and performed backtesting (methods includes Traffic light approach and Kupiec Test).

## Project Overview
**Inroduction:** This project calculates and interprets the **Value at Risk (VaR)** for a Rs 100 crore portfolio equally allocated to **Reliance Industries** and **TCS**. Using daily returns and multiple VaR methodologies, the analysis quantifies the potential one-day loss at a 95% and 99% confidence level and visualizes the return distribution with risk thresholds. The analysis also includes Expected Shortfall (ES) to capture tail risk beyond VaR thresholds. Also utize the regulatory approch of Backtesting, Basel Traffic Light Approach and Kupiec Test to identify wheather the 1-day VaR estimate is comfortably within the statistically accepted range for a well-callibrated model.

**Objective:** This work provides insights to help investors and risk managers assess and manage portfolio risks effectively.

## Topics Covered
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

## Data & Methodology
1. **Data Collection**  
   Historical prices (2020-01-01 to 2025-03-31) from Yahoo Finance for `RELIANCE.BO` and `TCS.BO`.
   
3. **Portfolio Setup**  
   - Equal weights: 50% Reliance, 50% TCS  
   - Portfolio value: Rs 100 crores  
   - Holding period: 1 trading day

4. **Risk Computation**  
   - Compute daily log returns
   - Build covariance matrix
   - Apply three VaR approaches for 99% confidence for Reliance and 95% confidence for TCS.
   - Perfomed Expected Shortfall and Backtesting.

5. **Visualization**  
   - Histogram of portfolio returns with density curve
   - VaR lines for Historical, Gaussian, and Modified methods

---

## Key Result & Interpretation
- **Maximum 1-Day Loss @ 99% Confidence:** for Reliance ~ **Rs 4.59 crores** and **Maximum 1-Day Loss @ 95% Confidence:** for ~ **3.39 crores**
- **Interpretation:**
  - There is a small probability (1% for Reliance and 5% for TCS) that the portfolio will lose **more than Rs 4.59 crores** in a single day under current market conditions.

---
