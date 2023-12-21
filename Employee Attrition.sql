-- Databricks notebook source
select * from employee_attrition

-- COMMAND ----------

-- MAGIC %md Total employee count

-- COMMAND ----------

select sum(Employeecount) as total_emloyee_count from employee_attrition

-- COMMAND ----------

-- MAGIC %md FIND OUT ATTRITION DIVISION
-- MAGIC

-- COMMAND ----------

select attrition,sum(employeecount) from employee_attrition
group by attrition

-- COMMAND ----------

select sum(employeecount) as Total_Employees,
case when age between 18 and 25 then '18-25'
when age between 26 and 32 then '26-32'
when age between 33 and 40 then '33-40'
else '40+'
end as age_group
from employee_attrition
where Attrition = 'Yes'
group by age_group
order by age_group

-- COMMAND ----------

select department,sum(employeecount) as Total_Employees from employee_attrition
group by department

-- COMMAND ----------

select sum(employeecount) as Total_Employee,
case when education = 1 then 'below college'
when education =2 then 'college'
when education =3 then 'bachelor'
when education =4 then 'master'
else 'doctor'
end as education_group
from employee_attrition
where attrition = 'Yes'
group by education_group

-- COMMAND ----------


