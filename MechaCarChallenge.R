library(dplyr)
#15.2.3 Read and Write Using R : Import csv file
MechaCar_mpg <- read.csv(file='./Data/MechCar_mpg.csv',check.names=F,stringsAsFactors = F)