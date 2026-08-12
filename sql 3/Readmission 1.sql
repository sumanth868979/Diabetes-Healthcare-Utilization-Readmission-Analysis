use diabetic_readmission ;
-- Sql validation 
select count(*) from readmission;

describe readmission;

select * from readmission;
select count(*) as total_rows,sum(readmission_30d is null) as null_chk,
                sum(readmitted_30d is null) as null_chk
			
from readmission;

-- So first we will check the 30-day readmissions and its   rate 
select count(*) as total_encounter,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as dd
from readmission;

-- AVG() basically does:
-- (1 + 0 + 0 + 1 + 0) / 5

-- analysis of readmission < 30 by age 
select age ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by age 
order by readmisson_rate  desc;

-- analysis of readmission < 30 by gender
select gender ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by gender
order by readmisson_rate  desc;

-- analysis of readmission < 30 by race
select race ,
       count(*) as encounters,
       sum(readmission_30d) as readmission_30d,
       round(100 * avg(readmission_30d) ,2) as readmisson_rate
from readmission
group by race
order by readmisson_rate  desc;

