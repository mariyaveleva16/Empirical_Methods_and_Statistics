q1 <- factor(c(3, 3, 3, 4, 3, 4, 3, 4, 3, 4), levels = c(1, 2, 3, 4, 5))
q2 <- factor(c(5, 2, 5, 5, 2, 2, 5, 5, 4, 2), levels = c(1, 2, 3, 4, 5))
q3 <- factor(c(1, 3, 1, 1, 1, 3, 1, 1, 1, 1), levels = c(1, 2, 3, 4, 5))
eval <- data.frame(q1, q2, q3)
#Make a table of the results of questions 1, 2 and 3 separately
table(q1)
table(q2)
table(q3)
#Make a contingency table of questions 1 and 2
table(q1, q2)
#Make a stacked barplot of questions 2 and 3
barplot(table(q2,q3), main = "Questions 2 and 3", xlab = "Question 3", col = c("Blue", "Pink", "Yellow", "Green", "Gray"), legend.text = c(1,2,3,4,5))
#Make a side-by-side barplot of all 3 questions
barplot(table(q1,q2), beside = TRUE, main = "Questions 2 and 3", xlab = "Question 3", col = c("Blue", "Pink", "Yellow", "Green", "Gray"), legend.text = c(1,2,3,4,5))
barplot(table(q1,q3), beside = TRUE, main = "Questions 2 and 3", xlab = "Question 3", col = c("Blue", "Pink", "Yellow", "Green", "Gray"), legend.text = c(1,2,3,4,5))
barplot(table(q2,q3), beside = TRUE, main = "Questions 2 and 3", xlab = "Question 3", col = c("Blue", "Pink", "Yellow", "Green", "Gray"), legend.text = c(1,2,3,4,5))
