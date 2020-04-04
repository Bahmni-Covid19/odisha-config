set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;


#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Capillary Refill","Capillary Refill","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Diastolic Blood Pressure","Diastolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Pulse","Pulse","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Respiratory Rate","Respiratory Rate","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, SpO2","SpO2","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Systolic Blood Pressure","Systolic Blood Pressure","Numeric","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Temperature","Temperature","Numeric","Misc",false);

INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Temperature" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,38,NULL,NULL,36,"°C",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Pulse" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,120,NULL,NULL,60,"Beats/Min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Respiratory Rate" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,20,NULL,NULL,13,"Breaths/Min",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Systolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,140,NULL,NULL,90,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Diastolic Blood Pressure" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,90,NULL,NULL,60,"mmHg",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, Capillary Refill" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,2,NULL,NULL,0,"secs",1,1);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "PN, SpO2" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,100,NULL,NULL,93,"%",1,1);

# Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Patient symptoms","Patient symptoms","Coded","Question",false);

#Add date concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Date recorded","Date recorded","Date","Misc",false);

#Add Text concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"PN, Symptoms, Other","Symptoms, Other","Text","Misc",false);
