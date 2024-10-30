-- 1
select bill_date, bill_total from restbill where cust_name="Bob Crow";

-- 2
select cust_name from restbill where cust_name like "% Smith" order by cust_name desc;

-- 3
select distinct cust_name from restbill where cust_name like "% C%";

-- 4
select first_name,surname from reststaff where headwaiter is null;

-- 5
select * from restbill where bill_date >= 160201 and bill_date <= 160231;

-- 6
select distinct bill_date from restbill where bill_date >= 150101 and bill_date <= 160000 order by bill_date asc;