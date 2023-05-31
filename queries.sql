--description of each table
DESC Datapacks;
DESC Routes;
DESC customers;
DESC report;
DESC Payment;
DESC Employees;



-- data according each table
select * from Datapacks;
select * from Routes;
select * from customers;
select * from report;
select * from Payment;
select * from Employees;

--add operation (adding column)
alter table Datapacks add temporary_column VARCHAR2(50);
desc Datapacks;
select * from Datapacks;

--drop operation (dropping column)
alter table Datapacks drop column temporary_column;
desc Datapacks;
select * from Datapacks;

--modify operation (modifying column data type)
alter table Datapacks modify Buying_date VARCHAR2(60);
desc Datapacks;
select * from Datapacks;

--rename operation (renaming column)
alter table Datapacks rename column Buying_date to B_date;
desc Datapacks;
select * from Datapacks;

alter table Datapacks rename column B_date to Buying_date;
desc Datapacks;
select * from Datapacks;

--update operation (updating a value)
update Datapacks set Buying_date = '29-06-22' where D_id=10;
desc Datapacks;
select * from Datapacks;

update Datapacks set Buying_date = '26-06-22' where D_id=10;
desc Datapacks;
select * from Datapacks;

--delete operation (deleting a row from Datapacks table)
delete from Employees where Emp_id=50;
desc Employees;
select * from Employees;
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(50,'A','13000',59);
select * from Employees;

--calculated field
select (Emp_id/2) as Emp_id_divided_by_two from Employees; --Giving the column a different name 

--applying conditions
select E_mail from customers where Cust_id=17;

--Range Search
SELECT E_mail,Registration_date FROM customers
WHERE Cust_id BETWEEN 11 AND 15;

SELECT E_mail,Registration_date FROM customers
WHERE Cust_id not BETWEEN 11 AND 15;

--Set membership
SELECT e_mail,registration_date FROM customers WHERE Cust_ID IN (11,15);
SELECT e_mail,registration_date FROM customers WHERE Cust_ID not IN (11,15);

--Ordering by column values
SELECT e_mail,registration_date FROM customers ORDER BY Cust_ID; --Single Column Ordering
SELECT e_mail,registration_date FROM customers ORDER BY Cust_ID desc;

--Ordering by column values(with multiple columns)
select Payment_date,Payment_id from payment 
order by Payment_id,Cust_ID; --multi-column ordering

--Use of DISTINCT
select distinct (Cust_ID) from report;





--aggregate functions:
select  max(cust_id) from customers;

select min(cust_id) from customers;

select  sum(cust_id) from customers;

select count(cust_id) from customers;

select count(*) from customers;

select count(distinct (cust_id)) from customers;

select  avg(cust_id) from customers;
-- second parameter diye replace kore 
select  avg(nvl(cust_id,0)) from customers;


--Pattern Matching
select cust_id from customers
where e_mail like '%ma%';

select cust_id from customers
where e_mail like 'a%';

select cust_id from customers
where e_mail like '%com';


--GROUP BY clause
select count(Emp_ID),routes_id from Employees group by routes_id;
select count(Emp_ID),routes_id from Employees where Emp_salary>10000 group by routes_id;


--HAVING clause
select count(Emp_ID),routes_id from Employees group by routes_id having routes_id>55;
select count(Emp_ID),routes_id from Employees group by routes_id having count(routes_id)>1;




--IN
select cust_id,Cust_name,E_mail from customers where Cust_name in ('A','D','I');

--nested query
select Emp_name from Employees where Emp_ID in (select Emp_ID from Employees where routes_id='51');



----------------------------------------------------------------
--set operations


--union all operation
select Topic,Report_status from report where Report_id>20 and Report_id<25
union all  --selected column is same in no. and same order of data types
select Emp_name,Emp_salary from Employees where Emp_ID>41 and Emp_ID<45;

--union operation
select cust_id from report where Report_id<25
union
select cust_id from payment where Payment_id<36;

--INTERSECT operation
select cust_id from report
INTERSECT
select cust_id from Payment;


--MINUS operation
select cust_id from report
MINUS
select cust_id from Payment;



--simple join examples


--Join
select r.Report_id,r.cust_id,p.Payment_id from report r join
payment p on r.cust_id=p.cust_id;

--Natural Join
select cust_id,routes_id,D_id from customers natural join Datapacks;

--Cross Joins/ Cartesian Products
select r.Report_id,r.cust_id,p.Payment_id from report r cross join payment p;

--Inner Join
select r.Report_id,r.cust_id,p.Payment_id from report r inner join
payment p on r.cust_id=p.cust_id;


--Outer Join

--LEFT Outer Join
select r.Report_id,r.cust_id,p.Payment_id from report r left Outer join
payment p on r.cust_id=p.cust_id;

--RIGHT Outer Join
select r.Report_id,r.cust_id,p.Payment_id from report r right Outer join
payment p on r.cust_id=p.cust_id;

--FULL Outer Join
select r.Report_id,r.cust_id,p.Payment_id from report r full Outer join
payment p on r.cust_id=p.cust_id;

--Self Join
--(max report_id no.)
select r.report_id from report r MINUS
select r.Report_id from report r join report q on r.report_id<q.report_id;


