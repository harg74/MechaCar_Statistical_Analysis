library(dplyr)
used_cars <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
head(used_cars)

#generate multiple linear regression model (coefficients)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=used_cars)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=used_cars))
