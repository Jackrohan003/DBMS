--Find names of all the sailors who have reserved a red boat

select * from sailors as s join reserves as r on s.sid=r.sid join (select * from boats where color='red') as b on b.bid=r.bid


