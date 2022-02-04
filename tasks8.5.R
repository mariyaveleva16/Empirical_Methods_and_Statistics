#n numbers from 1 to 2n. 5 win 2n-5 not bez povroreniq
#P(X=2) for n=10, 100, 1000, 10000
#X HG(5, 2n-5, n)
n<-c(10, 100, 1000, 10000)
hyper(2,5,2*n-5, n)