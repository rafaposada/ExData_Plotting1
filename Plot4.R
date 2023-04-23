#Plot4

File<-"D:/OneDrive - Rafael Posada Velázquez/OneDrive/00. Cursos tomados/01. Data Science/4 Exploratory Data analysus/household_power_consumption.txt"
#File<-"household_power_consumption.txt"
DF<-read.table(File,T,sep=";",na.strings = "?")
DF<-DF[DF$Date=="2/2/2007"|DF$Date=="1/2/2007",]

#Format date and time
DF$Date <- as.Date(DF$Date, format="%d/%m/%Y")
DF$DateTime <- as.POSIXct(paste(DF$Date, DF$Time))


### Prepare canvas
png(filename = "Plot4.png",width = 480, height = 480, units = "px")
par(mfrow=c(2,2))


### Plot 1
with(DF,plot(DateTime,Global_active_power,type="l",xlab="",ylab = "Global Active Power"))


### Plot 2
with(DF,plot(DateTime,Voltage,type="l",xlab="datetime",ylab = "Voltage"))


### Plot 3
with(DF,plot(DateTime,Sub_metering_1,type="l",xlab="",ylab = "Energy sub metering"))
points(DF$DateTime,DF$Sub_metering_2,col="red",type="l")
points(DF$DateTime,DF$Sub_metering_3,col="blue",type="l")
legend("topright", inset=.005,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),box.lty=0)


### Plot 4
with(DF,plot(DateTime,Global_reactive_power,type="l",xlab="datetime",ylab = "Global_reactive_power"))
dev.off()
