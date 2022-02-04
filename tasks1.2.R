#install.packages("UsingR")/ library(UsingR)
head(homedata)
#Създайте два вектора съдържащи цените на къщите през 1970 и 2000г.
homedata2000<-homedata$y2000
homedata1970<-homedata$y1970
#Определете:
#а) най-скъпата и най-евтината къща през 2000г, техните цени през 1970г
maxPrice<-max(homedata2000)
minPrice<-min(homedata2000)
homedata1970[which(homedata2000==maxPrice)]
homedata1970[which(homedata2000==minPrice)]
#б) цените на 5-те най-скъпи къщи през 2000г
tail(sort(homedata2000),n=5)
#в) броят на къщите по-скъпи от 750 000 през 2000г
sum(homedata2000>750000)
#изкарайте цените им
homedata2000[homedata2000>750000]