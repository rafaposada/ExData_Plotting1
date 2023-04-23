#Plot1
File<-"D:/OneDrive - Rafael Posada Velázquez/OneDrive/00. Cursos tomados/01. Data Science/4 Exploratory Data analysus/household_power_consumption.txt"
#File<-"household_power_consumption.txt"
DF<-read.table(File,T,sep=";",na.strings = "?")
DF<-DF[DF$Date=="2/2/2007"|DF$Date=="1/2/2007",]

#Transparent background
png(filename = "Plot1.png",width = 480, height = 480, units = "px",bg = "transparent")
with(DF,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))
dev.off()

#White background
png(filename = "Plot1.png",width = 480, height = 480, units = "px")
with(DF,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))
dev.off()