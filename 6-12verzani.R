#Use R to pick 5 cards from a deck of 52.
cards <- paste(rep(c("Ace",2:10,"Jack","Queen","King"), 4), c("Heart","Diamond","Spade","Club"))
drawn <-sample(cards, size=5)
#Did you get a pair or better? We say that a pair of cards is two cards with one and the same number(letter).
y <- sub(pattern = " .*$",replacement = "" , drawn); y
length(y)-length(unique(y))
#Repeat until you do. How long did it take?
z <- function(){
r <- 0
cards <- paste(rep(c("Ace",2:10,"Jack","Queen","King"), 4), c("Heart","Diamond","Spade","Club"))
  repeat {
    x <- sample(x = cards, size = 5)
    y <- sub(pattern = " .*$", replacement = "" , x)
    if (length(y) - length(unique(y)) != 0){
        break
    } 
    else {
        r <- r + 1
    }
  }
r
}
z()
#Repeat the trail 1000 times, plot the histogram and estimate the probability to have the first pair or better on the second trail.
repe <- replicate(1000, z())
hist(repe, probability = TRUE)
sum(repe == 1) / length(repe)
#Generate the number of the trails before the first pair or better by using the geometric distribution Geom(0.4929).
rgeom(1, prob = 0.4929)
#Compute the probability to have the first pair or better on the second trail
dgeom(1, prob = 0.4929)
#Generate the number of the trails before the first pair or better by using the geometric distribution Geom(0.5840).
rgeom(1, prob = 0.5840)
#Compute the probability to have the first pair or better on the second trail
dgeom(1, prob = 0.5840)