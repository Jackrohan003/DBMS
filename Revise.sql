#List the city, region and amount target for each office.
select city,regition, (Sales-Target) from Office.

select  ID,Name ,(Quantity * Price) from products


Select city, 'has sales of ', sales from Office

#Duplicate Row Distnict
select distinct mgr from office;

#Find the salespeople hired before 2006
select Name from salesperson where Hire_Date < '2006-01-01';

#Range  Test (Between)

#Find the order placed in the last quarter of 2007(Both Time Inclusive 1st october and 31 december)
select * from order where order_Date Between '2007-10-01' AND '2007-12-31'

#Find the Order that fall into various amout ranges.
select * from orders where amount between 2000 AND 3000

# Not Between
#List the Sales people whose sales are not between 80 percent and 120 percent of quata

select name,sales,quota from saleperson where sales NOT Between (.8 * Quata) AND (1.2*Quata);





















