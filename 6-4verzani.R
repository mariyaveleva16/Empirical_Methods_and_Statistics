#Toss a fair coin 50 times (using R). How many heads do you have?
coin <-sample(c("Head", "Tail"), size=50, replace = TRUE)
sum(coin=="Head")
#Bi(50, 0.5)
rbinom(1, 50, 0.5)