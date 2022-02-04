#Roll a "die" 100 times. How many 6's did you see?
die <-sample(1:6, size=100, replace = TRUE)
sum(die==6)
#Bi(100, 1/6)
rbinom(1, 100, 1/6)