/* sailors(sid: integer, sname:string, rating: integer, age: real)
 boats(bid: integer, bname: string, color:string)
 reserves(sid: integer, bid: integer, day: date) 
 */
--Find the age of youngest sailor for each rating level
select  MIN(age),rating from sailors group by rating

--Find age of the youngest sailor with age >= 18, for each rating with at least 2 such sailors
select  count(*),MIN(age),rating from sailors where age>=18 group by rating having COUNT(*)>1

-- Find age of the youngest sailor with age >= 18, for each rating with at least 2 such sailors and with every sailor under age 60
select  count(*),MIN(age),rating from sailors where age>=18 and age<=60 group by rating having COUNT(*)>1

-- Count number of sailors who have reserved boat # 103
 select COUNT(sid) from reserves where bid=103

/*
- Findnames of sailors who have reserved at least one boat
 select distinct(s.sname) from sailors as s join reserves r on s.sid=r.sid

 Find names of sailors who have reserved at least two boat
 Find names of sailors who have reserves more than average number of boats reserves by all
sailors
*/
