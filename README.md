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

##### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

<img width="423" alt="Summary of MechaCar statistics" src="https://user-images.githubusercontent.com/85860367/136156073-e31ec6a1-2263-4494-80db-2ae634af2de9.PNG">

##### Is the slope of the linear model considered to be zero? Why or why not?

<img width="573" alt="Linear Regression MechaCar" src="https://user-images.githubusercontent.com/85860367/136156163-3d96a153-87fa-4498-b324-5230a79345cf.PNG">

##### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

<img width="533" alt="Linear Regression summary MechaCar part 1" src="https://user-images.githubusercontent.com/85860367/136156213-2c0a776d-3b2b-4009-9b08-55fdbebf8751.PNG">


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

#### Deliverable 3: T-Test on Suspension Coils
Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

* t-test that compares all manufacturing lots
<img width="390" alt="t_test for PSI at 1500" src="https://user-images.githubusercontent.com/85860367/136160373-7f373188-f928-4961-ae8e-5d678724125b.PNG">

* t-test that compares Lot 1

<img width="555" alt="Lot 1" src="https://user-images.githubusercontent.com/85860367/136160726-7e5528c8-b519-4db6-810d-c49ac5b92c72.PNG">

* t-test that compares Lot 2

<img width="555" alt="Lot 2" src="https://user-images.githubusercontent.com/85860367/136160777-b255e99b-f60b-4b0b-9987-957ab2648ce7.PNG">

* t-test that compares Lot 3

<img width="556" alt="Lot 3" src="https://user-images.githubusercontent.com/85860367/136160876-11585dd9-be9c-44e5-98e8-70d6d1d6d94e.PNG">

##### Summary of t-test findings


#### Deliverable 4: Design a Study Comparing the MechaCar to the Competition

Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
