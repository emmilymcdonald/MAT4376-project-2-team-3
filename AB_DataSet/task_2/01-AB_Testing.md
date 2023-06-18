# General AB Testing on the AB_Data
## AB Beta Probability Density Function

<!--- ![AB Beta Probability Density Function](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/ABTEST_BetaProb_DensityFunction.png?raw=true) -->

https://5yxnmt.csb.app/

The Beta Distribution has a skewed distribution, therefore there is a higher probability of observing values closer to 0.25 and 0. The highest probability value for the conversion rate is approximately 0.125, with more certainity due to it's pointed peak.


# Simulating the AB Dataset by Taking 290,585 Random Samples

## AB Posterior Test

<!--- ![AB Posterior Test](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/AB_Test__ABPosterior.png?raw=true) -->

https://9fv2vh.csb.app/

Because the curves overlap slightly, it indicates a potential difference in performance between the landing pages' conversion rates. Because both curves are the same height, we can expect the same probabilty for observing their respective conversion rates. 


## AB Histogram of the mean

<!--- ![AB Histogram of the mean](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/ABTEST_hist_of_mean.png?raw=true) -->

https://qdv5vp.csb.app/

Indicates the most uplift peaks which is at 2.5%. Also, the posterior mass, which accounts for 99.2% of the samples is above 0, indicating that we can be 99.2% certain that there is a higher likelyhood of individuals converting using the new page. 

# Simulating the AB Dataset but with only 100 Random Samples

## AB Posterior Test (100)

<!--- ![AB 100 Posterior Test](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/ABTEST_100_Posterior.png?raw=true) -->

https://6tfk4x.csb.app/

In the AB Posterior Test with 100 random samples, the curves of the conversion rate distributions exhibit significant overlap, suggesting limited evidence for a performance difference between the landing pages. Notably, the curve for variation 'A' stands tallest, indicating a higher likelihood of observing conversion for individuals on the new page. 


## AB Histogram of the mean (100)

<!--- ![AB 100 Histogram of the mean](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/ABTEST_100_Hist_of_mean_B.png?raw=true) -->

https://2ypnrl.csb.app/

The histogram depicts the mean values for the A/B test (100 samples). The value of 2.2% indicates a 98% probability that the conversion rate for the new page is greater than the conversion rate for the old page.

# 

Next, we want to switch gears a little bit and change the method we used for our Bayesian AB Test. In this next section, we followed the code from Example 12. We will use rbinom and rbetabinom to generate our random samples in the simulation.

[RBINOM/RBETABINOM](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/02-rbinom_rbetabinom.md)
