library(changepoint)
library(EnvCpt)
set.seed(2118) # As it is my favourite number

# Now, I will set the amount of observations we want to generate
# for each fo the 2 regimes

n1 <- 118
n2 <- 118
n <- n1 + n2

# next I will create just a random noise variable and an empty vector of the
#total size n
e <- rnorm(n)

y <- numeric(n)

#generating the first regime. Current value depends on the previous yet not strongly
# (only 0.2 of the previous value carries into the next one)

for (t in 2:n1) {
  y[t] <- 0.2 * y[t-1]+e[t]
}

# Now, I will create the first point after the break (n1)
# meaning a second AR with stronger dependence post n1.
# This part is relatively simple
y[n1 + 1] <- 0.85 * y[n1] + e[n1 + 1]


# generating all other points after the break generated above (full second stronger dependence AR)
for (t in (n1 + 2):n) {
  y[t] <- 0.85*y[t-1] + e[t]
}



# Time to convert a simulated vector into time-series object -> Then plot it with the break point
ts_y <-ts(y)

plot(ts_y, main = "Simulated series with changing AR structure (change occurs at point 118)")
abline(v = n1, lty = 2)
