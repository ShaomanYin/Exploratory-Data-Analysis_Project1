



##################   plot4

setwd("C:/Users/T400/Desktop/DataSci/Explortary Analaysis with R/")
d<-read.table("household_power_consumption.txt",sep=";",header=T, na.strings="?")
d1<-d[d$Date=="1/2/2007"|d$Date=="2/2/2007",]
d1$td<-paste(d1$Date,d1$Time)
d1$dt<-strptime(d1$td, "%d/%m/%Y %H:%M:%S")
d1<-d1[order(d1$dt),]

png("plot4.png")

par(mfrow=c(2,2))
plot(d1$dt,d1$Global_active_powe,type="l",ylab="Global Active Power (kilowatts)",xlab=" ",ylim=c(0,8))
plot(d1$dt,d1$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(d1$dt,d1$Sub_metering_1,type="n",ylab="Energy sub metering",xlab=" ",ylim=c(0,40))
lines(d1$dt,d1$Sub_metering_1,type="l",col="black")
lines(d1$dt,d1$Sub_metering_2,type="l",col="red")
lines(d1$dt,d1$Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)

plot(d1$dt,d1$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()