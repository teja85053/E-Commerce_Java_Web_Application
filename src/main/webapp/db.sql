create table register(
phone varchar2(10) primary key,
password varchar2(15)not null,
email varchar2(50),
gender varchar2(6)  check (gender  in ('male','female')),
city varchar2(30),
role  varchar2(25)
);

 
 insert into register(phone,password,email,gender,city,role) values
('9948963306',
'123456',
'madhuadmin@gmail.com',
'male',
'Hyderabad',
'admin'
 );

 commit;
 
 
 
 
 
 create table product(
 pid int primary key,
 pname varchar2(100),
 price float,
 discount_percentage int,
 description  varchar2(150),
 prod_image varchar2(100)
 );
 
 