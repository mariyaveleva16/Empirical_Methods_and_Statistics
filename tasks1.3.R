#Разгледайте данните survey от пакета MASS.
#а) броя на мъжете;
sum(survey$Sex == "Male", na.rm = TRUE)
#б) броя на мъжете пушачи;
sum(survey$Sex == "Male" & survey$Smoke != "Never", na.rm = TRUE)
#в) средната височина на мъжете;
mean(survey[survey$Sex=="Male", "Heigth"], na.rm = TRUE)
mean(survey[survey$Sex=="Male",]$Height, na.rm = TRUE)
#г) височината и пола на 6-те най-млади студента.
survey[order(survey$Age)[1:6], c("Age", "Height", "Sex")]