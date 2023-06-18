## Initial Look and Exploration of the Mimic3D Dataset

Before we dove into our exploration, we first needed to determine what each of the variables was in the provided dataset. We compiled the following data dictionary. Take a look at the following link if you want to learn more about the specific variables. 

[Data Dictionary](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/tree/master/MIMIC3D_DataSet)

### Heat Chart for Mimic3D dataset

We looked specifically at the variables that have high correlations with LOSdays as well as relationships between other variables that also have high correlations.

![mimic_heatchart](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/mimic_heatchart.png?raw=true)

The following variables were found to have high correlations in general: 

 * age
 * marital_status
 * AdmitDiagnosis
 * AdmitProcedure
 * age_g
 * AdmitDiagGroup

Additionally, all of the variables that began with 'Num' tended to have high correlations with each other. 

The following variables were found to have high correlations with the LOSdays variable:

 * AdmitDiagnosis
 * AdmitProcedure
 * NumCallouts
 * NumDiagnosis
 * NumRx
 * NumTransfers
 * LOSGroupNum (this one we will not be looking into as it is just a categorization of the LOSdays variable)

With the second set of variables above in mind, we wanted to dive further into the variables to see if we can determine what might be closely related to the number of days a patient stays in the hospital and if we are able to use those variables in the future to possibly predict the length of say of a patient. 

# Variables That Have a High Correlation With LOSdays Variables

<!--- ### Plotting LOSdays as a density function: -->

<!--- ![los_density](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/los_density.png?raw=true) -->

<!--- The average length of stay (in days): 10.11495 -->

### Plotting the Frequency of the LOS

https://fphflg.csb.app/

In the graph above, we have plotted the frequency of LOSdays. The average length of stay is 45.83 days, the median length of stay is 39.33 days, and the mode length of stay is 1.96 days. 

### Plotting Age by Admission Type Against LOS:

*(omitting newborns)*

<!--- ![age_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/age_los.png?raw=true) -->

https://368rhr.csb.app/

In the graph above, in order to get a good picture of the data, we have omitted the newborns (age 0) from the chart. This is because the number of newborns is so much higher in comparison to the other ages, that the readability of the graph would be very poor. The average age is 51.5 years, the median age is 51.5, and the mode age is 52. 

### Plotting the Age Group Against LOS:

<!--- ![age_group_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/age_group_los.png?raw=true) --> 

Looking at the count of LOS by age group:

https://7xct56.csb.app/

The most common age group is 6, which contains people who are between the age of 49 and 64. 

Looking at the maximum LOS by age group: 

https://zn7dfy.csb.app/

The maximum length of stay is 294.63 and the corresponding patient belongs to age group 6. 

### Plotting Patient Gender Against LOS by Admission Type:

<!--- ![gender_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/gender_los.png?raw=true) -->

https://rg9whm.csb.app/

The maximum length of stay for females is 181.88 and the patient was categorized as emergency. The maximum length of stay for males is 294.63 and the patient is categorized as elective. For all admission types except newborns, the male length of stay was higher than the female; for newborns, the highest length of stay for females was 20.88 days more than that of males. 

### Plotting the Admission Type Against LOS:

<!--- ![admit_type_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/admit_type_los.png?raw=true) -->

https://3h32v9.csb.app/

There are four admission types that a patient can be categorized as elective, urgent, newborn, and emergency. The emergency admission type had the highest number of patients at 42,071, followed up by the newborn admission type with 7863 patients. 

### Plotting the Admission Group Against LOS:

*(Hover over the graph to see what each group outputs)*

<!--- ![admit_group_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/admit_group_los.png?raw=true) -->

https://jkksjv.csb.app/

The admission group with the most number of patients was 'certain conditions originating in the perinatal period' with 14,321 patients. The admission group with the lowest number of patients were 'pregnancy, childbirth, and puerperium' with 399 patients (omitting the 'U' and '0' groups). 

### Plotting the Admission Group by Admission Type Against LOS:

*(Hover over the graph and scroll to see what each group outputs)*

https://6mdqy2.csb.app/

Looking specifically at the group 'certain conditions originating in the perinatal period', out of the 14,321 patients, 7,947 of them were newborns. Now, looking at the group 'pregnancy, childbirth, and puerperium', out of the 399 patients, 117 of them were newborns. 

### Plotting the Number of Callouts Against LOS:

*(omitting the outlier of 0 callouts with 30,248 patients)*

<!--- ![numcallouts_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numcallouts_los.png?raw=true) -->

https://38dt62.csb.app/ 

The average number of callouts was 0.81, the median number of callouts was 0.635, and the mode number of callouts was 1,325 (since '0' callouts were omitted). 

### Plotting the Number of Diagnoses Against LOS:

<!--- ![numdiag_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numdiag_los.png?raw=true) -->

https://dhl7h3.csb.app/ 

The average number of diagnoses was 14.6, the median number of diagnoses was 6.53, and the mode number of diagnoses was 1. 

### Plotting the Number of Prescriptions Against LOS:

<!--- ![numrx_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numrx_los.png?raw=true) -->

https://pvgjc8.csb.app/

The average number of prescriptions was 25.9, the median number of prescriptions was 17.5, and the mode number of prescriptions was 0. 

### Plotting the Number of Transfers Against LOS:

<!--- ![numtran_los](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numtran_los.png?raw=true) -->

https://v9lcj8.csb.app/

The average number of transfers was 4.29, the median number of transfers was 2.19, and the mode number of transfers was 0.51.

---

With the results above in mind, we wanted to look into the patients.csv file that was created for the class and run Bayesian Linear Regression to see if we can predict the length of stay of a patient.

[Patients Bayesian Linear Regression Read Me](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/PATIENTS_DataSet/README.md)
