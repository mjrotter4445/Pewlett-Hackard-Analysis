-----------------------------------------------------------------------
----DELIVERABLE #1
-----------------------------------------------------------------------
--***************************PART 1  a,b,c  
--number of retiring employees by title MAKE RETIREMENT TITLES
--use this to start   - FEEL confident about this work here -  new table retirement_titles - verify the join
SELECT e.emp_no,
		e.first_name, 
		e.last_name, 
		ti.title, 
		ti.from_date, 
		ti.to_date	
INTO retirement_titles

FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

ORDER BY e.emp_no;
 
--#****************************************from the mod 7 starter code 
--#--number of retiring employees by title MAKE UNIQUE TITLES- no dupes
--#- Use Dictinct with Orderby to remove duplicate rows
#SELECT DISTINCT ON (______) _____,
#______,
#______,
#______
#INTO ourtablename
#FROM _______
#ORDER BY _____, _____ DESC;
#*********copied below here 

-- The Number of Retiring Employees by Title (No Duplicates) - make unique_titles
SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

--*****************************************************
--number of employees by their most recent job title who are about to retire  - MAKE RETIRING TITLES 
--use unique_titles to create summary pivot table of # of positions per title
--retiring_titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;
--**********************************
-----------------------------------------------------------------------------------------------
----DELIVERABLE #2
-----------------------------------------------------------------------------------------------
---The employees eligible for mentorship program to train the next level - MAKE MENTORSHIP_ELIBILITY
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility 
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date  = '9999-01-01')  
ORDER BY e.emp_no, to_date DESC;  




---------------------------------------------------------------------------------------
--DELIVERABLE #3
---------------------------------------------------------------------------------------
SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
de.dept_no,
d.dept_name
--INTO unique_titles_bydept to hold as step 1
INTO unique_tit_bydept
FROM retirement_titles as rt	
INNER JOIN dept_emp as de
ON (rt.emp_no = de.emp_no)
INNER JOIN departments as d 
ON (d.dept_no = de.dept_no)
ORDER BY rt.emp_no, rt.to_date DESC;

-- number of roles that need to be filled by title and department?
SELECT ut.dept_name, ut.title, COUNT(ut.title) 
INTO positions_to_fill
FROM (SELECT title, dept_name from unique_tit_bydept) as ut
GROUP BY ut.dept_name, ut.title
ORDER BY ut.dept_name DESC;

-- Available and qualified staff, retirement-ready to mentor next generation.
SELECT ut.dept_name, ut.title, COUNT(ut.title) 
INTO available_staff
FROM (SELECT title, dept_name from unique_tit_bydept) as ut
WHERE ut.title IN ('Manager', 'Senior Staff', 'Technique Leader','Senior Engineer')
GROUP BY ut.dept_name, ut.title
ORDER BY ut.dept_name DESC;


--xtra idea  WHERE (title LIKE 'Senior%') OR (title LIKE '%Leader') 