#Представете графично данните за тютюнопушенето
#Ако включваме и NA в таблицата
barplot(table(survey$Smoke, useNA = "ifany"), main = "Smoke")
barplot(table(survey$Smoke), main = "Smoke")
#Представете графично данните за тютюнопушенето в зависиомост от пола
barplot(table(survey$Sex, survey$Smoke), mani = "Smoke/Sex" , col=c("Pink", "Blue"))