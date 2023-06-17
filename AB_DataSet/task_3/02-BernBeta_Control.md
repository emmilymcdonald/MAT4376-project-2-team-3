# Using the BernBeta Function to Look at the Posteriors for the Control Group and Determine Possible Convergence

We performed 8 tests using BernBeta on the control group when the results from the previous test were used as the base for the next test. Once again, we took the data points from each random sample that was taken and were removed from the dataset so that duplicates in the simulation were avoided. We will assume a 12% conversion rate for the control group. The results are as follows:

Test 1: 

![test1control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test1control.png?raw=true)

Test 2: 

![test2control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test2control.png?raw=true)

Test 3: 

![test3control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test3control.png?raw=true)

Test 4: 

![test4control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test4control.png?raw=true)

Test 5: 

![test5control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test5control.png?raw=true)

Test 6: 

![test6control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test6control.png?raw=true)

Test 7: 

![test7control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test7control.png?raw=true)

Test 8: 

![test8control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test8control.png?raw=true)

<!--- Test 9: -->

<!--- ![test9control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test9control.png?raw=true) -->

<!--- Test 10: -->

<!--- ![test10control](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/AB_DataSet/task_3/control_images/test10control.png?raw=true) -->

By the 8th test, the lower bound for the HDI interval sat between 0.94 and 0.97 and the upper bound sat between 0.136 and 0.141. The lower and upper bounds sat in this region for tests 5-8, and even stay consistent after (although those tests are not included due to repetitiveness). This means that by test 8 (or 800 random data points), the size of the data is irrelevant and the posterior will converge to a mean between 0.94 and 0.141 consistently. This is a similar outcome to that of the treatment group, and since the distributions of both groups were uniform and they had similar conversion rates, it is to be expected.  

# 

Now, we want to completely change the direction of our analysis and focus on a new dataset, called MIMIC3D.

[Mimic Dataset Exploration Read Me](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/README.md)
