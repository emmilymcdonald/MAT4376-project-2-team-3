# AB Testing to Simulate the AB Dataset

We were tasked with doing a Bayesian AB Test to simulate the dataset we were given. We took two different routes in order to simulate this. The first method involved the bayesAB library in R, where we simulated both 290,585 random samples to simulate the original quantity in the AB dataset as well as 100 random samples.

[AB Testing - 290,585 Random Samples](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/01-AB.md)

[AB Testing - 100 Random Samples](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/02-AB100.md)

Then, we used a similar method to that of Example 12, provided on the course webpage were we produced posteriors for the old and new pages as well as the success rate for both pages together. In these next two sections, the methods used were very similar except in the first simulation we used rbinom to collect the random samples and in the second simulation we used rbetabinom to collect the random samples. 

[RBINOM](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/03-rbinom.md)

[RBETABINOM](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/04-rbetabinom.md)

*Note about rbetabinom: this function gives a random sample/generation that simulates a beta-binomial distribution. In this function, you provide n number of draws, k number of trials, alpha, and beta. *
