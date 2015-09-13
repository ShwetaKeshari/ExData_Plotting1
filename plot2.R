#Plot 2.
# Read the dataset
power_data <- read.table("C:/DataforExploratory Analysis/household_power_consumption.txt", header=T, sep=";", na.strings="?")

head(power_data)

# creating a subset for the data for the two dates we are interested in.
power_data_subset <-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007",]

#Combining the time and date
datetime <-strptime(paste(power_data_subset$Date, power_data_subset$Time),"%d/%m/%Y %H:%M:%S")
power_data_subset2 <- cbind(datetime, power_data_subset)


#Plot the graph

plot(power_data_subset2$datetime,power_data_subset2$Global_active_power, type= "l", ylab= "Global Active Power (Killowatts)", xlab=" ")

png(filename = "plot2.png",width = 480,height=480)
dev.off()