--1
select sum(bill_total) as Income from restbill;

-- 2
select sum(bill_total) as febIncome from restbill where bill_date >= 160201 and bill_date <= 160231;

-- 3
select avg(bill_total) from restbill where bill_date >= 160201 and bill_date <= 160231;

-- 4
select
	min(no_of_seats) as Min,
	max(no_of_seats) as Max,
	avg(no_of_seats) as Avg
from restrest_table
where room_name="Blue";

-- 5
select distinct count(table_no) from restbill where waiter_no=2;
select distinct count(table_no) from restbill where waiter_no=4;
