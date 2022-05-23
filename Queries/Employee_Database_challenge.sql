-- Employee_Database_challenge
-- Deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
    INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

Select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

Select * from unique_titles

-- Creating retiring_titles.csv
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

-- Deliverable 2

SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibility
FROM employees as e
    INNER JOIN dept_emp as de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles as t
    ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

Select * from unique_titles

-- Deliverable 3 
-- Add department # and name to unique_title table
Select Distinct On (ut.emp_no) 
	ut.emp_no, 
	ut.first_name, 
	ut.last_name, 
	ut.title, 
	de.dept_no, 
	d.dept_name
Into unique_dept
FROM unique_titles as ut
	Left Join dept_emp as de
	On (ut.emp_no = de.emp_no)
	Left Join departments as d
	On (de.dept_no = d.dept_no)
ORDER By ut.emp_no;	

-- Count retirees by department
SELECT COUNT(ud.emp_no), ud.dept_name
INTO retiring_depts
FROM unique_dept as ud
GROUP BY ud.dept_name
ORDER BY COUNT (ud.emp_no) DESC;

