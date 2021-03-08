-- Find names of all the sailors who have reserved a red or green boat

select * from sailors as s join reserves as r on s.sid=r.sid join (select * from boats where color in ('red','green')) as b on b.bid=r.bid

--Find names of all the sailors who have reserved a red and green boat
select s.sname from sailors as s join reserves as r on s.sid=r.sid join (select * from boats where color='red') as b on b.bid=r.bid
intersect
select s.sname from sailors as s join reserves as r on s.sid=r.sid join (select * from boats where color='green') as b on b.bid=r.bid

--Find names of all the sailors age over 20 who have not reserved a red boat

SELECT sname FROM sailors WHERE age>20
EXCEPT
SELECT sname FROM (SELECT * FROM boats WHERE color='red') AS boats_red JOIN reserves AS r
ON boats_red.bid=r.bid JOIN sailors AS s ON r.sid=s.sid





