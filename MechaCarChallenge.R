library(dplyr)

#DELIVERABLE 1

# import file
used_cars <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

#head of dataframe
head(used_cars)

#generate multiple linear regression model (coefficients)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=used_cars)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=used_cars))


#DELIVERABLE 2

#import file
suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

#head of dataframe
head(suspension_coil)

#summarize dataframe
total_summary <- summarize(suspension_coil, Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI) , SD= sd(PSI), .groups = 'keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI) , SD= sd(PSI), .groups = 'keep')

