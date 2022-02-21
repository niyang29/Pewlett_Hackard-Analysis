-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

--Deliverable One: Create Retirement 
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retirement 