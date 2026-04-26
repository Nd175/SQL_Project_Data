-- Question
/* What are the top paying data analyst jobs?
-Identify top 10 highest paying data anlyst roles that are available remotely
-Focuses on job postings with specified salaries (Removing Nulls)
- Why? Highlight top paying opportunites for data analysts, offering insights into employment opportunities */

SELECT job_id,
       job_title_short,
       name as Company_Name,
       job_location,
       job_schedule_type,
       salary_year_avg,
       job_posted_date

FROM job_postings_fact

LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id

where job_title_short = 'Data Analyst' AND
      job_location = 'Anywhere' AND
      salary_year_avg IS NOT NULL

ORDER BY salary_year_avg DESC

LIMIT 10;   