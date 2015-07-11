
##################   plot2
setwd("C:/Users/T400/Desktop/DataSci/Explortary Analaysis with R/")
d<-read.table("household_power_consumption.txt",sep=";",header=T, na.strings="?")
d1<-d[d$Date=="1/2/2007"|d$Date=="2/2/2007",]
d1$td<-paste(d1$Date,d1$Time)
d1$dt<-strptime(d1$td, "%d/%m/%Y %H:%M:%S")
d1<-d1[order(d1$dt),]

plot(d1$dt,d1$Global_active_powe,type="l",ylab="Global Active Power (kilowatts)",xlab=" ",ylim=c(0,8))

dev.copy(png,filename="plot2.png")
dev.off()
