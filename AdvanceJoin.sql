/* Retrieve only the non matching rows from the left table. */

SELECT       Name, Gender, Salary, DepartmentName
FROM           tblEmployee E
LEFT JOIN   tblDepartment D
ON                 E.DepartmentId = D.Id
WHERE        D.Id IS NULL

/* Retrieve only the non matching rows from the right table */

SELECT         Name, Gender, Salary, DepartmentName
FROM             tblEmployee E
RIGHT JOIN    tblDepartment D
ON                   E.DepartmentId = D.Id
WHERE          E.DepartmentId IS NULL

/* Retrieve only the non matching rows from both the left and right table. Matching rows should be eliminated */

SELECT         Name, Gender, Salary, DepartmentName
FROM              tblEmployee E
FULL JOIN      tblDepartment D
ON                   E.DepartmentId = D.Id
WHERE          E.DepartmentId IS NULL
OR                   D.Id IS NULL



