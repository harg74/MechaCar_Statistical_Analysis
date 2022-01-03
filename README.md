# MechaCar_Statistical_Analysis

## 1: Linear Regression to Predict MPG

Using our knowledge of R, we designed a a linear model that predicts the Miles per Gallon (mpg) efficiency of MechaCar prototypes using several variables from the MechaCar_mpg.csv. For this, we would need first to define our Ho (Null hypothesis) and Ha (alternate hypothesis) hypotheses, and after we analyze our model, we can conclude to reject or fail to reject our Ho hypothesis.

  - Ho: The slope of the linear model is zero, or m = 0
  - Ha: The slope of the linear model is not zero, or m ≠ 0

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    Given the used_vehicles dataset vehicle lenght and ground clearance variables have a significant impact on the miles per gallon (mpg) consumed by each car. On the other hand, the Intercept is also statistically significant, meaning that it explains a significant amount of variability in the **dependent variable** when all **independent variables** are equal to zero.
    
![del1](https://user-images.githubusercontent.com/78564912/147985879-762599a4-fe01-4bbb-a2e0-b27306b65544.png)


2. Is the slope of the linear model considered to be zero? Why or why not?

    Since the p-value is equals to 5.35e-11, assuming a significance level of 0.05, **we will reject the Ho hypothesis**, which assumes that the slope of the linear model is zero. Therefore, the slope is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    Our R2 coefficient give us an idea of how well, our model approximates real world data points. In this case,
71% of the changes in the mpg, are explained by the changes in the vehicle length, ground clearance and by the intercept.

    However, **due to the lack of significant variables, there is evidence of _overfitting_**. Meaning that the performance of a model performs well with this current dataset, but fails to generalize and predict future data correctly.

## 2: Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). That being said, we can observe that the variance for all manufacturing lots in total is 62.29, concluding that this criteria is met. However, if we analyze the lots separately, we can observe that the variance requirements for Lot1 and Lot2 are met, but the variance for Lot3 is surpassing the 100 pounds per square inch criteria, with 170.28 PSI.

![del2(1)](https://user-images.githubusercontent.com/78564912/147978279-e28af044-9327-4fa2-a351-8db6826345ba.png)

![del2(2)](https://user-images.githubusercontent.com/78564912/147978289-125930c8-ad97-4a8c-96d4-59088ecda654.png)

## 3: T-Test on Suspension Coils

We define our null and alternative hypothesis:

- Ho: There *is no statistical difference* between the observed PSI sample and its presumed population mean of 1500 PSI.
- Ha: There *is statistical difference* between the observed PSI sample and its presumed population mean of
1500 PSI.

Since our data is not considered to be normally distributed, we would need to normalize our values. In the image below we can observe that our dataset presents **_negative skew_** and is impacting the overall shape of the distribution. Hence, the transformation is needed. This is important because one of the assumptions to apply our t-test is that our population data and our sampling data are ~ normally distributed. The chart in the left side, is the one presenting the negative skew and the left chart is the one adjusted as "normally distributed".

![del3_pop_skew](https://user-images.githubusercontent.com/78564912/147978386-aef8f6fb-6629-4792-a6c2-e1db35759e2d.png)![del3_pop_log10](https://user-images.githubusercontent.com/78564912/147986052-fba6b779-9d77-4406-944e-88a91990dc73.png)



### 1.	Mean Sample vs. Mean Population across all lots
Once we have our data transformed we can apply our t.test() to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500. 

We obtained a p-value = 0.4804, which is greater than our significance level of 0.05. This means that we fail to reject our Ho, and there is no statistical difference between the observed sample mean and it presumed population mean.

![t test](https://user-images.githubusercontent.com/78564912/147986286-d07b6ea6-bf5d-448a-a449-e6f3e0acfbc4.png)

### 2. Mean Sample vs. Mean Population for each lot
- **Lot 1 results:**
After applying our t.test() function we can observe that our p-value, 2.482e-08, is way lower than our significance level 0.05. Therefore, we can conclude that we fail to reject our Ho and there is *no* statistical difference between the observed sample mean and it presumed population mean.

![t test lot1](https://user-images.githubusercontent.com/78564912/147986315-b04521ee-26ed-4494-80ff-3d7bd59bd223.png)


- **Lot 2 results:**
The same is true for Lot 2, we can observe that our p-value, 2. 0.01664-08, is way lower than our significance level 0.05. Therefore, we can conclude that we fail to reject our Ho and there is *no* statistical difference between the observed sample mean and it presumed population mean.

![t test lot2](https://user-images.githubusercontent.com/78564912/147986318-792cc5b9-165f-43cd-b107-c584a42ae086.png)


- **Lot 3 results:**
For Lot 3, our p-value, is greater than our significance level of 0.05 with 0.714 and in this case, we would reject our Ho, concluding that there *is* statistical difference between the observed sample mean and it presumed population mean.

![t test lot3](https://user-images.githubusercontent.com/78564912/147986325-759781d1-06e2-4f23-b951-da35b67c68bc.png)


## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
