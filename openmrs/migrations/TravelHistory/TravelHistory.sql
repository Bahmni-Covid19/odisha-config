set @concept_id = 0;
set @concept_short_id = 0;
set @concept_full_id = 0;
set @count = 0;
set @uuid = NULL;


# Add coded concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Close contact with person with acute respiratory infection 14 days prior to developing symptoms","Close contact with person with acute respiratory infection 14 days prior to developing symptoms","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Contact setting","Contact setting","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Has the patient had contact with a probable or confirmed case in the 14 days prior to symptom onset? :","Has the patient had contact with a probable or confirmed case in the 14 days prior to symptom onset? :","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, History of recent travel in past 14 days","History of recent travel in past 14 days","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Recent exposure to live animal market","Recent exposure to live animal market","Coded","Question",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Visited health facility in past two weeks","Visited health facility in past two weeks","Coded","Question",false);

# Add Text concepts

call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Case identifiers","Case identifiers","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, City visited (text)","City visited (text)","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Country visited","Country visited","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Detailed location information contact with person","Location of exposure to sinfected person","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Detailed location information exposure to animal market","Location of exposure to animal market","Text","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"TH, Other, Contact setting","Other, Contact setting","Text","Misc",false);

# Add child concepts
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Family setting","Family setting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Healthcare setting","Healthcare setting","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Others","Others","N/A","Misc",false);
call add_concept(@concept_id,@concept_short_id,@concept_full_id,"Work place","Work place","N/A","Misc",false);


INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "TH, Detailed location information contact with person" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 'Capture Location/City/Country','en',1,now(),NULL,NULL,uuid());
INSERT INTO concept_description (concept_id,description,locale,creator,date_created,changed_by,date_changed,uuid)
VALUES
((select concept_id from concept_name where name = "TH, Detailed location information exposure to animal market" and concept_name_type = 'FULLY_SPECIFIED' and locale = 'en' and voided = 0),
 'Capture Location/City/Country','en',1,now(),NULL,NULL,uuid());