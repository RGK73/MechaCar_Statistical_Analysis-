####### Deliverable 1 Linear Regression to Predict MPG #######
library(dplyr)

#15.2.3 Read and Write Using R : Import csv file
MechaCar_mpg <- read.csv(file='./Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function.
#15.7.3 Perform Multiple Linear Regression
#y = m1x1 + m2x2 + . + mnxn + b
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
Mecha_lm
summary(Mecha_lm) #generate summary statistics

# view R-squared
summary(Mecha_lm)$r.squared

####### Deliverable 2 Create Visualizations for the Trip Analysis #######
#15.2.3 Read and Write Using R : Import csv file
Suspension_Coil <- read.csv(file='./Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#create a summary table for suspension_coils
total_summary <- Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
total_summary

# view by lots using group_by()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
lot_summary

####### Deliverable 3 #######
# level of significance is 0.05
#H0 : mu=1500
#Ha : mu <> 1500

t.test(Suspension_Coil$PSI,mu=1500)

# from analysis p-value greater than 0.05 hence we fail to reject the null hypothesis H0

#t test by lots
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=='Lot1')$PSI,mu=1500)

# Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=='Lot2')$PSI,mu=1500)

# Lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=='Lot3')$PSI,mu=1500)

####### Deliverable 4 #######
# Readme.md