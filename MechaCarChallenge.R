library(tidyverse)

#read the mechacar data
mecha_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

#create linear regression model
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)
summary(mecha_lm)

#read the suspension coil data
SuspensionTable <-read.csv(file='Suspension_Coil.csv', stringsAsFactors = F, check.names = F)

#Suspension Coil Summary
summary(SuspensionTable$PSI)
mean(SuspensionTable$PSI)
median(SuspensionTable$PSI)
var(SuspensionTable$PSI)
sd(SuspensionTable$PSI)

#T-tests
# Across all Lots
t.test(SuspensionTable$PSI,mu = 1500)
# Lot 1
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Lot 2
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Lot 3
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


