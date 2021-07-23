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

*****************************************************
--number of employees by their most recent job title who are about to retire  - MAKE RETIRING TITLES 
--use unique_titles to create
--retiring_titles

SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;
**********************************
