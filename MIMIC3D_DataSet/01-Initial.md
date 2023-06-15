## Initial Look and Exploration of the Mimic3D Dataset

Before we dove into our exploration, we first needed to determine what each of the variables were in the provided dataset. We compiled the following data dictionary. 

### Data Dictionary for the dataset

  * hadm_id: patient identification demographic
  * gender: male or female
  * age: age of the patient
  * age_g: the age of the patient categorized into groups
  * religion: religion of the patient
  * marital_status: whether or not the patient is married
  * ethnicity: the ethnicity of the patient
  * insurance: whether or not the patient has insurance
  * admit_type: categorical variable of whether or not the patient is newborn, urgent, emergency, or elective
  * admit_location: where the patient was located
  * AdmitProcedure: admission diagnosis
  * NumCallouts: the daily average numbers of callouts for consultation from another medical professional or department
  * NumProcs: the number of procedures (surgical procedures, diagnostic tests, or other medical interventions)
  * NumCPTevents: the Current Procedural Terminology (CPT) events (CPT stands for Current Procedural Terminology, which is a standardized system of medical codes used to report procedures and services. NumCPTevents represents the number of CPT events recorded for the patient during their hospital stay)
  * NumInput: the number of input events (volume or amount of fluids, medications, or other substances administered to the patient. It is typically measured in some unit of measurement (e.g., milliliters) and represents the input into the patient's body.)
  * NumLabs: the number of labs (blood tests, urine tests, imaging studies, or other diagnostic investigations)
  * NumMicroLabs: the number of microbiology labs (Microbiology labs focus on the identification and analysis of microorganisms (e.g., bacteria, viruses) that may be related to infections or other medical conditions)
  * NumNotes: the number of notes (physician's observations, progress reports, treatment plans, and other relevant information)
  * NumOutput: the number of output events (volume or amount of fluids, such as urine or drainage, that the patient excreted or
had removed from their body in millimetres)
  * NumRx: number of prescriptions or medications ordered for the
patient during their hospital stay
  * NumProcEvents: the number of procedural events (insertion of an arterial line, surgeries, diagnostic procedures, therapeutic interventions, and other medical actions carried out as part of the patient's healthcare)
  * NumTransfers: the number of transfers between care units, wards or departments within the hospital
  * NumChartEvents: the number of chart events (documentation of important medical information, such as vital signs, medication administration, nursing assessments, and other relevant data that was taken during hospitalization)
  * ExpiredHospital: binary variable for mortality - 0: alive, 1: deceased
  * TotalNumInteract: the summary of all the daily average numbers (sum of all variables that begin with 'Num'... consultations, discussions, or interactions related to care planning or treatment
decisions)
  * **LOSdays: the patient length of stay in numerical values in the ICU**
  * LOSgroupNum: the patient length of stay in categorial value
    * 0: 0-4 days
    * 1: 4-8 days
    * 2: 8-12 days
    * 3: >12 days

Sources:
  * [Trends and Applications in Formation Systems and Technologies: Volume 4 (p. 290)](https://books.google.ca/booksid=jj8mEAAAQBAJ&pg=PA290&lpg=PA290&dq=NumDiagnosis+NumProcs+AdmitProcedure+NumCPTevents+NumInput+NumLabs+NumMicroLabs+NumNotes+NumOutput+NumRx+NumProcEvents+NumTransfers+NumChartEvents+ExpiredHospital+TotalNumInteract+LOSgroupNum&source=bl&ots=7mYlsmHXYF&sig=ACfU3U1uUnfWBGQcDTwSHTcxvscV6slJAQ&hl=en&sa=X&ved=2ahUKEwjNudzL6q7_AhX4jokEHS-pDZEQ6AF6BAggEAM#v=onepage&q=NumDiagnosis%20NumProcs%20AdmitProcedure%20NumCPTevents%20NumInput%20NumLabs%20NumMicroLabs%20NumNotes%20NumOutput%20NumRx%20NumProcEvents%20NumTransfers%20NumChartEvents%20ExpiredHospital%20TotalNumInteract%20LOSgroupNum&f=false)
  * [Proceedings of the 7th International Conference on the Applications of Science and Mathematics 2021 (p. 372)](https://books.google.ca/books?id=5qd3EAAAQBAJ&pg=PA372&lpg=PA372&dq=medical+dataset+glossary+NumMicroLabs%09NumNotes%09NumOutput%09NumRx%09NumProcEvents&source=bl&ots=lTXPeFn_3w&sig=ACfU3U0WBIhArvTx6bFen5EdG_QsSIq_ug&hl=en&sa=X&ved=2ahUKEwiz0ZGa8a7_AhVbkYkEHVRTC8oQ6AF6BAgIEAM#v=onepage&q=medical%20dataset%20glossary%20NumMicroLabs%09NumNotes%09NumOutput%09NumRx%09NumProcEvents&f=false)

### Heat Chart for Mimic3D dataset

We looked specifically at the variables that has high correlations with LOSdays, but also looked into those that had high correlations in general.

![mimic_heatchart](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/mimic_heatchart.png?raw=true)

Plotting the variable NumDiagnosis against NumTransfers with categorical variable AdmitDiagGroup

![numdiag_numtran_admit_group](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numdiag_numtran_admit_group.png?raw=true)

Plotting the variable NumDiagnosis against NumTransfers with categorical variable admit_type

![numdiag_numtran_admit_type](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/mimic_images/numdiag_numtran_admit_type.png?raw=true)

With the results above in mind, specifically the heat chart with variable correlations, we wanted to dive further into the variables with a high correlation (close to 1 or -1) to the LOSdays variable. 

[Exploration of Variables Related to Length of Stay (LOS)](https://github.com/EvaGostiuk/MAT4376-project-2-team-3/blob/master/MIMIC3D_DataSet/02-LOS_Exploration.md)
