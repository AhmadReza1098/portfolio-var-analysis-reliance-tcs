# ---
# `Case Studies on VaR`
# ---

###################################################
# Installing and Loading required Libraries
###################################################

install.packages(c("quantmod", "PerformanceAnalytics", "tidyverse", "tseries"))
library(quantmod)
library(PerformanceAnalytics)
library(tidyverse)
library(tseries)

###################################################
# Collecting Historical data
###################################################

getSymbols(c("RELIANCE.BO","TCS.BO"), from = "2020-01-01", to = "2025-03-31", src = "yahoo")

###################################################
# Caclculating daily returns
###################################################

reliance_returns <- dailyReturn(Cl(RELIANCE.BO), type = "log")
tcs_returns <- dailyReturn(Cl(TCS.BO), type = "log")

# Sumamry of returns
summary(reliance_returns)
summary(tcs_returns)

###################################################
# Combine returns into data frame and making portfolio
###################################################

portfolio_returns <- na.omit(merge(reliance_returns, tcs_returns))
colnames(portfolio_returns) <- c("Reliance", "TCS")

# Define Portfolio weights
weights <- c(0.5, 0.5)  # 50% in each stock

# Compute Portfolio returns and covariance matrix
portfolio_daily_returns <- rowSums(as.matrix(portfolio_returns) %*% diag(weights))
cov_matrix <- cov(portfolio_returns)

# portfolio mean and sd 
portfolio_mean <- mean(portfolio_daily_returns)
porfolio_sd <- sqrt(t(weights) %*% cov_matrix %*% weights)

# Portfolio value in crores
portfolio_value <- 100 * 1e7  # Rs100 crores

# Holding period (one day)
holding_period <- 1


###################################################
# Performance VaR analysis
###################################################
# Historical VaR
historical_var <- VaR(portfolio_returns, p = 0.95, method = "historical")
historical_loss <- abs(historical_var) * portfolio_value * sqrt(holding_period)
cat("Historical VaR for one day (Rs):", historical_loss, "\n")

# Parametric VaR (Gaussian)
gaussian_var <- VaR(portfolio_returns, p = 0.95, method = "gaussian")
gaussian_loss <- abs(gaussian_var) * portfolio_value * sqrt(holding_period)
cat("Parametric (Gaussian) VaR for one day (Rs):", gaussian_loss, "\n")

#Monte Carlo VaR
monte_carlo_var <- VaR(portfolio_returns, p = 0.95, method = "modified", portfolio_value = portfolio_value)
monte_carlo_loss <- abs(monte_carlo_var) * portfolio_value * sqrt(holding_period)
cat("Monte Carlo (Modified) VaR for one day (Rs):", monte_carlo_loss, "\n")

###################################################
# Visualization
###################################################

chart.Histogram(portfolio_daily_returns, main = "Portfolio VaR Analysis",
                breaks = 50, methods = c("add.density", "add.normal"))
abline(v = historical_var, col = "red", lwd = 2, lty = 2)
abline(v = gaussian_var, col = "blue", lwd = 2, lty = 2)
abline(v = monte_carlo_var, col = "green", lwd = 2, lty = 2)
legend("topright", legend = c("Historical VaR", "Gaussian VaR", "Monte Carlo VaR"),
       col = c("red", "blue", "green"), lty = 2, lwd = 2)

# ------ Interpretation ------
# - the maximum loss with 95% confidence density one day for the portfolio value of Rs 100 crores is about Rs2.48 crores
# - OR
# - there is 5% chance that the loss of the portfolio value can exceeds than Rs2.48 crores over one day for Rs 100 crores 