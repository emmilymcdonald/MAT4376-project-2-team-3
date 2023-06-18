# Bayesian Linear Regression of the Patients.csv File
---

### Building Prediction Model

First we explored which variables in dataset can be useful for the Bayesian Regression Model by looking at the correlations between variables.

> [!info]- Correlation strength between different Length of Stay and columns in preprocessed Patients.csv
> (*Please note that `LOSgroupNum` is a general groups of LOS*)
> ```
> LOS                                                                      1.000000
> LOSgroupNum                                                              0.952839
> BloodtypesRHpositive                                                     0.562401
> Locationdistance                                                         0.326116
> MaritalStatusWidowed                                                     0.291003
> Closedist                                                                0.284281
> Weight                                                                   0.246329
> AdmitDiagGroupNervousSystem                                              0.223795
> AdmitDiagGroupCirculatorySystem                                          0.209845
> SeverityofinjuriesNonlifeThreatening                                     0.202404
> Inpatientoutpatient                                                      0.201374
> ConditionatdischargeWorsened                                             0.186160
> PaymentmethodOther                                                       0.186160
> BloodtypesRHnegative                                                     0.186160
> Costofstay                                                               0.184872
> BloodtypesO                                                              0.164904
> AdmissionTypeUrgent                                                      0.164404
> PaymentmethodCreditcard                                                  0.149489
> SeverityofinjuriesSevere                                                 0.144277
> Income                                                                   0.128434
> SeverityofinjuriesLifethreatening                                        0.120850
> AdmitDiagGroupRespiratorySystem                                          0.119381
> ConditionatdischargeStable                                               0.116258
> AdmitDiagGroupInjuryPoisoningCertainOtherConsequencesofExternalCauses    0.097219
> ConditionatdischargeImproved                                             0.085010
> PaymentmethodCash                                                        0.077209
> AdmissionTypeElective                                                    0.076806
> MaritalStatusMarried                                                     0.075820
> PaymentmethodInsurance                                                   0.073041
> AdmitDiagGroupEndocrineNutritionalMetabolic                              0.069990
> AdmissionTypeEmergency                                                   0.065322
> BloodtypesB                                                              0.059453
> AdmitDiagGroupDigestiveSystem                                            0.055532
> AdmitDiagGroupMentalandBehavioralDisorders                               0.055436
> Gender                                                                   0.054097
> MaritalStatusSingle                                                      0.051600
> PaymentmethodDebitCard                                                   0.045217
> MaritalStatusDivorced                                                    0.043103
> Age                                                                      0.041908
> Previousadmission                                                        0.040925
> Height                                                                   0.036076
> AdmitDiagGroupSymptomsSignsandAbnormalClinicalandLabFindings             0.035272
> AdmitDiagGroupMusculoskeletalandConnectiveTissue                         0.033406
> BloodtypesAB                                                             0.033189
> ConditionatdischargeUnchanged                                            0.025686
> SeverityofinjuriesSuperficial                                            0.017865
> AdmitDiagGroupPregnancyChildbirthandPuerperium                           0.007181
> ageg                                                                     0.006925
> BloodtypesA                                                              0.005614 

Instead of having to define probability distributions for each of the model parameters separately, we pass created a formula which relating selected input variables to the target. Here is the formula:

```
LOS ~ AdmissionTypeUrgent + AdmitDiagGroupCirculatorySystem + AdmitDiagGroupInjuryPoisoningCertainOtherConsequencesofExternalCauses + AdmitDiagGroupNervousSystem + AdmitDiagGroupRespiratorySystem + BloodtypesO + BloodtypesRHnegative + BloodtypesRHpositive + Closedist + ConditionatdischargeImproved + ConditionatdischargeStable + ConditionatdischargeWorsened + Costofstay + Income + Inpatientoutpatient + Locationdistance + MaritalStatusWidowed + PaymentmethodCash + PaymentmethodCreditcard + PaymentmethodOther + SeverityofinjuriesLifethreatening + SeverityofinjuriesNonlifeThreatening + SeverityofinjuriesSevere + Weight
```

After fitting the model we got following results:

> [!info]- Priors for Model
> ![](/PATIENTS_DataSet/images/priors.png)

> [!info]- Model Trace Graph 
> ![](/PATIENTS_DataSet/images/trace.png)

 ![](/PATIENTS_DataSet/images/results_trace.png)

From which we can approximate length of stay equation by using means and sd of trace summary table above:

```
LOS ~ N( AdmissionTypeUrgent*1.844 + AdmitDiagGroupCirculatorySystem*-0.661 + AdmitDiagGroupInjuryPoisoningCertainOtherConsequencesofExternalCauses-0.602
 + AdmitDiagGroupNervousSystem*2.451 + AdmitDiagGroupRespiratorySystem*0.174
 + BloodtypesO*-0.920 + BloodtypesRHnegative*0.865 + BloodtypesRHpositive 23.845
 + Closedist 0.031 + ConditionatdischargeImproved*2.133 + ConditionatdischargeStable1.501 + ConditionatdischargeWorsened*0.955 + Costofstay0.000 + Income1.197 + Inpatientoutpatient*1.172 + Locationdistance*0.049 + MaritalStatusWidowed*3.507 + PaymentmethodCash-1.997 + PaymentmethodCreditcard*-0.028
 + PaymentmethodOther*-2.695 + SeverityofinjuriesLifethreatening 2.466 + SeverityofinjuriesNonlifeThreatening*1.794 + SeverityofinjuriesSevere*3.945 + Weight*-0.024 -1.799, 17860.283245)
```

### Predicting Probability That  Length of Stay Is Longer Than Two Days

By the model built above, we can predict the average length of stay by substituting selected input variables in the formula by their  mean values in the data. 

> [!info]- Mean Values
> ```AdmissionTypeUrgent                                                         0.229508
> AdmitDiagGroupCirculatorySystem                                             0.098361
> AdmitDiagGroupInjuryPoisoningCertainOtherConsequencesofExternalCauses       0.081967
> AdmitDiagGroupNervousSystem                                                 0.049180
> AdmitDiagGroupRespiratorySystem                                             0.245902
> BloodtypesO                                                                 0.426230
> BloodtypesRHnegative                                                        0.016393
> BloodtypesRHpositive                                                        0.016393
> Closedist                                                                   0.295082
> ConditionatdischargeImproved                                                0.393443
> ConditionatdischargeStable                                                  0.508197
> ConditionatdischargeWorsened                                                0.016393
> Costofstay                                                               5452.355246
> Income                                                                      0.612022
> Inpatientoutpatient                                                         0.557377
> Locationdistance                                                           16.165574
> MaritalStatusWidowed                                                        0.065574
> PaymentmethodCash                                                           0.016393
> PaymentmethodCreditcard                                                     0.311475
> PaymentmethodOther                                                          0.016393
> SeverityofinjuriesLifethreatening                                           0.163934
> SeverityofinjuriesNonlifeThreatening                                        0.442623
> SeverityofinjuriesSevere                                                    0.245902
> Weight                                                                     73.344262

Thus by substituting, we get  that length of stay is approximated by  ~ N(3.0434, 17860.283245)

Then by calculating cumulative distribution function of N(3.0434, 17860.283245) < 2, we get that probability of length of stay greater than two is: **0.5031145985710281** .
