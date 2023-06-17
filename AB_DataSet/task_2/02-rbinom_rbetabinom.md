# Simulating a Bayesian AB Test

In the following two simulations, we are assuming around a 12% conversion rate and will use that rate as the base distribution for the simulations. 

### Using rbinom to Simulate a Bayesian AB Test for the AB Dataset



![rbinom_old](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbinom_old.png?raw=true)

![rbinom_new](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbinom_new.png?raw=true)

<!--- ![rbinom_success](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbinom_success.png?raw=true) -->

The old page has around an average success rate of 16.5% and the new page has around an average success rate of 16.9%.  

### Using rbetabinom to Simulate a Bayesian AB Test for the AB Dataset

In this next simulation, we will be using rbetabinom to simulate a Bayesian AB test by pulling random samples from a beta-binomial distribution.

![rbetabinom_old](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbeta_old.png?raw=true)

![rbetabinom_new](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbeta_new.png?raw=true)

<!--- ![rbetabinom_success](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/images/rbeta_success.png?raw=true) -->

The old page has around an average success rate of 16.7% and the new page has around an average success rate of 16.4%. This is consistent with the success rates when using a random binomial distribution to run the simulation. 

# 

Now, we want to switch gears a little bit and focus on performing inference on the AB dataset and determining whether or not the dataset converges in its posterior probabilities. 

[Posterior Probabilities Read Me](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/README.md)
