#Plot2
File<-"D:/OneDrive - Rafael Posada Velázquez/OneDrive/00. Cursos tomados/01. Data Science/4 Exploratory Data analysus/household_power_consumption.txt"
#File<-"household_power_consumption.txt"
DF<-read.table(File,T,sep=";",na.strings = "?")
DF<-DF[DF$Date=="2/2/2007"|DF$Date=="1/2/2007",]

#Format date and time
DF$Date <- as.Date(DF$Date, format="%d/%m/%Y")
DF$DateTime <- as.POSIXct(paste(DF$Date, DF$Time))


#Transparent background
png(filename = "Plot2.png",width = 480, height = 480, units = "px",bg = "transparent")
with(DF,plot(DateTime,Global_active_power,type="l",xlab="",ylab = "Global Active Power (kilowatts)"))
dev.off()

#White background
png(filename = "Plot2.png",width = 480, height = 480, units = "px")
with(DF,plot(DateTime,Global_active_power,type="l",xlab="",ylab = "Global Active Power (kilowatts)"))
dev.off()