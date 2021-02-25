/* It will Update the Name of Employee to name of department(For Testing purpose) when salary of employee less than 4500 */
UPDATE t1
  SET t1.Name = t2.DepartmentName
  FROM tblEmployee AS t1
  INNER JOIN tblDepartment AS t2
  ON t1.DepartmentId = t2.ID
  where t1.Salary < 4500

