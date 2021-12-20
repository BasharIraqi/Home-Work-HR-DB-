--Q1--
select first_name,last_name,PHONE_NUMBER,d.department_id,DEPARTMENT_NAME from employees e 
join departments d on e.department_id=d.department_id

--Q2--
select FIRST_NAME,LAST_NAME,d.department_id,CITY ,STATE_PROVINCE from employees e
join departments d on e.department_id=d.department_id
join locations l on l.location_id=d.location_id

--Q3--
select  FIRST_NAME,LAST_NAME,SALARY,j.job_title from employees e
join jobs j on j.job_id=e.job_id

--Q4--
select FIRST_NAME,LAST_NAME,d.DEPARTMENT_ID,d.DEPARTMENT_NAME from employees e
join departments d on d.department_id=e.department_id
where d.department_id=8 or d.department_id=4

--Q5--
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE from employees e
join departments d on d.department_id=e.department_id
join locations l on l.location_id=d.location_id
where first_name like '%z%'

--Q6--
select  FIRST_NAME,LAST_NAME,d.DEPARTMENT_ID,DEPARTMENT_NAME from employees e
left join departments d on d.department_id=e.department_id

--Q7--
select e.FIRST_NAME,e.LAST_NAME,e.SALARY from employees e
join employees em on em.salary>e.salary
and em.employee_id=192

--Q8--
select e.FIRST_NAME,em.FIRST_NAME[manager] from employees e
join employees em on em.employee_id=e.manager_id

--Q9--
select DEPARTMENT_NAME,l.CITY,l.STATE_PROVINCE from departments d
join locations l on l.location_id=d.location_id

--Q10--
select FIRST_NAME,LAST_NAME,d.DEPARTMENT_ID,DEPARTMENT_NAME from employees e
right join departments d on d.department_id=e.department_id

--Q11--
select e.FIRST_NAME[employee name],em.FIRST_NAME[manager] from employees e
left join employees em on em.employee_id=e.manager_id

--Q12--
select e.FIRST_NAME,e.LAST_NAME,e.DEPARTMENT_ID from employees e
join employees em on em.department_id=e.department_id 
and em.last_name='taylor'

--Q13--
select JOB_TITLE,DEPARTMENT_NAME,FIRST_NAME,HIRE_DATE from employees e
join jobs j on j.job_id=e.job_id
join departments d on d.department_id=e.department_id
where hire_date='1993-01-13'

--Q14--
select JOB_TITLE,FIRST_NAME+' '+last_name[employe name],(max_salary-e.salary)[diffrence salary] from employees e
join jobs j on j.job_id=e.job_id

--Q15--
select DEPARTMENT_NAME,(avg(salary))[average salary],(COUNT(e.department_id))[number of employees] from employees e
join departments d on d.department_id=e.department_id
group by department_name

--Q16--
select JOB_TITLE,FIRST_NAME+' '+last_name[employe name],(max_salary-sum(salary))[salary differnce] from employees e
join jobs j on j.job_id=e.job_id
join departments d on d.department_id=e.department_id
where d.department_id=8
group by job_title,first_name,last_name,max_salary

--Q17--
select c.COUNTRY_NAME,CITY,DEPARTMENT_NAME from countries c
join locations l on l.country_id=c.country_id
join departments d on d.location_id=l.location_id

--Q18--
select DEPARTMENT_NAME,FIRST_NAME+' '+LAST_NAME[manager name] from employees e
join departments d on d.department_id=e.department_id

--Q19--
select JOB_TITLE,(AVG(e.salary))[average employee salary] from employees e
join jobs j on j.job_id=e.job_id
group by job_title

--Q20--
select EMPLOYEE_ID,HIRE_DATE,j.JOB_ID,DEPARTMENT_ID from employees e
join jobs j on j.job_id=e.job_id
where salary>=12000

--Q21--
select COUNTRY_NAME,CITY,(count(d.department_id))[count departments] from departments d
join locations l on l.location_id=d.location_id
join countries c on c.country_id=l.country_id
join employees e on e.department_id=d.department_id
group by country_name,city
having count(e.department_id)>=2

--Q22--
select DEPARTMENT_NAME,e.FIRST_NAME+' '+e.LAST_NAME[manager name],CITY from employees e
join departments d on d.department_id=e.department_id
join locations l on l.location_id=d.location_id

--Q23--
select EMPLOYEE_ID,JOB_TITLE,datediff(day,hire_date,end_date)[days work] from employees e
join jobs j on j.job_id=e.job_id
join departments d on d.department_id=e.department_id
where d.department_id=8

--Q24--
select FIRST_NAME+' '+LAST_NAME[employee name],salary from employees e
join departments d on d.department_id=e.department_id
join locations l on l.location_id=d.location_id
where l.city='London'

--Q25--
select first_name+' '+last_name[name],job_title,hire_date,end_date from employees e
join jobs j on j.job_id=e.job_id
where e.COMMISSION_PCT=0

--Q26--
select d.department_id,department_name,(count(e.employee_id))[number of employees] from departments d
inner join employees e on e.department_id=d.department_id
group by d.department_id,department_name

--Q27--
select first_name+' '+last_name[name],employee_id,c.country_name from employees e
join departments d on d.department_id=e.department_id
join locations l on l.location_id=d.location_id
join countries c on c.country_id=l.country_id


