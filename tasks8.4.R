#n numbers from 1 to 2n. 5 win 2n-5 not
#P(X=2) for n=10, 100, 1000, 10000
#X Bi(n, 5/2n)
n<-c(10, 100, 1000, 10000)
dbinom(2, n, 5/(2*n))