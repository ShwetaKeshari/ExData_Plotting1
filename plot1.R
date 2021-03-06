
##Introduction

#This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set" which I have made available on the course web site:

#Dataset: Electric power consumption [20Mb]

#(Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

####The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

####Date: Date in format dd/mm/yyyy
####Time: time in format hh:mm:ss
######Global_active_power: household global minute-averaged active power (in kilowatt)
####Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
####Voltage: minute-averaged voltage (in volt)
####Global_intensity: household global minute-averaged current intensity (in ampere)
####Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
#####Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
########Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
#............................................................................

#Plot 1: 
## Aim is to plot a Histogram for Global Active power from two dates  namely  the dates 2007-02-01 and 2007-02-02


getwd()
# Reading the power data file. 
power_data <- read.table("C:/DataforExploratory Analysis/household_power_consumption.txt", header=T, sep=";", na.strings="?")

head(power_data)

# creating a subset for the data for the two dates we are interested in.
power_data_subset <-power_data[power_data$Date=="1/2/2007" | power_data$Date=="2/2/2007",]

# Creating the histogram as desired by Instructor for Global Active power

hist(power_data_subset$Global_active_power, xlab="Global Active Power (Kilowatts)",ylab="Frequency",main="Global Active Power",col="red")

#Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

dev.copy(png, file="plot1.png",width = 480,height=480)
dev.off()






