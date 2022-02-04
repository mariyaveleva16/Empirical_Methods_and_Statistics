#For the data set on housing prices, homedata, investigate the relationship between old assessed value and new. 
#Use old as the predictor variable. Does the data suggest a linear relationship? 
#Are there any outliers? What may have caused these outliers?
plot(y2000 ~ y1970, data = homedata)
model <- lm(homedata$y2000 ~ homedata$y1970)
abline(model)
simple.lm(homedata$y1970, homedata$y2000, show.residuals = TRUE)
#What is the predicted new assessed value for a $75,000 house in 1970.
model$coefficients[1] + model$coefficients[2] * 75000