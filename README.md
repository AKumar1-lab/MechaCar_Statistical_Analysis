### MechaCar_Statistical_Analysis

Module 15 Statistical Analysis with R

Completed by Angela Kumar

### Purpose

Learn how to use R and statistics in order to analyze vehicle data

### Overview

Apply the understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. Analysis will include visualizations, statistical tests, and interpretation of the results. All of the statistical analysis and visualizations will be written in the R programming language.

Throughout the module, extract, transform, and load (ETL) data skills will be utilized; visualizing the data; and analyzing the data using R. Additionally,  a variety of statistical tests, their real-world application in data science, and their implementation in R. The goal is to apply these statistical concepts beyond this module, to any dataset, using any programming language—including Python.

### Resources

Data: MechaCar_mpg.csv; Suspension_Coil.csv

Technology: R and RStudio

### Background

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, Jeremy and the data analytics team need help to do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, a summary  will   be written to interpret the findings.

### Deliverables

#### Deliverable 1: Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. A short interpretation of the multiple linear regression results is written in the README.md.

<img width="551" alt="MechaCar_mpg variables snapshot" src="https://user-images.githubusercontent.com/85860367/136156397-efcbd50b-968a-404d-ab38-fa29c30bfb0c.PNG">

<img width="423" alt="Summary of MechaCar statistics" src="https://user-images.githubusercontent.com/85860367/136156073-e31ec6a1-2263-4494-80db-2ae634af2de9.PNG">

<img width="573" alt="Linear Regression MechaCar" src="https://user-images.githubusercontent.com/85860367/136156163-3d96a153-87fa-4498-b324-5230a79345cf.PNG">

<img width ="573" alt="Linear Regression summary MechaCar Part 1" src="https://user-images.githubusercontent.com/85860367/136738743-c592f250-014f-4619-87db-fd6bd3b4109b.png">


Questions:

##### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, **vehicle length** and **ground clearance** (as well as intercept) are statistically likely to provide non-random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on miles per gallon(mpg) due to the p-value are smaller than zero.  Vehicle weight, spoiler angle, drivetrain, and All Wheel Drive (AWD) all have random amounts of variance as the p-values are near zero.

The intercept is statistically significant and could mean that the significant features (such as length and ground clearance) may need scaling or transforming to help improve the predictive power.  Both variables are dependent on mpg in the dataset.

##### Is the slope of the linear model considered to be zero? Why or why not?

R-squared value is 0.7149, which means that roughly 71.49% of the variables are dependent and are related as explained using this linear model.  The value of the Pearson correlation coefficient product is between -1 to +1.  When the correlation coefficient comes down to zero, then the data is said to be not related. While, if we are getting the value of +1, then the data are positively correlated and -1 has a negative correlation.  0.7149 is closer to 1;therefore the variables are  dependent and are positively correlated to the data.

In addition, the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

##### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model predicts the mpg of MechaCar protypes effectively.  The variance between the Multiple R-squared (.07149) and Adjusted R-squared(0.6825) do not equal zero and are positive correlated, there is a strong relationship indicated of dependent variables to mpg.

R-squared measures the strength of the relationship between your model and the dependent variable. If the F-test is significant, which it is at 22.07.  This number is greater than 1, and is a large enough spread between the datapoints in the dataset and we can conclude that the R-squared is also not zero.  The p-value is smaller than zero but close to the significance level of 0.05%; therefore we must reject the null hypothesis. H0= Reject Null Hypothesis.

#### Deliverable 2: Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using knowledge of R, create a summary statistics table to show:

* The suspension coil’s PSI continuous variable across all manufacturing lots
* The following PSI metrics for each lot: mean, median, variance, and standard deviation.
* Then, in the README.md, you’ll briefly detail and interpret the suspension coil summary statistics.

<img width="431" alt="Summary of Suspension coil" src="https://user-images.githubusercontent.com/85860367/136160291-b2464868-fb53-4956-8b8f-22b51e767ee8.PNG">


##### Total Summary

<img width="382" alt="Total summary" src="https://user-images.githubusercontent.com/85860367/136158688-68ab6c72-e380-48f4-b244-91b4011b0b42.PNG">


##### Lot Summary

<img width="382" alt="lot_summary" src="https://user-images.githubusercontent.com/85860367/136158783-ba73289a-64fc-48d3-b2f8-d21f6130edfb.PNG">


##### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The current manufacturing data meets the design specification for the MechCar suspension coils for all manufacturing lots in total.  In the total summary of all lots, the variance is 62.29 per pounds per square inch (PSI).  This is less than and well within the reasonable variance threshhold of 100 per pounds per square inch; therefore it meets the design specification variance as indicated.

Lot 1 has 0.979 and Lot 2 has 7.469, both have the variance less than the 100 pounds per square inch. Lots 1 and 2 are well within the reasonable variance of 100 per pounds per square inch.  Lot 3 has 170.286 as the variance which exceeds greatly the 100 pounts per square inch; therefore is outside the reasonable variance.  Lot 3 may need to be evaluated as to why it exceeds the variance or what may be causing the large variance.

#### Deliverable 3: T-Test on Suspension Coils
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

*** t-test that compares all manufacturing lots**

<img width="390" alt="t_test for PSI at 1500" src="https://user-images.githubusercontent.com/85860367/136160373-7f373188-f928-4961-ae8e-5d678724125b.PNG">

*** t-test that compares Lot 1**

<img width="555" alt="Lot 1" src="https://user-images.githubusercontent.com/85860367/136747538-4c21b6eb-eaea-4a00-aac4-76086f38c588.png">

*** t-test that compares Lot 2**

<img width="555" alt="Lot 2" src="https://user-images.githubusercontent.com/85860367/136747981-de691833-d12f-434f-b83d-741cab7a7303.png">

*** t-test that compares Lot 3**

<img width="556" alt="Lot 3" src="https://user-images.githubusercontent.com/85860367/136748130-5e47d4c5-9b62-4d50-9bf8-c563ae941e96.png">

##### Summary of t-test findings

The t-test for the Total of all lots indicates the following:  **the p-value = 0.06**, this greater than the 0.05 significance level.  The p-value is greater than the significance level, and this indicates that there is not enough evidence to reject the null hypothesis. **The true mean of total summary = 1498.78** is in between the confidence interval for the sample size and is near 1500.  All three lots are presumed to be similar to the population sample mean of 1500

The t-test for Lot 1 indicates the following:  **The p-value = 1**, this obviously is greater than the 0.05 significance level.  The p-value is greater than the significance level, and this definitely indicates that we cannot reject the null hypothesis. **The true mean of Lot 1 = 1500** is exactly equal to the confidence interval. Lot 1 is presumed to have no difference between the true mean and the population sample mean of 1500.

The t-test for Lot 2 indicates the following:  **The p-value = 0.6072**, this is still greater than the 0.05 significance level.  The p-value is slightly greater than the significance level, and this indicates that we cannot reject the null hypothesis.  **The true mean of Lot 2 = 1500.2** is presumed to be similar to the true mean and population sample mean of 1500.

The t-test for Lot 3 indicates the following:  **The p-value = 0.4168**, this is less than the 0.05 significance level.  The p-value is slightly less than the 0.05 significance level, and this indicates there is enough evidence to reject the null hypothesis.  **The true mean of Lot 3 = 1496.14** is presumed to be less than the true mean and population sample mean of 1500.

#### Deliverable 4: Design a Study Comparing the MechaCar to the Competition

Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

What metric or metrics are you going to test?  

* Fuel Efficiency (dependent variable)
* Cost (dependent variable)
* Safety Rating (independent variable)

What is the null hypothesis or alternative hypothesis?

H0 = MechaCar indicates the key performance indicators (KPIs) are comparable to other cars

Ha = MechaCar indicates that the key performance indicators are not comparable to other cars

What statistical test would you use to test the hypothesis? And why?

Multiple Linear Regression would be used to to test the hypothesis and there are multiple variables can be tested for one target.
if this needs to be broken down further, the t-test would be good to make an accurate statement on the independent variables.

What data is needed to run the statistical test?  

The data that that is needed to run the statistical test would be a dataset that includes the multiple variables in a csv format which includes columns and rows.
This would be easier to read and work with the data.
