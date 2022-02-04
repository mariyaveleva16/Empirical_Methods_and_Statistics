#Select 6 numbers from a lottery containing 49 balls. 
toto <- sample(1:49, size=6, replace = FALSE)
#What is the largest number? 
max(toto)
#What is the smallest?
min(toto)
#How many even numbers do you have? Estimate the probability to have an even number.
sum(toto %% 2 ==0)
sum(toto %% 2 ==0)/length(toto)
rhyper(1, 24, 25, 6)
dhyper(2, 24, 25, 6)