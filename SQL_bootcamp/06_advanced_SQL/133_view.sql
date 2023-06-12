
-- Creating view
CREATE OR REPLACE VIEW last_salary_change AS
SELECT 
    e.emp_no,
    MAX(s.from_date)
    
FROM salaries as s

JOIN employees as e USING(emp_no)
JOIN dept_emp as de USING(emp_no)
JOIN departments AS d USING(dept_no)

GROUP BY e.emp_no
ORDER BY e.emp_no


-- Using view
-- Will act like a table
SELECT * FROM last_salary_change

-- Using view as a join
SELECT 
* 
FROM salaries
JOIN last_salary_change AS l USING(emp_no)
    WHERE from_date = l.max
ORDER BY emp_no