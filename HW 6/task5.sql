--1
select first_name,surname,bill_date,count(bill_no)
from reststaff r1
inner join restbill r2
on r1.staff_no = r2.waiter_no
group by first_name, surname, bill_date 
having count(bill_no) >= 2; 