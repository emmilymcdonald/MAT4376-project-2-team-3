  ### Data Dictionary for the dataset

  * hadm_id: patient identification demographic
  * gender: male or female
  * age: age of the patient
  * age_g: the age of the patient categorized into groups
  * religion: the religion of the patient
  * marital_status: whether or not the patient is married
  * ethnicity: the ethnicity of the patient
  * insurance: whether or not the patient has insurance
  * admit_type: categorical variable of whether or not the patient is a newborn, urgent, emergency, or elective
  * admit_location: where the patient was located
  * AdmitProcedure: admission diagnosis
  * NumCallouts: the daily average number of callouts for consultation from another medical professional or department
  * NumProcs: the number of procedures (surgical procedures, diagnostic tests, or other medical interventions)
  * NumCPTevents: the Current Procedural Terminology (CPT) events (CPT stands for Current Procedural Terminology, which is a standardized system of medical codes used to report procedures and services. NumCPTevents represents the number of CPT events recorded for the patient during their hospital stay)
  * NumInput: the number of input events (volume or amount of fluids, medications, or other substances administered to the patient. It is typically measured in some unit of measurement (e.g., millilitres) and represents the input into the patient's body.)
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
