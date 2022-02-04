#Средната височина
mean(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Медиана
median(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Квартил 1
quantile(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE, 0.25)
#Квартил 3
quantile(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE, 0.75)
#Min
min(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Max
max(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#range
range(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#fivenum
fivenum(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#summary
summary(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Стандартно отклонение
sd(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Дисперсия
var(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#IQR
IQR(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#mad
mad(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Средната височина
mean(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#Медиана
median(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#Квартил 1
quantile(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE, 0.25)
#Квартил 3
quantile(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE, 0.75)
#Min
min(survey[survey$Sex=="Male", ]$Height, na.rm = TRUE)
#Max
max(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#range
range(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#fivenum
fivenum(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#summary
summary(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#Стандартно отклонение
sd(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#Дисперсия
var(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#IQR
IQR(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)
#mad
mad(survey[survey$Sex=="Female", ]$Height, na.rm = TRUE)