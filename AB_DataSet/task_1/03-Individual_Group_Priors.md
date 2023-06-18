# Looking at Each Group with Different Prior Beliefs

### Looking Into How an Increase in Treatment Data Points Causes Four Different Priors All to Converge to the Same Value

Now, we want to just take a look at the treatment group to see whether or not there is a value of convergence and if so, at what number of users does this occur. We took 12 subsets of 100 random treatment data points and looked into their convergence with those same four initial priors from the previous page:

For the first prior, we got the following results:

![priors1 - treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior1_treatment.png?raw=true)

For the second prior, we got the following results:

![priors2 - treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior2_treatment.png?raw=true)

For the third prior, we got the following results:

![priors3 - treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior3_treatment.png?raw=true)

For the fourth prior, we got the following results:

![priors4 - treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior4_treatment.png?raw=true)

Notice a similar behaviour in the results above as on the previous page. Prior 1 converged to a value around 0.45 by 128 users; prior 2 by 512 users; prior 3 almost immediately; and prior 4 by 128 users. The treatment group converges to the same point and by the same number of users as in the overall dataset. 

### Looking Into How an Increase in Control Data Points Causes Four Different Priors All to Converge to the Same Value

Now, we want to repeat the same process as above but with the control group instead. We started by taking 12 subsets of 100 random control data points and looked into their convergence with the same initial priors.

For the first prior, we got the following results:

![priors1 - control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior1_control.png?raw=true)

For the second prior, we got the following results:

![priors2 - control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior2_control.png?raw=true)

For the third prior, we got the following results:

![priors3 - control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior3_control.png?raw=true)

For the fourth prior, we got the following results:

![priors4 - control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior4_control.png?raw=true)

You'll notice a similar behaviour in the 4 results above as those on the previous page. Prior 1 converged to a value around 0.45 by 128 users; prior 2 by 512 users; prior 3 almost immediately; and prior 4 by 128 users. The control group converges to the same point and by the same number of users as in the overall dataset and those in the treatment group. This means that no matter what group you belong to and no matter what prior beliefs you have, the data will always converge to a normal distribution with a mean of around 0.45. 

---

Now we will switch gears and look into AB Testing of the dataset.

[AB Testing Read Me](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_2/README.md)
