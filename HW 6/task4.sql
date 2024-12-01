--1
select cust_name
from restbill
where waiter_no in 
	(select staff_no from reststaff
	where headwaiter = 10 and restbill.bill_total > 450);

--2
select first_name, surname
from reststaff
where headwaiter in 
	(select headwaiter from restroom_management
	where room_name in 
		(select room_name from restrest_table
		where table_no in
			(select table_no from restbill
			where cust_name = "Nerida Smith" and bill_date = 160111)));

--5
select cust_name, reststaff.first_name,reststaff.surname, restrest_table.room_name
from restbill,reststaff,restrest_table
where restbill.table_no in 
	(select table_no from restrest_table
	where room_name in 
		(select room_name from restroom_management
		where headwaiter in 
			(select headwaiter from reststaff
			where restbill.covers = (select max(covers) from restbill))));