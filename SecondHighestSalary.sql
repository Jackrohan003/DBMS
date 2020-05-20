select 
    max(Salary) as SecondHighestSalary from Employee 
    where Salary not in 
    (select max(Salary) from Employee)


#Second Approach

SELECT DISTINCT
    Salary AS SecondHighestSalary
FROM
    Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1
