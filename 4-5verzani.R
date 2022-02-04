#For the florida data set of Bush vs. Buchanan, there is another obvious outlier that indicated Buchanan received fewer votes than expected. If you remove both the outliers, what is the predicted value for the number of votes Buchanan would get in Miami-Dade county based on the number of Bush votes?
plot(florida$BUCHANAN ~ florida$BUSH)
abline(lm(florida$BUCHANAN ~ florida$BUSH))
identify(florida$BUSH, florida$BUCHANAN)
florida[13,]
florida.cleaned <- florida[-c(13, 50), ]
linearmodel <- simple.lm(florida.cleaned$BUSH, florida.cleaned$BUCHANAN)
summary(linearmodel)
simple.lm(florida.cleaned$BUSH, florida.cleaned$BUCHANAN, show.residuals = TRUE)
linearmodel$coefficients[1] + linearmodel$coefficients[2] * florida[13,"BUSH"]