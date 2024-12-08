--1
CREATE VIEW samsBills AS
SELECT
    restStaff.first_name,
    restStaff.surname,
    bills.bill_date,
    customers.cust_name,
    bills.bill_total
FROM
    restStaff
JOIN
    bills ON restStaff.staff_no = bills.staff_no
JOIN
    customers ON bills.cust_no = customers.cust_no
WHERE
    restStaff.first_name = 'Sam' AND restStaff.surname = 'Pitt';

--2
SELECT *
FROM samsBills
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals AS
SELECT
    restRoom_management.room_name,
    SUM(bills.bill_total) AS total_sum
FROM
    restRoom_management
JOIN
    restRest_table ON restRoom_management.room_name = restRest_table.room_name
JOIN
    bills ON restRest_table.table_no = bills.table_no
GROUP BY
    restRoom_management.room_name;

--4
CREATE VIEW teamTotals AS
SELECT
    CONCAT(headWaiter.first_name, ' ', headWaiter.surname) AS headwaiter_name,
    SUM(bills.bill_total) AS total_sum
FROM
    restStaff AS headWaiter
JOIN
    restStaff AS waiter ON headWaiter.staff_no = waiter.headwaiter
JOIN
    bills ON waiter.staff_no = bills.staff_no
GROUP BY
    headWaiter.staff_no;
