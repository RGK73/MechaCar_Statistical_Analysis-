# MechaCar_Statistical_Analysis-

### Background
We analyzed data for AutosRUs’ newest prototype, the MechaCar, which is suffering from production issues that are blocking the manufacturing team’s progress. We helped the data analytics team to review the production data for insights that may help the manufacturing team.

Technologies Used:
- R
- tidyverse / dplyr package(s)
- RStudio

#### Deliverable 1: Linear Regression to Predict MPG : Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

#### Linear Regression to Predict MPG
Figure 1. Multiple linear regression data for mpg vs. all independent variables

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/MechaCar_lm_summary.png)

- Q.1 Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model.Using the MechaCar_mpg dataset,we can see that the vehicle_length and ground_clearance have a significant imapct on mpg.
vehicle_length with p-value=2.60e-12 which is « 0.05
ground_clearance with p-value=5.21e-08 which is « 0.05

- Q.2 Is the slope of the linear model considered to be zero? Why or why not?
- No. If the slope were zero, then there would be no correlation between mpg and the independent variables. However, we have Multiple R-squared = 0.7149, which indicates a strong correlation.

- Q.3 Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Somewhat. Since (Intercept) <> 0, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are equal to zero. It could mean that the significant features (e.g. vehicle_length and ground_clearance) may need scaling or transforming to improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.

#### Deliverable 2: Summary Statistics on Suspension Coils : Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
The manufacturing data for all lots (Figure 1 below) shows that the suspension coil variance is 62.29356, which is below the limit of 100 pounds per square inch.

- Q.1 The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

#### Summary Statistics on Suspension Coils
Figure 2 - Lot Summary of suspension coils

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/summary_total.png)

However, the per-lot breakdown of the data shows Lot3 has a suspension coil variance of 170.2861224, which is above the limit of 100 pounds per square inch. Lot 1 (0.9897433) and Lot 2 (7.4693878) are within the variance limit.

Figure 3 - Total Summary of suspension coils

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/lot_summary.png)

#### Deliverable 3: T-Test on Suspension Coils : Run t-tests to determine if the manufacturing lots are statistically different from the mean population

Using our knowledge of R, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. The results are shown in Figures 5 through 8 below. The only lot with a statistical difference is Lot 3 (probably because of the high variance as shown in Figure 3 above).

Figure 4 - T-test for all lots vs. pop. mean of 1500 PSI - no statistical difference.

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/ttest_all_lots.png)

Figure 5 - T-test for lot 1 vs. pop. mean of 1500 PSI - no statistical difference.

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/ttest_lot1.png)

Figure 6 - T-test for lot 2 vs. pop. mean of 1500 PSI - no statistical difference.

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/ttest_lot2.png)

Figure 7 - T-test for lot 3 vs. pop. mean of 1500 PSI - yes, a statistical difference.

![alt text](https://github.com/RGK73/MechaCar_Statistical_Analysis-/blob/main/Images/ttest_lot3.png)

#### Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

The statistical study design has the following:

A metric to be tested are : cylinder , transmission and horsepower of the competative car with MechaCar

A null hypothesis is : For same hp,cyl,and trans, there is not much performance difference between MechaCar and competator's car.

an alternative hypothesis is: There is a difference between MechaCar and competator's car for same metrics.

A statistical test to test the hypothesis : We have used multiple linear regression and viewed R squared to test the hypothesis.

The data for the statistical test is described : Data is taken from https://www.epa.gov/data for same current year model of MechaCar and competitor's cars.
