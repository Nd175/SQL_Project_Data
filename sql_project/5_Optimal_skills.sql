/* What are most optimal skills to learn (AKA it's in high demand & a high paying skill)?
-Identify skills in high demand & associated with high avg.salary for data analyst roles
-Concentrates on remote positions with specified salaries
-Why? Targets skills that offer job security (High Demand) & Finacial benefits (High Salaries),
offering strategic insights for career development in data analysis. */

WITH skills_demand AS(
    SELECT skills_dim.skill_id,
    skills_dim.skills,
    count(skills_job_dim.job_id) AS Demand_Count

FROM job_postings_fact

INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

where job_title_short = 'Data Analyst'
      AND salary_year_avg IS NOT NULL
      AND job_work_from_home = TRUE

GROUP BY skills_dim.skill_id   

), average_salary AS(
    SELECT skills_job_dim.skill_id,
    round(avg(job_postings_fact.salary_year_avg),0) AS avg_salary

FROM job_postings_fact

INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

where job_title_short = 'Data Analyst'
      AND salary_year_avg IS NOT NULL
      AND job_work_from_home = TRUE

GROUP BY skills_dim.skill_id  
)

SELECT skills_demand.skill_id,
skills_demand.skills,
Demand_Count,
avg_salary

from skills_demand

INNER JOIN average_salary on skills_demand.skill_id = average_salary.skill_id

where Demand_Count > 10

ORDER BY avg_salary DESC, Demand_Count DESC

LIMIT 25;

-- Rewriting same query more concisely
SELECT skills_dim.skill_id,
       skills_dim.skills,
       count(skills_job_dim.job_id) as Demand_Count,
       round(avg(job_postings_fact.salary_year_avg),0) AS avg_salary

from job_postings_fact

INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

where job_title_short = 'Data Analyst'
      AND salary_year_avg IS NOT NULL
      AND job_work_from_home = TRUE

GROUP BY skills_dim.skill_id  

HAVING count(skills_job_dim.job_id)>10

ORDER BY avg_salary DESC, Demand_Count DESC

LIMIT 25;