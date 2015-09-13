# Reading the power data file. 
power_data <- read.table("C:/DataforExploratory Analysis/household_power_consumption.txt", header=T, sep=";", na.strings="?")


# creating a subset for the data for the two dates we are interested in.
power_data_subset <-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007",]

#Combining the time and date

datetime <-strptime(paste(power_data_subset$Date, power_data_subset$Time),"%d/%m/%Y %H:%M:%S")

power_data_subset2 <- cbind(datetime, power_data_subset)


#Plot the graph

plot(power_data_subset2$datetime,power_data_subset2$Sub_metering_1, type= "l", ylab= "Energy Sub Metering", xlab=" ",col="Black")
lines(power_data_subset2$datetime,power_data_subset2$Sub_metering_2,col="red")
lines(power_data_subset2$datetime,power_data_subset2$Sub_metering_3,col="Blue")
legend("topright",legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col= c("Black","red","blue" ))

png(filename ="plot3.png",width = 480,height=480)
dev.off()