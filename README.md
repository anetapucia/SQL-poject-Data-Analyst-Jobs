# Introduction
Exploring data job market. Focusing on data analyst roles, this project explores top-paying jobs, in-demand skills, and where high demand meets high salary in data analytics.
SQL queries: 
[project_sql query_1](1_top_paying_jobs.sql)
[project_sql query_2](2_top_paying_jobs_skills.sql)
[project_sql query_3](3_top_demanded_skills.sql)
[project_sql query_4](4_top_paying_skills.sql)
[project_sql query_5](5_optimal_skills.sql)
# Background
Data hails from [SQL Course](https:// lukebarousse.com/sql) by Luke Barrouse which I attended to sharpen my SQL skills.
This project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.
It's packed with insights on job titles, salaries, locations, and essential skills.
### The questions I wanted to answer through my SQL queries were:
1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?
# Tools I Used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical
insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- - **Visual Studio Code:** My go-to for database management and executing SQL queries.
# The Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market.
Here's how I approached each question:
### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles II filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field.
```sql
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
```
Here's the breakdown of the top data analyst jobs in 2023:
- **Wide Salary Range:** Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.
- **Diverse Employers:** Companies like SmartAsset, Meta, and AT&T are among those
offering high salaries, showing a broad interest across different industries.
- **Job Title Variety:** There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.
# What I Learned
Throughout this project, I've broaden my SQL toolkit with some advanced tools:
- ** Complex Query Crafting:** Mastered the art of advanced SQL, merging tables creating CTEs with WITH clauses.
- ** Data Aggregation:** Got comfortable with GROUP BY and aggregate functions like COUNT() and AVG ().
- ** Analytical Insights:** Leveled up my real-world puzzle-solving skills, turning questions into actionable, insightful SQL queries.
