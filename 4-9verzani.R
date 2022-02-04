#What are the variable names? (Try names.)
names(mtcars)
#What is the maximum mpg
max(mtcars$mpg)
#Which car has this?
rownames(mtcars[which.max(mtcars$mpg), ])
#What are the first 5 cars listed?
rownames(mtcars)[1:5]
#What horsepower (hp) does the "Valiant" have?
mtcars["Valiant", "hp"]
#What are all the values for the Mercedes 450slc (Merc 450SLC)?
mtcars["Merc 450SLC", ]
#Make a scatterplot of cylinders (cyl) vs. miles per gallon (mpg). Fit a regression line. Is this a good candidate for linear regression?
plot(mtcars$cyl ~ mtcars$mpg)
abline(lm(mtcars$cyl ~ mtcars$mpg))
simple.lm(mtcars$mpg, mtcars$cyl, show.residuals = TRUE)