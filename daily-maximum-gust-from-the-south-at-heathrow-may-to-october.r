table <- read.table("data/cant-remember-where-this-is-from.csv", header=TRUE, sep=",", fileEncoding = "UTF-8")

table <- subset(table, grepl("S", Cardinal.Direction, fixed=TRUE))

dailyMaximumGust <- as.numeric(table$Daily.Maximum.Gust)

hist(dailyMaximumGust, main="Daily Maximum Gust Speed for Gusts from the South")
