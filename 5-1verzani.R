#UsingR/emissions 
#boxplot
boxplot(emissions$CO2, horizontal = TRUE)
#find the outliner
#boxplot without the outlier
boxplot(emissions$CO2[-1], horizontal = TRUE)