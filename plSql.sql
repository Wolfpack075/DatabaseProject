--(pl/sql)


SET SERVEROUTPUT ON 
DECLARE
name_e Employees.Emp_name% type;
r_house Routes.House_no%type :=89;
BEGIN
select Emp_name into name_e 
  from Employees ,Routes
  where Employees.routes_id=routes.routes_id and
  House_no=r_house;
  dbms_output.put_line(r_house|| ' no. house belongs to '|| name_e );
  END ;
  /


--using cursor and loop in plsql

set SERVEROUTPUT on
  DECLARE
    cursor Emp_cur is select Emp_id,Emp_salary from Employees;
    Emp_record Emp_cur%ROWTYPE;
    BEGIN
    open Emp_cur;
    loop
      fetch Emp_cur into Emp_record;
      EXIT when Emp_cur%ROWCOUNT >6;
      dbms_output.put_line('Emp_id: '||Emp_record.Emp_id||' Emp_salary:  '|| Emp_record.Emp_salary);
      end loop ;
      close Emp_cur;
      end;
      /


--plsql procedure

set SERVEROUTPUT on;
      create or replace procedure getemp IS
      E_ID Employees.Emp_ID%type;
      E_salary Employees.Emp_salary%type;
      BEGIN 
       E_ID :=45;
       select Emp_salary into E_salary
       from Employees 
       where E_ID=Emp_id;
       dbms_output.put_line('Employees Salary:'||E_salary);
       End;
       /
       BEGIN 
          getemp;
        END ;
          /


---plsql function

create or replace function avg_salary return number is 
       avg_salary Employees.Emp_salary%type;
       BEGIN 
        select AVG(Emp_salary) into avg_salary
        from Employees;
        return avg_salary;
        end ;
        /
        set SERVEROUTPUT on 
        BEGIN dbms_output.put_line('Average Salary '||avg_salary);
        End;
        /


-- plsql eles if 
          set SERVEROUTPUT on 
          DECLARE
             old_salary Employees.Emp_salary%type;
             new_salary Employees.Emp_salary%type;
             id  Employees.Emp_ID%type;

          Begin 
             id := 45;
             select Emp_salary into old_salary
             from Employees
             where Emp_ID like id;
             if old_salary<'30000' then
               new_salary := old_salary;
             elsif old_salary>='30000' and old_salary<='40000' then
               new_salary := (old_salary+'5000');
              elsif old_salary>'40000' then 
              new_salary := (old_salary+'1000');
              end if ;
              dbms_output.put_line (id||' old_salary ='||old_salary|| ' new_salary='|| new_salary);
              End;
              /


--trigger 

drop trigger TR_Price;
create trigger TR_Price
            before update or insert on Datapacks
            for each row
            begin
            IF :NEW.D_size<'30Gb' THEN
            :NEW.Price:='505';
            ELSIF :NEW.D_size>'35Gb' AND :NEW.D_size<'45Gb' THEN
            :NEW.Price:='606';
            ELSIF :NEW.D_size>'50Gb' AND :NEW.D_size<'60Gb'THEN
           :NEW.Price:='1050';
           ELSIF :NEW.D_size>'60Gb' THEN
           :NEW.Price:='1250';
           END IF;
           END TR_Price;
           /

        insert into Datapacks values(86,'70Gb',null,'3M','12:00am','21-06-22');       



--transaction managemnt
DROP TABLE dummy ;
CREATE TABLE dummy (
Roll int,
Name Varchar (10)
);
INSERT INTO dummy VALUES (1, 'A');
INSERT INTO dummy VALUES (2, 'B');
INSERT INTO dummy VALUES (3, 'C');
INSERT INTO dummy VALUES (4, 'D');
INSERT INTO dummy VALUES (5, 'E');
COMMIT;
select * from dummy ;
delete from dummy ;
rollback ;
select * from dummy ;
INSERT INTO dummy VALUES (6, 'F');
savepoint cont_6 ;
INSERT INTO dummy VALUES (7, 'G');
savepoint cont_7;
rollback to cont_6;
select * from dummy ;


---date ---
select sysdate from dual ;
          select current_date from dual ;
  select add_months (Buying_date,2) as two_months_extension
          from Datapacks 
          where d_id=5;
  select add_months (Buying_date,-2) as two_months_extension
          from Datapacks 
          where d_id=5;




          ------------------------------------------------finally----------------------------------------------------------------

set SERVEROUTPUT on;
begin
dbms_output.put_line('Project Name:  ');
dbms_output.put_line('------------');
dbms_output.put_line('Internet Provider Company Database ');
dbms_output.put_line('Created by:  ');
dbms_output.put_line('----------');
dbms_output.put_line('Kazi Fahim Tahmid' );
dbms_output.put_line('Roll: ');
dbms_output.put_line('----');
dbms_output.put_line('1907016 ');
dbms_output.put_line('--------------------------------------------------');
end;
/