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

# review if dataset is fairly normal distributed
#plt<- ggplot(sample_table,aes(x=(PSI)))

#convert using log10 since our distribution is negative skew
plt<- ggplot(population_table,aes(x=log10(PSI)))

#visualize distribution using density plot
plt + geom_density()

#shapiro.test (confirm and test for normality)
shapiro.test(population_table$PSI)

#sample_table: randomly select 100 data points from population_table
sample_table <- population_table %>% sample_n(100)

#import dataset into ggplot2
plt <- ggplot(sample_table, aes(x=log10(PSI)))

#visualize distribution using density plot
plt + geom_density()

# t.test() compare sample versus population means
t.test(log10(sample_table$PSI),mu=mean(log10(population_table$PSI)))

# t-test for lot 1
t.test(subset(log10(sample_table$PSI), sample_table$Manufacturing_Lot == 'Lot1'), mu=mean(log10(population_table$PSI)))

# t-test for lot 2
t.test(subset(log10(sample_table$PSI), sample_table$Manufacturing_Lot == 'Lot2'), mu=mean(log10(population_table$PSI)))

#t-test for lot 3
t.test(subset(log10(sample_table$PSI), sample_table$Manufacturing_Lot == 'Lot3'), mu=mean(log10(population_table$PSI)))
