## Initial Look and Exploration of the Mimic3D Dataset

Before we dove into our exploration, we first needed to determine what each of the variables was in the provided dataset. We compiled the following data dictionary. 



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

# 

With the second set of variables above in mind, we wanted to dive further into the variables to see if we can determine what might be closely related to the number of days a patient stays in the hospital and if we are able to use those variables in the future to possibly predict the length of say of a patient. 

[Exploration of Variables Related to Length of Stay (LOS)](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/02-LOS_Exploration.md)
