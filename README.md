# Pewlett-Hackard-Analysis
*A Retirement Analysis*
## Project Overview 
### Purpose & Background
 
The purpose of this analysis is to prepare Pewlett-Hackard, a large company, for the upcoming “Silver Tsunami”.  
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
  <img width="400" height="400" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/EmployeeDB.png">
</p>

RESULTS:  
1.	The list of retiring employees 
    -  The list of retiring employees including employee number, first name, last name, title for employees born in 1952.  
    - 	The query returns 133,776 rows of data.  
    -  The table displays a list of employees who are going to retire in the next few years.  
    -  The list is a start, but we have a few employees who changed positions over the years and their records are showing up twice.   
    -  These records will become our retirement_titles table and csv.  
<p align="center">
   <img width="400" height="100" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure2arecordcount.png">
</p>  
<p align="center">
   <img width="400" height="200" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure2.png">
</p>   

<p align="center">
Table with “ready to retire” employees data with duplicates
</p>

2.	The list of retiring employees without duplicates.   
      -  The table includes employee number, first name, last name, title, from-date and to-date. 
      -  The query returns the correct number of records.  The number is 90,398.
      -  This data is more useful because this lists the latest titles that the potential retiree held.   
      -  From this new narrowed, revised information we can now rewrite the table and data file with 
      these records will become our retirement_titles table and csv

<p align="center">
  <img width="400" height="100" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure3rcdcnt.png">
</p>     
<p align="center">
  <img width="400" height="200" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure3list.png">
</p>  
<p align="center">
Table with “ready to retire” employees data withOUT duplicates
</p>
          
3.	The number of retiring employees grouped by title  
       - This table includes employees’ titles and their sum. 
       - From this table we can quickly see how many employees with current title we might expect to  retire in the next few years.   
<p align="center">
  <img width="300" height="300" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure4tablefin.png">
</p>  
<p align="center">
Table with retiring employees grouped by title  
</p>
          
Insert 2 more queries that might help along these lines -  
<p align="center">
  <img width="400" height="500" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/table3b_by38dpt.png">
</p>  
<p align="center">
Table with how many positions need to be filled by 38 departments so we can have a list to start planning from   
</p>

Insert 2 more queries that might help along these lines -  
<p align="center">
  <img width="400" height="400" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/tabledel3c.png">
</p>  
<p align="center">
Table with numbers of Senior level employees by department and title 
so we can see the make-up of each department for our future plans 
</p>
SUMMARY 



How many roles will need to be filled as the silver tsunami begins to make an impact? 

Are there enough qualified, retirement ready employees in the departments to mento the next generation of Pewlett Hackard employees?  


