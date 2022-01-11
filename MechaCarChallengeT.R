library(dplyr)
library(tidyverse)

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

#DELIVERABLE 3

#test for normally distributed
#import dataset as population_table
population_table <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

# plot distribution
plt<- ggplot(population_table,aes(x=(PSI)))

#visualize distribution using density plot
plt + geom_density()

#visualize distribution using density plot
plt + geom_density()

# t.test() compare sample versus population means
t.test(population_table$PSI, mu=1500)

# t-test for lot 1
t.test(subset(population_table,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

# t-test for lot 2
t.test(subset(population_table,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

#t-test for lot 3
t.test(subset(population_table,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
