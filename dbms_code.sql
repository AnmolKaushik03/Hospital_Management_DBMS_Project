create table users(
    Name varchar(20),
    Email varchar(20),
    ID number(10),
    Contact number(10),
    Address varchar(20)
);

create table Address(
	ID number,
    City varchar(255),
    Country varchar(255),
    House number
);

create table Receptionist(
    ID number(20) PRIMARY KEY,
    Name varchar(50),
    Slot Timestamp
);

create table Permissions(
    ID number(20) PRIMARY KEY,
    Module varchar(50),
    Name varchar(30)
);

create table Login(
    ID number,
    Username varchar(20),
    Roll_id number,
    Password varchar(20),
    primary key(ID)
);

create table Roles(
    ID number,
    Name varchar(20),
    Description varchar(20),
    PRIMARY KEY(ID)
);

create table nurse(
    Name varchar(20),
    ID number(10),
    email varchar(40),
    Address varchar(20),
    duty_hours number(15),
    Contact number(10),
    PRIMARY KEY(ID)
);

create table Hospital(
    Name varchar(20),
    Place varchar(40),
    Type varchar(20),
    ID number(10),
    Address varchar(20),
    Description varchar(40),
    PRIMARY KEY(ID)
);

create table doctor(
    name varchar(20),
    ID number(10),
    email varchar(40),
    Specialist varchar(40),
    Contact number(10),
    PRIMARY KEY(ID)
);

create table Patient(
    Name varchar(30),
    ID number(20) PRIMARY KEY,
    Email varchar(50),
    Disease varchar(30),
    Blood_Group char(20),
    Contact number(10)
);

create table Medicine(
    Name varchar(50) PRIMARY KEY,
    Price int,
    Dose varchar(50),
    Description varchar(255)
);

create table Rooms(
    ID number(20) PRIMARY KEY,
    Type varchar(50),
    Period Timestamp
);

create table Records(
    description varchar(255),
    appointment varchar(255),
    patient_ID number,
    record_number number
);

insert into users values('Ajay','ajayraj123@gmail.com','223','7098657293','Jalandhar');
insert into users values('Bawan','bawan14356@gmail.com','321','8967837673','Patiala');
insert into users values('Anmol','anmol@gmail.com','453','8909897653','Bengaluru');
insert into users values('Bhumika','bhumika12@gmail.com','502','9364782901','Patiala');
insert into users values('Jigyasha','jigyasha@gmail.com','676','9098345654','Jaipur');

insert into hospital values('Medicare','Ludhiana','General','100','Sarabha Nagar','Multi speciality hospital');
insert into hospital values('Amcare','Chandigarh','Cardiology','101','Amcare Plaze','Best in Cardiology');
insert into hospital values('Oxford','Jalandhar','Surgical','102','Lajpat Nagar','Surgical hospital');
insert into hospital values('Rajindra Hospital ','Patiala','General','103','New Lal Bagh Colony','Multi speciality hospital');
insert into hospital values('Spine and Ortho care','Jalandhar','Spine Surgery','104','Gurjaipal Nagar','Spine Centre');

insert into doctor values('Lovish','5263','lovish345@gmail.com','heart','7898543452');
insert into doctor values('Tushar','5264','tushar3245@gmail.com','spine','9898657289');
insert into doctor values('Aditya','5265','adidtya5@gmail.com','skin','9838543452');
insert into doctor values('Raghav','5266','ragahav@gmail.com','neuro','9872434521');
insert into doctor values('Harnoor','5267','harnoor12@gmail.com','bone','8987565782');

insert into nurse values('Vartika','1026','vartika@gmail.com','jalandhar','5','9788543452');
insert into nurse values('Manya','1027','manya@gmail.com','ludhiana','6','7982543452');
insert into nurse values('Vanshita','1028','varshita@gmail.com','amritsar','4','9544323452');
insert into nurse values('Arshiya','1029','arshiya@gmail.com','chandigarh','5','7898543452');
insert into nurse values('Taranpreet','1030','taranpreet@gmail.com','mohali','9','8888543522');

insert into Patient values('Mohit','1','moh@gmail.com','myopia','B+','7893648291');
insert into Patient values('Lovih','2','lov@gmail.com','leg fracture','AB+','8398297482');
insert into Patient values('Kaustub','3','kau@gmail.com','deafness','A+','9672637489');
insert into Patient values('Chitvan','4','chi@gmail.com','colour blindness','O+','7845896521');
insert into Patient values('rohan','5','roh@gmail.com','depression','O-','9998547854');

insert into Receptionist values('1','anjali',TO_TIMESTAMP('2023-01-13 05:15:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Receptionist values('2','priyanka',TO_TIMESTAMP('2023-01-15 07:25:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Receptionist values('3','mohika',TO_TIMESTAMP('2023-01-17 01:05:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Receptionist values('4','nandani',TO_TIMESTAMP('2023-01-23 02:15:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Receptionist values('5','yashika',TO_TIMESTAMP('2023-01-03 06:28:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));

insert into Rooms values('1','Semi Private',TO_TIMESTAMP('2023-01-13 05:15:00.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Rooms values('2','Private',TO_TIMESTAMP('2023-01-16 06:15:01.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Rooms values('3','Multibed ward',TO_TIMESTAMP('2023-01-23 04:25:10.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Rooms values('4','Reserved',TO_TIMESTAMP('2023-01-13 07:28:13.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
insert into Rooms values('5','Super Deluxe',TO_TIMESTAMP('2023-01-13 05:48:30.724000000', 'YYYY-MM-DD HH24:MI:SS.FF'));

Insert into Medicine values('paracetamol', 100, 'tablet', 'used to treat fever');
Insert into Medicine values('baclofen', 109, 'liquid', 'used to treat muscle spasticity');
Insert into Medicine values('uceris', 5149, 'granule', 'used to treat a certain bowel condition');
Insert into Medicine values('melatonin', 1000, 'suspension', 'used to help decrease jet lag');
Insert into Medicine values('jivi', 980, 'injection', ' used to replace clotting factor');

Insert into Records values('Eye Test', 'Chitvan', 1 , 12345);
Insert into Records values('Ear Surgery', 'Lovish', 2 , 12346);
Insert into Records values('Ear Surgery', 'Lovish', 3 , 12347);
Insert into Records values('Eye Test', 'Chitvan', 4 , 12348);
Insert into Records values('Physician', 'Kaustub', 5 , 12349);

Insert into Roles values(1, 'Chitvan', 'Patient');
Insert into Roles values(2, 'Manya', 'Nurse');
Insert into Roles values(3, 'Lovish', 'Doctor');
Insert into Roles values(4, 'Raghav', 'Doctor');
Insert into Roles values(5, 'Tushar', 'Doctor');
Insert into Roles values(6, 'anjali', 'Receptionist');

Insert into Permissions values(1, 'User', 'Lovish');
Insert into Permissions values(2, 'User', 'Kaustub');
Insert into Permissions values(3, 'User', 'Chitvan');
Insert into Permissions values(4, 'User', 'Rohit');

Insert into Login values(1, 'Ajay',10 , 'ABCD');
Insert into Login values(2, 'Anmol',11 , 'ABEF');
Insert into Login values(3, 'Bawan',12 , 'BCDG');
Insert into Login values(4, 'Jigyasha',13 , 'EFGH');
Insert into Login values(5, 'Bhumika',14 , 'HIJK');

-- EXCEPTION HANDLING
Declare 
	u_id Users.ID%type :=8;
	u_name Users.Name%type;
	u_email Users.Email%type;
Begin
	Select name,email into u_name, u_email
	from users
	where ID=u_id;
DBMS_OUTPUT.PUT_LINE ('Name:'  || u_name);
DBMS_Output.put_line ('Email:' || u_email);
Exception 
when no_data_found then
dbms_output.put_line('No such user');
when others then 
dbms_output.put_line('Error');
EnD;


-- CURSORS

declare 
cursor users_cursor Is select name from users;
lv_users_name users.name%type;
begin 
open users_cursor;
loop
fetch users_cursor into lv_Users_name;
if users_cursor%notfound then
exit;
	end if;
	dbms_output.put_line('user Fetched:' || lv_users_name);
end loop;
dbms_output.put_line('total rows fetched is' ||''||users_cursor%Rowcount);
close users_cursor;
end;

-- PROCEDURES(DELETE)

CREATE OR REPLACE PROCEDURE delete_users(u_name IN users.name%TYPE) 
AS
BEGIN
  DELETE FROM users WHERE name = u_name;
END;
/
BEGIN
  delete_users('Jigyasha');
  DBMS_OUTPUT.PUT_LINE('Records deleted successfully.'); 
END;
/

select* from users;

-- UPDATE

create or replace procedure update_users(
    temp_name In users.name%type,
    u_name in users.name%type,
    u_email in users.email%type,
    u_ID in users.id%type,
    u_contact in users.contact%type) AS
	begin
    update users set name=u_name,email=u_email, id=u_ID, contact=u_contact Where Name=temp_name;
	end;
/
	begin
        update_users('Bawan','aman','aman02@gmail.com',120,987456123);
		end;
/
    select *from users

    
    --Insert

CREATE OR REPLACE PROCEDURE INSERTUSERS (
    u_name Users.Name%type,
    u_email Users.Email%type,
    u_ID Users.ID%type,
    u_contact Users.Contact%type,
    u_Address Users.Address%type)
AS
BEGIN
    INSERT INTO Users Values (u_name, u_email, u_ID, u_contact, u_Address );
    dbms_output.put_line('Record Inserted succesfully');
END;
/

BEGIN
    INSERTUSERS('Bawan', 'bawan@gmail.com', 234, 8927463789, 'Patiala');
END;
/

SELECT * FROM users;

--triggers

--UPDATE

create trigger users_trigger1 after
	update on users
	for each row
begin
	dbms_output.put_line('Row has been updated in the Users table');
end;
/
update users set id=123 where id = 223;
update users set id=323 where id = 453;
select *from users;

--DELETE
create trigger users_trigger2 after
	delete on users
	for each row
begin
	dbms_output.put_line('Row has been deleted in the Users table');
end;
/
delete from users where id =502;
delete from users where id =120;
select *from users;

--Insert

create trigger users_trigger3 after
	insert on users
	for each row
begin
	dbms_output.put_line('Row has been inserted in the Users table');
end;
/
insert into users values ('Jigyasha','jigyasha@gmail.com','676','9098345654','Jaipur');
insert into users values ('Bhumika','bhumika12@gmail.com','502','9364782901','Patiala');
select *from users;
