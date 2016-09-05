# electric power data 
#exploratory graphics for plot 1


data = read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")


date = as.Date(data$Date, format="%d/%m/%Y")
data$Date = date
x = paste(date, data$Time)

y = strptime(x, "%Y-%m-%d %H:%M:%S")
data$DateTime = y

plot_data = subset(data, Date>="2007-02-01" & Date <= "2007-02-02")
hist(plot_data$Global_active_power, col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)")

dev.print(png, file = "plot1.png", width = 480, height = 480, bg = "transparent")
