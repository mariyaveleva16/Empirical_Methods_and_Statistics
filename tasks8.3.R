#X HG(7,6,8)
simulationsBalls <-rhyper(1000, m=7, n=6, k=8)
#granici
range(simulationsBalls)
#EX DX
mean(simulationsBalls)
var(simulationsBalls)
#graphs
hist(simulationsBalls, breaks = max(0, 8-6):min(8, 7), probability = TRUE, ylim = c(0, 0.45))
points(2:7, dhyper(2:7, 7, 6, 8), type = "h", lwd=3, col="Blue")
points(2:7, dhyper(2:7, 7, 6, 8), type = "p", lwd=3, col="Blue")