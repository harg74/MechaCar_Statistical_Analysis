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

### 1.	Mean Sample vs. Mean Population across all lots
After we defined our hypothesis we can apply our t.test() to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500. 

We obtained a p-value = 0.06028, which is above of our significance level of 0.05. This means that we fail to reject our Ho, and there is no statistical difference between the observed sample mean and it presumed population mean.

![all_lots](https://user-images.githubusercontent.com/78564912/148946064-c668d4f6-1986-4145-95a8-14d46e9608b7.png)


### 2. Mean Sample vs. Mean Population for each lot
- **Lot 1 results:**
After applying our t.test() function we can observe that our p-value, 1, is way greater than our significance level of 0.05. Therefore, we can conclude that we fail to reject our Ho and there is *no* statistical difference between the observed sample mean and it presumed population mean.

![lot1](https://user-images.githubusercontent.com/78564912/148946378-ed9b5e85-1d3e-4448-af09-65b85d36d1ca.png)

- **Lot 2 results:**
The same is true for Lot 2, we can observe that our p-value, 0.6072, is above than our significance level 0.05. Therefore, we can conclude that we fail to reject our Ho and there is *no* statistical difference between the observed sample mean and it presumed population mean.

![lot2](https://user-images.githubusercontent.com/78564912/148947265-66bcd21e-a8a8-4c0e-887e-c4700aef0a1f.png)

- **Lot 3 results:**
For Lot 3, our p-value, is lower than our significance level of 0.05 with a valueo of 0.04168. In this case, we would reject our Ho, concluding that there *is* statistical difference between the observed sample mean and it presumed population mean.

![lot3](https://user-images.githubusercontent.com/78564912/148948581-bfc1be07-8fd6-4c7f-9617-b317f58b0ee5.png)


## Deliverable 4: Design a Study Comparing the MechaCar to the Competition

In order to conduct our statistical study on how MechaCar performs against the competition. We would use some variables of interest to the consumer. For example, cost, city or highway fuel efficiency, horse power, maintenance cost and safety rating.

I would first test my data to be normally distributed. This can be done by adding our ggplot object to geom_density() function or by applying the shapiro.test()function to our dataset variable. Where if the p-value of this shapiro test function is greater than 0.05 (our significance level) the data would be considered normally distributed. If the distributions happens to be non- normally distributed, depending on the severity:

- If dataset is large, or the skewness is very subtle: we would simply point out that our data distribution shows signs of skew during the reporting.
- If dataset is smaller, or the skewness does impactthe overall shape of our distribution
  - Add more data points to our dataset to alleviate the effect of skew
  - Resample or regenerate the data
  - Transform our data values by normalization, using another numerical variable, or by transforming the data using an operator(natural log, or log10)

It is important to generate our Ho and Ha hypothesis and our significance level. This is because the Ho, generally, is the hypothesis that can be exaplained by random chance and then, is the one that tipically we want to reject. Alternatively, the Ha hypothesis, is the one that is influenced, generally, by non-random events. On the other hand, depending on the significance level the Ho would be rejected or fail to be rejected. Typically our significance level would be 0.05, but it can be set at 0.01 and 0.001 as well, depending on the importance of the questions we are asking.

The test I would use is one sample t-test, which is is the one that stablish in the Ho if there is no statistical difference between the observed sample mean and its presumed population mean.

So, the data needed to run this one sample t-test, is required that:

- The input data is numerical and continuous
- Sample data randombly selected
- Data considered to be normally distributed
- Sample reasonably large: (sample distrubution similar to the population ditribution
- Similar data variance
