# Looking into how an increase in data points causes four different priors all to converge to the same median

Next, we decided we wanted to switch gears and look into how different priors will converge based on the number of data points pulled. 

First, we took 12 subsets of 100 random data points of either group and looked into their convergence with the following four initial priors:

<!--- ![priors](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/priors.png?raw=true) -->

Prior 1: 

https://59p5dm.csb.app/

Prior 2:

https://sg2srd.csb.app/

Prior 3: 

https://3vqsmr.csb.app/

Prior 4: 

https://mtpjc3.csb.app/

For the first prior, we got the following results:

![priors1 - all](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior1_all.png?raw=true)

For the second prior, we got the following results:

![priors2 - all](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior2_all.png?raw=true)

For the third prior, we got the following results:

![priors3 - all](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior3_all.png?raw=true)

For the fourth prior, we got the following results:

![priors4 - all](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/prior4_all.png?raw=true)

For all four priors, you can see that by 1024 users the distribution is consistently centred relatively above 0.45. This means that when looking at the entire dataset, it doesn't matter what initial belief you impose on the distribution of the data it will always converge to around the same value. 

# 

Next, we wanted to look specifically at each group and how the different priors impacted the convergence of the data.

[Individual Group Priors](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_1/04-Individual_Group_Priors.md)
