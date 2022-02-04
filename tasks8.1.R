#P(X<5) 30 zara
pbinom(q = 4 , size = 30, prob = 1/6) #teoreticha
dices <-rbinom(1000, 30, 1/6)
sum(dices<5)/length(dices) #empirichna
#Graph
numberOfSixes <- rbinom(n = 1000, size = 30 , prob = 1/6)
p <- cumsum(numberOfSixes < 5) / (1:1000)
plot(p, type = "l", col = "blue")
expected <- pbinom(4, size = 30, prob = 1/6); expected
lines(rep(expected, 1000), col = "red")
#max{x???0???N:P(X>x)???0.75}
qbinom(p = 0.75, size = 30, prob = 1/6, lower.tail = FALSE)
