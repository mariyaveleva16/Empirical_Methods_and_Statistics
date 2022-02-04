#14.1 The homeprice data set contains information about homes that are sold in a town of New Jersey in the year 2001. We want to figure out what are the appropriate prices in 1000$ (denoted by sale) for homes.
 head(homeprice)
 attach(homeprice)
 modelPriceBathroom <- lm(sale ~ half)
 plot(half, sale)
 abline(lm(sale ~ half))
 summary(modelPriceBathroom)
 #The model is
#sale=228.27+69.08 half+ε
#One more half bathroom increases the price with 69 080$. In order to compute the 95% confidence interval we use our function
myCI <- function(b, SE, t) {
   b + c(-1,1) * SE * t
}
#In this case first we have to compute
e <- resid(modelPriceBathroom)
n <- length(e)
beta1hat <- modelPriceBathroom$coefficients[2]; beta1hat half
SSE <- sum(e^2)
MSE <- SSE / (n-2)
Seps <- sqrt(MSE)
SEbeta1 <- Seps / sqrt(sum((full - mean(full))^2)); SEbeta1
alpha <- 0.05
t <- qt(1 - alpha/2, n - 2, lower.tail = TRUE)
myCI(beta1hat, SEbeta1, t)
