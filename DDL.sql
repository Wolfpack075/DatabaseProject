drop table report;
drop table payment;
drop table customers;
drop table Datapacks;
drop table Employees;
drop table routes ;
create table Datapacks(
    D_id integer PRIMARY key,
    D_size VARCHAR2(20),
    Price VARCHAR2(20),
    Validity VARCHAR2(20),
    Buying_time VARCHAR2(20),
    Buying_date VARCHAR2(20)
);
create table Routes(
    routes_id integer PRIMARY key,
    House_no integer,
    Road_no integer
);

CREATE TABLE customers (
    Cust_ID INTEGER PRIMARY KEY,
    Cust_name VARCHAR2(20),
    E_mail VARCHAR2(20),
    Password VARCHAR2(10) unique, -- (using unique key constraints)
    Registration_date VARCHAR2(20),
    Date_of_Birth VARCHAR2(20),
    D_id integer,
    routes_id integer,
    foreign key(D_id) references Datapacks,
    foreign key(routes_id) references Routes
);


create table report(
    Report_id integer PRIMARY key,
    Topic VARCHAR2(40),
    Report_status VARCHAR2(20),
    Cust_ID integer,
    foreign key(Cust_ID) references customers
);

create table Payment(
    Payment_id integer PRIMARY key,
    Payment_amount integer,
    Payment_date VARCHAR2(20),
    Cust_ID integer,
    foreign key(Cust_ID) references customers
);    

create table Employees(
    Emp_ID integer PRIMARY key,
    Emp_name VARCHAR2(20),
    Emp_salary VARCHAR2(20),
    routes_id integer,
    foreign key(routes_id) references Routes
);
