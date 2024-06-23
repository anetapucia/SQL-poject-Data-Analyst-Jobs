/*
What are the top-paying data analyst jobs?
- Identifying the top 10 highiest-paying Data Analyst roles that are available remotely.
- Focus on job postings with specified salary (remove nulls).
- Why? Highlighting the top oportunities for Data Analyst available.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_sChedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
