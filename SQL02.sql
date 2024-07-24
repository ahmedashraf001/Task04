-----------------(01 Join Two tables)-----------------
select  St_Fname , St_Age, St_Address , Dept_Name
from Student s  , Department d
where s.Dept_Id = d.Dept_Id

-----------------(02 Aggregate Function)-----------------
select avg(isnull(salary,0)) 
from Instructor

-----------------(03 Grouping and Ordering)-----------------
select  count(Ins_id) ,Dept_Name 
from  Instructor s , Department d 
where s.Dept_Id = d.Dept_Id
group by Dept_Name 
order by count(Ins_id)

-----------------(04 Selecting Top Records)-----------------
select Top 10 Ins_Name , salary 
from Instructor
order by salary desc

----------=> another way 
select ins_name , salary , RN from(
	select Ins_Name , salary , row_Number() over(order by salary desc) as RN
	from Instructor
)As subQ
where RN<=10

-----------------(05 Nested Queries)-----------------
select * from Instructor
where Dept_Id in ( select Dept_Id from Department where  Dept_Location = 'cairo' )

