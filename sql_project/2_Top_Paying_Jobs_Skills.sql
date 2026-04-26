/* What skills are required for the top paying data analyst jobs? (Question)
-Use top 10 highest paying Data analyst jobs from 1st Query
-Add specific skills required for these roles
-Why? It provides detailed look at which hig-paying jobs demand certain skills, helping
job seekers understand which skills to develop to align with the top salaries
 */

WITH top_paying_jobs AS(
SELECT job_id,
       job_title_short,
       name as Company_Name,
       salary_year_avg

FROM job_postings_fact

LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id

where job_title_short = 'Data Analyst' AND
      job_location = 'Anywhere' AND
      salary_year_avg IS NOT NULL

ORDER BY salary_year_avg DESC

LIMIT 10
)

SELECT top_paying_jobs.*,skills 
FROM top_paying_jobs
INNER JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

ORDER BY salary_year_avg DESC;

/* 📊 Data Analyst Skills Insight (2023)

The analysis of top data analyst roles shows that SQL, Python, and Tableau are the most essential skills, forming the core requirement for most jobs. Supporting skills like Excel, Pandas, R, and Snowflake help candidates stand out, while knowledge of cloud platforms (AWS, Azure) is increasingly valuable due to the shift toward cloud-based data systems.

Visualization tools such as Tableau and Power BI are critical for communicating insights, and familiarity with tools like Git, Jira, and Confluence reflects the growing importance of collaboration in analytics roles.

👉 Key takeaway:
To be competitive, candidates should focus on a strong foundation in SQL, Python, and visualization tools, with added knowledge of cloud and advanced data tools to access higher-paying opportunities.


[
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "company_name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "company_name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "company_name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "company_name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "company_name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "company_name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "company_name": "Motional",
    "salary_year_avg": "189000.0",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "company_name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "company_name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "company_name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "company_name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills": "r"
  }
]

*/