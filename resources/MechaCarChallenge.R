# import dependencies
library(splitstackshape)
library(tidyverse)
library(reshape2)
library(devtools)
library(plotly)
library(crosstalk)
library(DT)
library(fivethirtyeight)
library(ggplot2)

#DELIVERABLE 1 Linear Regression to Predict MPG

#import and read csv files for challenge
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#check to see if data loaded correctly
summary(MechaCar_mpg)
summary(Suspension_Coil)

#create the statistical summary of the linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
ground_clearance + AWD, data = MechaCar_mpg)

#create the summary of the linear regression of MechaCar mpg
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
ground_clearance + AWD, data = MechaCar_mpg))

#DELIVERABLE 2 Summary Statistics on Suspension Coils

# create a total summary of the suspension coil data set
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Std_Dev=sd(PSI),.groups = 'keep') #create summary table with multiple columns

# create a lot summary of the suspension coil data set
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Std_Dev=sd(PSI),.groups = 'keep') #create summary table with multiple columns

# DELIVERABLE 3 T-Tests on Suspension Coils

# one sample test
t.test((Suspension_Coil$PSI),mu=1500) #compare sample versus suspension coil PSI

?t.test()

# one sample test on Lot 1

t.test((subset(Suspension_Coil,Manufacturing_Lot=='Lot1')$PSI),mu=(1500)) #compare sample versus Lot 1 PSI

# one sample test on Lot 2

t.test((subset(Suspension_Coil,Manufacturing_Lot=='Lot2')$PSI),mu=(1500)) #compare sample versus Lot 2 PSI

# one sample test on Lot 3

t.test((subset(Suspension_Coil,Manufacturing_Lot=='Lot3')$PSI),mu=(1500)) #compare sample versus Lot 3 PSI