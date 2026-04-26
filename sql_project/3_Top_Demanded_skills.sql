/* What are the most in-demand skills for data analyst?
-Join job postings to inner join table similar to query 2
-Identify top-5 in-demand skills for data analyst
-Focus on all job-postings
-Why? Retrieves top 5 skills with highest demand in job market, providing
insights into most valuable skills for job seekers */

SELECT 
skills,
count(skills_job_dim.job_id) AS Demand_Count

from job_postings_fact

INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

WHERE job_title_short = 'Data Analyst'

GROUP BY skills

ORDER BY Demand_Count DESC

LIMIT 5;