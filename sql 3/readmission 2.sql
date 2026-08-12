select inpatient_history_group from readmission;

-- How does previous inpatient history affect the 30-day readmission rate?
select inpatient_history_group ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by inpatient_history_group
order by readmisson_rate  desc;

-- How does previous emergency visit history affect the 30-day readmission rate?
select emergency_history_group ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by emergency_history_group
order by readmisson_rate  desc;

-- How does medication group relate to 30-day readmission rates?
select medication_group,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by medication_group
order by readmisson_rate  desc;

select time_in_hospital from readmission;

-- How does length of hospital stay affect the 30-day readmission rate?
select concat(time_in_hospital, 'd') as time_in_hospital,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by time_in_hospital
order by  readmisson_rate asc;


-- What happens when we look at both previous hospital admissions AND previous emergency visits together?"
select inpatient_history_group ,
       emergency_history_group,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by inpatient_history_group,
         emergency_history_group
order by readmisson_rate  desc;

select inpatient_history_group ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate,
       round(100 * sum(readmission_30d) / 
       (select sum(readmission_30d) from readmission),2) as share_of_all_readmission
from readmission
group by inpatient_history_group,
         emergency_history_group
order by readmisson_rate  desc;

