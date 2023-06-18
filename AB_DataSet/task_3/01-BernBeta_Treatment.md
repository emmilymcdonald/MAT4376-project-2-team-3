# Using the BernBeta Function to Look at the Posteriors for the Treatment Group and Determine Possible Convergence

We performed 8 tests using BernBeta on the treatment group when the results from the previous test were used as the prior for the next test. The data points from each random sample that was taken were removed from the dataset so that duplicates in the simulation were avoided. We will assume a 12% conversion rate for the treatment group and will use that as our first prior. The results are as follows:

Test 1: 

![test1treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test1treatment.png?raw=true)

Test 2: 

![test2treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test2treatment.png?raw=true)

Test 3: 

![test3treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test3treatment.png?raw=true)

Test 4: 

![test4treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test4treatment.png?raw=true)

Test 5: 

![test5treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test5treatment.png?raw=true)

Test 6: 

![test6treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test6treatment.png?raw=true)

Test 7: 

![test7treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test7treatment.png?raw=true)

Test 8:

![test8treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test8treatment.png?raw=true)

<!--- Test 9: -->

<!--- ![test9treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test9treatment.png?raw=true) -->

<!--- Test 10: -->

<!--- ![test10treatment](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/treatment_images/test10treatment.png?raw=true) -->

By the 8th test, the lower bound for the HDI interval sat between 0.93 and 0.95 and the upper bound sat between 0.136 and 0.141. The lower and upper bounds sat in this region for tests 6-8, and even stay consistent after (although those tests are not included due to repetitiveness). This means that by test 8 (or 800 random data points), the size of the data is irrelevant and the posterior will converge to a mean between 0.93 and 0.141 consistently. 

---

Now, we want to do the same analysis using the same method but on the control group to see if/where things change. 

[BernBeta for the Control Group](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/02-BernBeta_Control.md)
