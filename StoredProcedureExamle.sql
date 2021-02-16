/*   Create Procedure in SQL */
CREATE PROCEDURE spGetAllEmployees
AS 
BEGIN 
	SELECT * from Emp
END


/* Execute Stored Procedure(Just type name of StoredProcedure and click on Execute ) */
spGetAllEmployees
/* Execute Stored Procedure(with EXEC command)  */
Exec spGetAllEmployees



/*Create Stored Procedure with Arguments */

Create Procedure spGetEmployeesByGenderAndDepartment 
@Gender nvarchar(50),
@DepartmentId int
as
Begin
  Select Name, Gender from tblEmployee Where Gender = @Gender and DepartmentId = @DepartmentId
End


/*Execute SP with Parameters */
EXECUTE spGetEmployeesByGenderAndDepartment @DepartmentId=1, @Gender = 'Male'



/*Alter the Stored Procedure */

Alter Procedure spGetEmployeesByGenderAndDepartment 
@Gender nvarchar(50),
@DepartmentId int
as
Begin
  Select Name, Gender from tblEmployee Where Gender = @Gender and DepartmentId = @DepartmentId order by Name
End

/* Delete the SP */
DROP PROC spGetEmployeesByGenderAndDepartment







