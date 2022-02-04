times<-c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
#Find your shortest, longest and average commute times.
min(times)
max(times)
mean(times)
#Oops, the 24 was a mistake. It should have been 18.
mistaken <- which(times==24)
times[mistaken] <-18
mean(times)
#How many times was your commute 20 minutes or more?
sum(times>=20)
#What percent of your commutes take less than 17 minutes?
sum(times<17)/length(times)*100