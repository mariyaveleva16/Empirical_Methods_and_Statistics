#Пробвайте да направите някаква графика на данните
plot(closeNVDA)
plot(closeGOOG)
#Какъв е обхватът в който са се изменяли цените на акциите през годината?
max(closeNVDA)-min(closeNVDA)
max(closeGOOG)-min(closeGOOG)
#Колко са били медианата, долния и горния хиндж на акциите през годината?
median(closeNVDA)
median(closeGOOG)
fivenum(closeNVDA)[2]
fivenum(closeNVDA)[4]
fivenum(closeGOOG)[2]
fivenum(closeGOOG)[4]
#Каква е била средната цена на акциите през годината?
mean(closeNVDA)
mean(closeGOOG)
#Колко е бил 1вия и 3тия квартил на данните ви?
quantile(closeNVDA, 0.25)
quantile(closeNVDA, 0.75)
quantile(closeGOOG, 0.25)
quantile(closeGOOG, 0.75)
#Каква е била стойността на акцията на рождения ви ден (ако пазара е бил затворен тогава, каква е била стойността през последния ден преди това, когато пазара е бил отворен)?
NVDA['2021-08-16', 'Close']
#Ако рдто го няма
max(which(rownames(NVDA) <= '2020-10-17'))
#Връща 2
NVDA[2, 'Close']
#По-ниска или по-висока е била цената на акцията на рождения ви ден спрямо средната цена за годината?
NVDA['2021-08-16', 'Close']>mean(closeNVDA)
#Пресметнете как се е изменяла стойността на акциите от ден на ден?
diffCloseNVDA <- diff(closeNVDA)
diffCloseGOOG <- diff(closeGOOG)
#Пробвайте да направите някаква графика на данните от горната подточка;
plot(diffCloseNVDA, type = 'l')
plot(diffCloseGOOG, type = 'l')
#През какъв процент от дните цената на акцията е била по-висока при затварянето на пазара спрямо предходния ден?
sum(diff(closeNVDA)>0)/length(closeNVDA)*100
#Намерете стандартното отклонение, дисперсията и интерквартилния размах на възвръщаемостта на акциите?
sd(closeNVDA)
var(closeNVDA)
IQR(closeNVDA)
sd(closeGOOG)
var(closeGOOG)
IQR(closeGOOG)