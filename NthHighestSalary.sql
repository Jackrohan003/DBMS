/* Second Highest Salary   */
select MAX(salary) from emp where salary not in (
select MAX(salary) from emp
)


/* 4th Highest salary : Replace the distinct top salary with highest salary you want to find*/

select top 1 salary from 
(select distinct top 4 salary 
from emp 
order by salary desc
)Result 
Order by salary

/* With Common Table Expression (CTE) */

WITH Result as 
(
select salary, DENSE_RANK() over (order by salary desc) as denseRank from emp
)
select top 1 salary from Result 
where Result.denseRank=4
/*-----------------*/



