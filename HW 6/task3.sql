--1
select first_name, surname
from reststaff rs
inner join restbill rb
on rs.staff_no = rb.waiter_no
where cust_name = "Tanya Singh";

--2
select room_date
from restroom_management rm
inner join reststaff rs
on rm.headwaiter = rs.headwaiter 
where (room_date > 160200 and room_date < 160232) and room_name = "Green" and rs.first_name = "Charles";

--3
select rs2.first_name,rs2.surname
from reststaff rs1
inner join reststaff rs2
on rs1.headwaiter = rs2.headwaiter 
where rs1.first_name = "Zoe";

--4
select cust_name, bill_total, first_name
from restbill r1
inner join reststaff r2
on r1.waiter_no = r2.staff_no 
order by bill_total desc;

--5
select first_name,surname
from reststaff r1
inner join restbill r2
on r1.staff_no = r2.waiter_no
inner join restrest_table r3
on r2.table_no = r3.table_no
where bill_no = 4 and bill_no = 17;

--6
select r1.first_name,r1.surname, r5.first_name as headwaiter
from reststaff r1
inner join restbill r2
on r1.staff_no = r2.waiter_no
inner join restrest_table r3
on r2.table_no = r3.table_no
inner join restroom_management r4
on r2.bill_date = r4.room_date
inner join reststaff r5
on r4.headwaiter = r5.staff_no 
where r4.room_name = "Blue" and r4.room_date = 160312;