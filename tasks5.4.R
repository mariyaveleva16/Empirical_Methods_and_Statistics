#Sex/Survived
attach(titanic)
table(Sex, Survived)
prop.table(table(Sex, Survived), 1)
#Pclass/Survived
table(Pclass, Survived)
prop.table(table(Pclass, Survived),1)
#Grafics
barplot(table(Sex, Survived), beside = TRUE, main="Sex/Survived", xlab="Survived", col=c("Pink", "Blue"), legend.text = TRUE, names.arg = c("No", "Yes"))
barplot(table(Pclass, Survived), beside = TRUE, main="Pclass/Survived", xlab="Survived", col=c("Pink", "Blue", "Green"), legend.text = TRUE, names.arg = c("No","Yes"))
barplot(prop.table(table(Sex, Survived),1), beside = TRUE, main="Sex/Survived", xlab="Survived", col=c("Pink", "Blue"), legend.text = TRUE, names.arg = c("No", "Yes"))
barplot(prop.table(table(Pclass, Survived),1), beside = TRUE, main="Pclass/Survived", xlab="Survived", col=c("Pink", "Blue", "Green"), legend.text = TRUE, names.arg = c("No","Yes"))