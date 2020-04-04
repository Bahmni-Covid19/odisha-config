set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Concept set
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Location of diagnosis","Location of diagnosis","N/A","Misc",true);

# Add coded values
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Admission to hospital","Admission to hospital","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Current Health Problems","Current Health Problems","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, History of mechanical ventilation","History of mechanical ventilation","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Patient health status","Patient health status","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Patient symptoms","Patient symptoms","Coded","Question",false);

# Add Date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Date of Admission","Date of Admission","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Date of death","Date of death","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Date of isolation","Date of isolation","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Date of onset of symptoms","Date of onset of symptoms","Date","Misc",false);

# Add freetext concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Name of Hospital","Name of Hospital","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Others, Current health problems","Others, Current health problems","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Symptoms, Other","Symptoms, Other","Text","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Capillary Refill","Capillary Refill","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Diastolic Blood Pressure","Diastolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Pulse","Pulse","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Respiratory Rate","Respiratory Rate","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, SpO2","SpO2","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Systolic Blood Pressure","Systolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"AI, Temperature","Temperature","Numeric","Misc",false);

INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Temperature" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,38,NULL,NULL,36,"°C",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Pulse" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,120,NULL,NULL,60,"Beats/Min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Respiratory Rate" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,20,NULL,NULL,13,"Breaths/Min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Systolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,140,NULL,NULL,90,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Diastolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,90,NULL,NULL,60,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, Capillary Refill" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,2,NULL,NULL,0,"secs",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "AI, SpO2" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,100,NULL,NULL,93,"%",1,1);

# Add Child concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Abdominal Pain","Abdominal Pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Asthma","Asthma","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cancer","Cancer","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiomyopathy","Cardiomyopathy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cardiovascular Disease","Cardiovascular Disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chest Pain","Chest Pain","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chills","Chills","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chronic Lung Dz","Chronic Lung Dz","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Chronic Neuro Disease","Chronic Neuro Disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Cough","Cough","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Death","Death","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diabetes","Diabetes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Diarrhea","Diarrhea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Epilepsy","Epilepsy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fever","Fever","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"General Weakness","General Weakness","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Headache","Headache","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Hypertension","Hypertension","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Immunocompromise","Immunocompromise","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Liver Disease","Liver Disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Mental Health Disorder","Mental Health Disorder","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Misc Chronic Disease","Misc Chronic Disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Muscle Aches","Muscle Aches","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Myalgias","Myalgias","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Nausea","Nausea","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"No","No","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Not Recovered","Not Recovered","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Other","Other","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Recovered","Recovered","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Renal Disease","Renal Disease","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Runny Nose","Runny Nose","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Shortness of Breath","Shortness of Breath","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Sore Throat","Sore Throat","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Subjective Fever","Subjective Fever","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Unknown","Unknown","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vomiting","Vomiting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Yes","Yes","N/A","Misc",false);


#Add concetps
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Country","Country","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Province","Province","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"District","District","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Village","Village","Text","Misc",false);
