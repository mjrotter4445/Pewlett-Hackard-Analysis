# Pewlett-Hackard-Analysis
*A Retirement Analysis*

## Project Overview 
 
### Purpose & Background
 
The purpose of this analysis is to prepare Pewlett-Hackard, a large company, for the upcoming “silver Tsunami”.  
A large number of employees are expected to begin retiring at a fast rate.  Pewlett-Hackard wants to be prepared 
with retirement packages, open positions, and training opportunities for replacement employees.    
The types of information the HR Department needs is: 
1.	 Identify the retiring employees by their title
2.  Determine the sum of retiring employees grouped by title
3.	 Identify the employees eligible for participation in the mentorship program
4.	 Determine the number of roles-to-fill grouped by title and department
5.	 Determine the number of qualified, retirement-ready employees to mentor 
the next generation grouped by title and department.   


### Background:  
In this project, we use **QuickDBD** and Schemas to design databases and writing intermediate-level SQL queries 
to answer important business questions for the company’s HR department. We also utilized **PostreSQL** a data base 
system to load, build, and host company data and **pgAdmin** The result is a well-designed database with reporting capabilities.   

### Data Files – 
-	6 csv files containing employee details and job position information 

### ERD and Schema
The entity-relationship diagram (ERD) is a tool we use to design the database table relationships. 
The drawing is called a schema and it is a blueprint for the conceptual design of the database.    

<p align="center">
  <img width="400" height="400" src="xxx">
</p>

RESULTS:  
1.	The list of retiring employees 
2.	The list of retiring employees including employee number, first name, last name, title, 2.	From data-to-date
3.	The query returns _____________rows
4. The table displays a list of employees who is going to retire in the next few years.  
5. The list is a start, but we have a few employees who changed positions over the
  of	years and their records are showing up twice.   

<p align="center">
   <img width="400" height="100" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure2arecordcount.png">
</p>  Insert the report here -  Fig 2.  Table with “ready to retire” employees data

<p align="center">
   <img width="200" height="200" src="xxxxxxx.png">
</p>  Insert the report here -  Fig 2.  Table with “ready to retire” employees data

2.	The list of retiring employees 
1. The table includes employee number, first name, last name, title, from-date and to-date. 
2.	The query returns the correct number of records.  The number is _______________.

<p align="center">
  <img width="200" height="200" src="xxxxxxx.png">
</p>  Insert the report here -  Fig 3.  Table with employees data for those retirement-ready without duplicates

<p align="center">
  <img width="200" height="200" src="xxxxxxx.png">
</p>  Insert the report here -  Fig 3.  Table with employees data for those retirement-ready without duplicates

3.	The number of retiring employees grouped by title  
       - This table includes employees’ titles and their sum. 
       - The query returns a cohesive table with 7 rows.  
       - From this table we can quickly see how many employees with current title we might expect to  retire in the next few years.   

<p align="center">
  <img width="200" height="200" src="xxxxxxx.png">
</p>  Insert the report here -  Fig 4.  Table with employee grouped by title
  
<p align="center">
  <img width="200" height="200" src="xxxxxxx.png">
</p>  Insert the report here -  Fig 4.  Table with employee grouped by title
  

SUMMARY 

Insert 2 more queries that might help along these lines -  

How many roles will need to be filled as the silver tsunami begins to make an impact? 

Are there enough qualified, retirement ready employees in the departments to mento the next generation of Pewlett Hackard employees?  


