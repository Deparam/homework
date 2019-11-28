--Making one table 

Select * FROM department_data;
Select * FROM dept_manager;
Select * FROM emp_data;
Select * FROM emp_salary;
Select * FROM emp_title;
Select * FROM employee_info;



--Question 1. 
--list colums from tables to join and exemp the common column

SELECT i.emp_no, i.last_name, i.first_name, i.gender, s.salary
FROM employee_info i
INNER JOIN emp_salary s ON i.emp_no = s.emp_no;


--Question 2. 
--- select info you want to see/ select the table/ chose info and the format 
SELECT  emp_no, first_name, last_name, hire_date
FROM employee_info
WHERE hire_date between '1986-01-01' and '1986-12-31'

--Question 3.  
--select the info from the various tables/define the variable of the tables/ cancel out the common/display play list 
Select d.dept_no , d.dept_name, dd.emp_no,dd.from_date, dd.to_date, i.first_name, i.last_name
FROM department_data d, dept_manager dd, employee_info i
WHERE d.dept_no = dd.dept_no AND dd.emp_no = i.emp_no;

--Question 3. Using inner Join 
SELECT d.dept_no , d.dept_name, dd.emp_no,dd.from_date, dd.to_date, i.first_name, i.last_name, i.emp_no
FROM department_data d
INNER JOIN dept_manager dd ON d.dept_no = dd.dept_no
INNER JOIN employee_info i ON dd.emp_no = i.emp_no

--Question 4. 
--select info from various tables/define variable to table/play sql code
SELECT i.emp_no , i.first_name , i.last_name, dd.dept_name
FROM department_data dd
INNER JOIN emp_data ed ON dd.dept_no = ed.dept_no
INNER JOIN employee_info i ON ed.emp_no = i.emp_no;

--Quest 5.
SELECT i.first_name , i.last_name
FROM employee_info
WHERE i.first_name = 'Hercules' AND Substring (i.last_name,1,1) = 'B'

--Question 6.
--6
SELECT i.emp_no , i.first_name , i.last_name, dd.dept_name
FROM department_data dd
INNER JOIN emp_data ed ON dd.dept_no = ed.dept_no
INNER JOIN employee_info i ON ed.emp_no = i.emp_no

--Question 7.
SELECT i.emp_no , i.first_name, i.last_name , da.dept_name, ed.emp_no, ed.dept_no
FROM department_data da, emp_data ed, employee_info i 
WHERE da.dept_no= ed.dept_no AND ed.emp_no = i.emp_no 

--Question 7 using inner Join
SELECT i.emp_no , i.first_name , i.last_name, dd.dept_name,ed.emp_no, ed.dept_no
FROM department_data dd
INNER JOIN emp_data ed ON dd.dept_no = ed.dept_no
INNER JOIN employee_info i ON ed.emp_no = i.emp_no

--Question 8.
Select i.last_name , count (*)
FROM employee_info i 
GROUP BY i.last_name
ORDER BY i.count DESC;
