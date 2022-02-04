#The built-in data set mammals contains data on body weight versus brain weight. Use the cor to find the Pearson and Spearman correlation coefficients. Are they similar?
cor(mammals$brain, mammals$body)
cor(rank(mammals$brain), rank(mammals$body))
#Plot the data using the plot command and see if you expect them to be similar.
plot(mammals$brain, mammals$body)
abline(lm(mammals$body~mammals$brain), col="Blue")
#You should be unsatisfied with this plot. Next, plot the logarithm (log) of each variable and see if that makes a difference.
plot(log(mammals$brain), log(mammals$body))
abline(lm(log(mammals$body)~log(mammals$brain)))