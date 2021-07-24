# Pewlett-Hackard-Analysis
*A Retirement Analysis*
## Project Overview 
### Purpose & Background
The purpose of this analysis is to prepare Pewlett-Hackard, a large company, 
for the upcoming “Silver Tsunami”.  A large number of employees are expected to begin retiring 
at a fast rate.  Pewlett-Hackard wants to be prepared with retirement packages, open positions,
and training opportunities for replacement employees.    
The types of information the HR Department and Management needs is: 
1.	 Identify the retiring employees by their title.
2.   Determine the sum of retiring employees grouped by title.
3.	 Identify the employees eligible for participation in the mentorship program.
4.	 Determine the number of roles-to-fill grouped by title and department.
5.	 Determine the number of qualified, retirement-ready employees to mentor. 
the next generation grouped by title and department.   
### Background:  
In this project, we use **QuickDBD** and Schemas to design databases and writing intermediate-level SQL queries 
to answer important business questions for the company’s HR department. We also utilized **PostreSQL** a data base 
system to load, build, and host company data and **pgAdmin** and the result is a well-designed 
database with reporting capabilities.   
### Data Files – 
-	6 csv files containing employee details and job position information 
### ERD and Schema
-  The entity-relationship diagram (ERD) is a tool we use to design the database table relationships.
-  The drawing is called a schema and it is a blueprint for the conceptual design of the database.    
<p align="center">
  <img width="400" height="400" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/EmployeeDB.png">
</p>

RESULTS:  
1.	**The list of retiring employees** 
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

2.	The **list of retiring employees without duplicates**   
      -  The table includes employee number, first name, last name, title, from-date and to-date. 
      -  The query returns the correct number of records.  The number is 90,398.
      -  This data is more useful because this lists the latest titles that the potential retiree held.   
      -  From this new narrowed down list and revised information we can further analyze and plan.  
<p align="center">
  <img width="400" height="100" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure3rcdcnt.png">
</p>     
<p align="center">
  <img width="400" height="200" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure3list.png">
</p>  
<p align="center">
Table with “ready to retire” employees data withOUT duplicates
</p>

3.	Another way to look at the information to better understand the impacts the retiring employees may have on the organization 
is the number of **retirees grouped by title**.  This table is very insightful.     
    -  This table includes employees’ titles and their sum. 
    -  From this table we can quickly see how many employees with current title we might expect to retire in the next few years. 
 
</p>     
<p align="center">
  <img width="300" height="300" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/Figure4tablefin.png">
</p>  
<p align="center">
Table with counts of retirees grouped by title - 90,398 positions TOTAL
</p>
         
4.	Next, we need to plan.  We need to know who might be eligible for a mentorship program.  
    -  Using a query, we gather 1549 records of employees who are **eligible for a mentorship program** based on their birthdates in the year 1965. 
    -  This table displays the list of employees who are eligble for a mentorship program to better plan for the Silver Tsunami and lessen
    the negative impacts to the organization. Opportunities can be made with some planning.      
<p align="center">
  <img width="400" height="200" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/mentoreligtable.png">
</p>  
<p align="center">
Table with employees listed who could be part of the mentorship program
</p>

### SUMMARY 
Overall, the analysis required was multi-part.  Initial information suggests that the impacts, in terms of numbers 
of roles/positions to be filled as a result of the silver tsunami, are very impactful. The count of employees expected 
to retire totals 90,398 at Pewlett-Hackard.   Planning for the future is needed. 

As we continue to plan, we can think about the future and also grow new talent within the organization.   Mentoring 
programs for the next generation of Pewlett-Hackard employees would benefit everyone.    

AN ADDITIIONAL QUERY THAT WILL HELP US PLAN THE MENTORSHIP PROGRAM - 
The table below is a query based on the **number of positions that will be vacated by the retirees**. Some departments
are impacted more than others.  The below list shows this by the 38 departments.    Development and Production Departments
are most impacted.   
<p align="center">
  <img width="400" height="500" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/table3b_by38dpt.png">
</p>  
<p align="center">
Table with how many positions need to be filled by 38 departments for planning.

Another query that could help us understand mentorship program opportunities could be this information below. 
As we work with each department head to understand if there are enough **qualified retirement ready employees in the departments** 
to mentor the next generation of Pewlett-Hackard employees.  This table is a great place to start to find mentorees for the program.     
This list includes: 
   -  Senior level employees with titles like Manager, Senior Staff, Technique Leader, or Senior Engineer.
   -  Summarized by department then title with a count. 
   -  The table below allows us to see the situation by department for our future planning.
<p align="center">
  <img width="400" height="400" src="https://github.com/mjrotter4445/Pewlett-Hackard-Analysis/blob/main/Pewlett_Hackard_Analysis_Folder/Graphics/tabledel3c.png">
</p>  
<p align="center">
Table with numbers of Senior level employees by department and title
</p>

With a little planning, Packard-Hewlett can really grow and move into the future with a great Management Succession Plan to benefit many
within the organization and have a positive impact on the bottom-line.   
