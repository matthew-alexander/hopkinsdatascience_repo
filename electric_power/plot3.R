# electric power data 
#exploratory graphics for plot 2

data = read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")


date = as.Date(data$Date, format="%d/%m/%Y")
data$Date = date
x = paste(date, data$Time)

y = strptime(x, "%Y-%m-%d %H:%M:%S")
data$DateTime = y

plot_data = subset(data, Date>="2007-02-01" & Date <= "2007-02-02")

plot(plot_data$DateTime, plot_data$Sub_metering_1, type = "l" , col = "black", xlab= "", ylab = "Electric Sub Metering")
lines(plot_data$DateTime, plot_data$Sub_metering_2, type = "l" , col = "red")
lines(plot_data$DateTime, plot_data$Sub_metering_3, type = "l", col = "blue")



dev.print(png, file = "plot3.png", width = 480, height = 480, bg="transparent")
