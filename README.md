### MechaCar_Statistics

### MPG Regression

Results:

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mecha_data)

Residuals:
     Min       1Q   Median       3Q 
-19.4701  -4.4994  -0.0692   5.4433 
     Max 
 18.5849 

Coefficients:
                   Estimate Std. Error
(Intercept)      -1.040e+02  1.585e+01
vehicle_length    6.267e+00  6.553e-01
vehicle_weight    1.245e-03  6.890e-04
spoiler_angle     6.877e-02  6.653e-02
ground_clearance  3.546e+00  5.412e-01
AWD              -3.411e+00  2.535e+00
                 t value Pr(>|t|)    
(Intercept)       -6.559 5.08e-08 ***
vehicle_length     9.563 2.60e-12 ***
vehicle_weight     1.807   0.0776 .  
spoiler_angle      1.034   0.3069    
ground_clearance   6.551 5.21e-08 ***
AWD               -1.346   0.1852    

Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’
  0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> View(SuspensionTable)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The F-statistic is 22.07 which is modestly high, meaning there is a strong relationship between our variables. 

2. Is the slope of the linear model considered to be zero? Why or why not?

The p-value is 5.35e-11 which is far below our assumed statistical significance level of 0.05%. This smaller p-vale means we reject our null hypothesis and the slope is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared is 0.7149, meaning that 71% of mpg predictions will be correct. This is good because as the R-squared value approaches 1, more predictions are correct.

### Suspension Coil Summary

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

The variance is 76.23459, therefore the suspension coils do not exceed 100 pounds per inch meaning, the current manufacturing data meets this design specification.

### Suspension Coil T-Test

Results:

Lot 1 One Sample t-test

data:  subset(SuspensionTable, Manufacturing_Lot == "Lot1")$PSI
t = 0.12028, df = 49, p-value = 0.9048
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.714 1500.322
sample estimates:
mean of x 
 1500.018 

Lot 2 One Sample t-test

data:  subset(SuspensionTable, Manufacturing_Lot == "Lot2")$PSI
t = -0.95324, df = 49, p-value =
0.3451
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1498.666 1500.476
sample estimates:
mean of x 
 1499.571 

Lot 3 One Sample t-test

data:  subset(SuspensionTable, Manufacturing_Lot == "Lot3")$PSI
t = -0.47484, df = 49, p-value = 0.637
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1494.789 1503.219
sample estimates:
mean of x 
 1499.004 

All Lots One Sample t-test

data:  SuspensionTable$PSI
t = -0.65784, df = 149, p-value =
0.5117
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1498.122 1500.940
sample estimates:
mean of x 
 1499.531 

1. What are your interpretations and findings?

First, I conducted the Shapiro-wilk normality test and found the p-value was 6.011e-11 which is far below 0.05, meaning the data is not normally distributed.
With a significance level of 0.05 percent, our p-value of 0.5117 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, meaning the two means are statistically similar. 
When conducting the t-test by each Lot for Lots 1 through 3, I found similar findings, that the p-value was over 0.05.

### Own Study

Cost and fuel efficiency would definitely be metrics of interest for consumers. 
The question to ask would be if as cost increases, fuel efficiency also increase, meaning they are positively correlated. The null hypothesis would be that cost and fuel efficiency are negatively correlated and the alternative hypothesis would be that they are positively correlated. 
For this, we could do the p-test to check if there is strong evidence to reject the null hypothesis. 
We would need to collect the cost and fuel efficiency of the MechaCar and other vehicles on the market. 
If the p-value is less than 0.05, we can reject the null hypothesis.
