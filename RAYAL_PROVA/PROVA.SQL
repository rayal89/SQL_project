WITH mesi as(
    SELECT
        EXTRACT(MONTH from job_posted_date) as mese,
        job_id
    
    FROM
        job_postings_fact as job
    
    WHERE
        EXTRACT(MONTH from job_posted_date)<4
)


SELECT
    job.*,
    mesi.mese
FROM
    job_postings_fact as job

INNER JOIN
    mesi
    on
    mesi.job_id=job.job_id
WHERE
    salary_year_avg>70000