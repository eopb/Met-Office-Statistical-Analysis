table <- read.table("data/heathrow-may-oct-2015.csv", header=TRUE, sep=",", fileEncoding = "UTF-8")

table <- subset(table, grepl("S", Cardinal.Direction, fixed=TRUE))

print(table)

dailyMaximumGust <- as.numeric(table$Daily.Maximum.Gust)

hist(dailyMaximumGust, main="Daily Maximum Gust Speed for Gusts from the South")
