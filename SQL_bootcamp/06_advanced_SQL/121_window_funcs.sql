select 
    DISTINCT emp_no,
    LAST_VALUE(s.from_date) OVER(
        PARTITION BY s.emp_no
        ORDER BY s.from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ),
    LAST_VALUE(s.salary) OVER(
        PARTITION BY s.emp_no
        ORDER BY s.from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
FROM salaries AS s
JOIN dept_emp AS de USING(emp_no)
JOIN departments AS d USING(dept_no)

ORDER BY emp_no;