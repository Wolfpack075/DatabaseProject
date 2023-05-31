insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(1,'40Gb','500','1M','10:00am','25-mar-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(2,'45Gb','600','2M','11:00am','25-jan-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(3,'50Gb','800','3M','09:00am','28-feb-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(4,'60Gb','1000','4M','08:00am','27-oct-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(5,'30Gb','500','1W','10:00pm','25-oct-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(6,'40Gb','500','2W','11:00pm','23-jul-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(7,'35Gb','550','1M','08:00pm','15-jul-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(8,'60Gb','1000','2M','09:00am','25-jun-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(9,'50Gb','650','1M','10:00am','25-mar-23');
insert into Datapacks(D_id,D_size,Price,Validity,Buying_time,Buying_date) values(10,'30Gb','500','2W','11:00am','24-jul-25');

insert into Routes (routes_id,House_no,Road_no) values (51,101,78);
insert into Routes (routes_id,House_no,Road_no) values (52,105,70);
insert into Routes (routes_id,House_no,Road_no) values (53,69,76);
insert into Routes (routes_id,House_no,Road_no) values (54,68,78);
insert into Routes (routes_id,House_no,Road_no) values (55,69,79);
insert into Routes (routes_id,House_no,Road_no) values (56,100,70);
insert into Routes (routes_id,House_no,Road_no) values (57,89,78);
insert into Routes (routes_id,House_no,Road_no) values (58,66,75);
insert into Routes (routes_id,House_no,Road_no) values (59,69,88);
insert into Routes (routes_id,House_no,Road_no) values (60,100,89);

insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(11,'A','a@gmail.com','123','12-01-23','04-11-99',1,51);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(12,'B','b@gmail.com','456','12-02-23','23-12-98',1,51);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(13,'C','c@gmail.com','789','17-01-23','24-08-97',3,53);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(14,'D','d@gmail.com','112','01-01-23','19-07-99',5,56);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(15,'E','e@gmail.com','134','14-02-23','19-06-95',10,57);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(16,'F','f@gmail.com','234','12-03-23','01-12-94',2,55);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(17,'G','g@gmail.com','567','19-04-23','30-01-95',1,53);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(18,'H','h@gmail.com','891','20-01-23','23-09-97',4,54);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(19,'I','i@gmail.com','124','01-05-23','24-10-96',9,52);
insert into customers(Cust_ID,Cust_name,E_mail,Password,Registration_date,Date_of_Birth,D_id,routes_id)values(20,'J','j@gmail.com','125','01-01-23','14-11-93',8,52);


insert into report(Report_id,Topic,Report_status,Cust_ID)values(21,'Net Speed','Good',11);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(22,'Bandwidth','Good',11);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(23,'Customer Service','Not Good',14);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(24,'Reliability','Medium',17);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(25,'Net Speed','Bad',14);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(26,'Bandwidth','Good',12);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(27,'Net Speed','Bad',15);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(28,'Customer Service','Good',13);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(29,'Cost','High',20);
insert into report(Report_id,Topic,Report_status,Cust_ID)values(30,'Net Speed','Good',20);


insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(31,500,'25-06-23',11);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(32,600,'26-06-23',16);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(33,500,'27-06-23',20);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(34,500,'28-06-23',20);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(35,650,'29-06-23',19);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(36,800,'24-06-23',13);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(37,400,'23-06-23',12);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(38,300,'22-06-23',14);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(39,500,'23-06-23',18);
insert into payment(Payment_id,Payment_amount,Payment_date,Cust_ID)values(40,600,'21-06-23',18);

insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(41,'A','10000',51);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(42,'B','10056',55);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(43,'C','20000',52);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(44,'D','20050',55);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(45,'E','30000',51);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(46,'F','10000',54);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(47,'G','25000',52);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(48,'I','35000',57);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(49,'K','10000',58);
insert into Employees (Emp_ID,Emp_name,Emp_salary,routes_id) values(50,'A','13000',59);


