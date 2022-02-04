#mean and sd of height of students in mass/survey
mean(survey$Height, na.rm = TRUE)
sd(survey$Height, na.rm = TRUE)
#Separate for male and female
mean(survey[survey$Sex=="Male",]$Height, na.rm=TRUE)
mean(survey[survey$Sex=="Female",]$Height, na.rm=TRUE)
sd(survey[survey$Sex=="Male",]$Height, na.rm=TRUE)
sd(survey[survey$Sex=="Female",]$Height, na.rm=TRUE)
#xi in (X|n-Sn, X|n+Sn)
height.clean <- survey$Height[!is.na(survey$Height)]
height.standardized <- abs(height.clean-mean(height.clean))/sd(height.clean)
sum(height.standardized<1)/length(height.clean)
#xi in (X|n-2Sn, X|n+2Sn)
sum(height.standardized<2)/length(height.clean)
#xi in (X|n-3Sn, X|n+3Sn)
sum(height.standardized<3)/length(height.clean)
#Make histogram
hist(survey$Height, main="Histogram for height", xlab = "Height", ylab = "Accuracy")
rug(jitter(survey$Height))
#Add poligon
h<-hist(survey$Height, main="Histogram for height", xlab = "Height", ylab = "Accuracy")
lines(x=c(min(h$breaks), h$mids, max(h$breaks)), y=c(0, h$counts,0), type="l", lwd=2)
#Add plutnost
hist(height.clean, main="Histogram for height", xlab = "Height", ylab = "Accuracy", probability = TRUE)
rug(jitter(height.clean))
lines(density(height.clean), col="Red", lwd=2)