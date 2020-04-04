set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;

#Add Coded Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Discharge condition","Discharge condition","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Disposition","Disposition","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, History of admission to intensive care unit (ICU)","History of admission to intensive care unit (ICU)","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Therapy given","Therapy given","Coded","Question",false);

#Add Date Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Admission Date-Time","Admission Date-Time","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Date of discharge from ICU","ICU-DISCHARGE DATE-TIME","Date","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Date of discharge (hospital)","Hospital-DISCHARGE DATE-TIME","Date","Misc",false);

#Add text concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Other comments","Other comments","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Other, Therapy given","Other, Therapy given","Text","Misc",false);

#Add Child concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Discharged","Discharged","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Fair","Fair","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Good","Good","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Intropes","Intropes","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Non-invasive Ventilation","Non-invasive Ventilation","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Oxygen therapy","Oxygen therapy","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Transfer to other facility","Transfer to other facility","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Vasopressors","Vasopressors","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Poor","Poor","N/A","Misc",false);

#Add Numeric Concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"DN, Days in intensive care unit","Days in intensive care unit","Numeric","Misc",false);
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units,precise,display_precision)
VALUES ((select concept_id from concept_name where name = "DN, Days in intensive care unit" and concept_name_type = 'FULLY_SPECIFIED'  and locale = 'en'  and voided = 0),NULL,NULL,NULL,NULL,NULL,NULL,"",1,1);