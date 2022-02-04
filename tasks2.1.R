#Пакет 'MASS'.
#а)случайно избран човек да се окаже редовен пушач
sum(survey$Smoke=="Regul", na.rm = TRUE)/length(survey$Smoke)
#б)случайно избран човек да се окаже редовен пушач мъж
sum(survey$Sex == "Male" & survey$Smoke=="Regul", na.rm = TRUE)/length(survey$Sex)
sum(survey$Sex == "Male" & survey$Smoke=="Regul", na.rm = TRUE)/length(survey$Smoke)
#в)Случайно избран мъж да се окаже редовен пушач
sum(survey$Sex == "Male" & survey$Smoke=="Regul", na.rm = TRUE)/sum(survey$Sex == "Male", na.rm = TRUE)
#г)Случайно изран редовен пушач да се окаже мъж
sum(survey$Sex == "Male" & survey$Smoke=="Regul", na.rm = TRUE)/sum(survey$Smoke == "Regul", na.rm = TRUE)