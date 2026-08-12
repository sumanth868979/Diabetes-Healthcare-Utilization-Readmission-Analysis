-- Does the patient's recorded A1C category correspond to different 30-day readmission patterns?
select A1Cresult,
    count(*) as encounters,
    sum(readmission_30d) as readmissions_30d,
    round(100 * avg(readmission_30d), 2) as readmission_rate
from readmission
group by A1Cresult
order by  readmission_rate desc;

-- How do maximum serum glucose categories differ in their observed 30-day readmission rates?
select max_glu_serum ,
    count(*) as encounters,
    sum(readmission_30d) as readmissions_30d,
    round(100 * avg(readmission_30d), 2) as readmission_rate
from readmission
group by  max_glu_serum
order by  readmission_rate desc;

-- Is insulin treatment status associated with differences in 30-day readmission outcomes?
select insulin,
    count(*) as encounters,
    sum(readmission_30d) as readmissions_30d,
    round(100 * avg(readmission_30d), 2) as readmission_rate
from readmission
group by  insulin
order by  readmission_rate desc;

-- Do patients receiving diabetes medication show a different 30-day readmission pattern from those who are not?
select diabetesMed,
    count(*) as encounters,
    sum(readmission_30d) as readmissions_30d,
    round(100 * avg(readmission_30d), 2) as readmission_rate
from readmission
group by  diabetesMed
order by  readmission_rate desc;



