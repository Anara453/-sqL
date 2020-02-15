create table sport
(
id integer primary key,
name varchar (50) unique not null,
salary integer not null
);
insert into sport (id,name,salary)values (2,'voleyball',500);
insert into sport (id,name,salary)values (2,'basketball',350);
insert into sport (id,name,salary)values (2,'trowball',520);

​
create table trainer
(
id integer primary key,
name varchar (100) unique not null,
phone_nunmber integer unique,
inn integer unique not null,
sport_id integer references sport(id) unique
);

create table visitor(
surname varchar (300)not null,
visitor_id integer primary key unique,
bdate varchar (30) not null,
gender varchar (10) not null
);
insert into visitor (surname ,visitor_id ,bdate ,gender )
values ('VISITOR 2',2,'12.12.02','f');

insert into sport(id, name, salary) values (100,'123',10000);
insert into trainer (id, name, phone_nunmber, inn, sport_id) values (123, '321',55555,777888,100);
insert into visitor(surname, visitor_id, bdate , gender ) values ('1333', 1111,'12.12.2020','m');

create table visits (
visits_id integer references visitor (visitor_id) not null unique,
visit_time integer not null,
trainer integer references sport(id) not null
);
insert into visits(visits_id, visit_time, trainer) values (1111, 1233, 123);

insert into visits(visits_id , visit_time,trainer)
values (1,1800,1);


create table groupIt (
id integer primary key,
name varchar unique
);
create table students(
id integer primary key,
name varchar not null,
group_id integer references groupIt (id)
);

insert into students (id,name,group_id) values (1,'ARTUR',1);
insert into students (id,name,group_id) values (2,'Vlad',2);
insert into students (id,name,group_id) values (3,'Andrei',3);
insert into students (id,name,group_id) values (4,'Kostya',4);
select count(*) from students where name like('%a%');
insert into groupIt (id,name) values (1,'C#');
insert into groupIt (id,name) values (2,'Java');
insert into groupIt (id,name) values (3,'Jscript');
insert into groupIt (id,name) values (4,'Python');

select * from students right join groupIt" on students.id = "groupIt".id;
select * from students inner join "groupIt" on students.id= "groupIt".id;
select * from students inner join "groupIt" on students.group_id = "groupIt".id where group_id = 1;


create table product (
id integer primary key,
pr_name varchar (15) not null
);
create table userr (
id integer primary key,
namee varchar (15) not null,
product_id integer references product (pr_name)
);
insert into product (id , pr_name) values (1,'LENOVO G500');
insert into product (id , pr_name) values (2,'PREDATOR I9');
insert into product (id , pr_name) values (3,'PHP I5');
insert into product (id , pr_name) values (4,'ACER I7');

insert into userr (namee,product_id)values ('Biktor',1);
insert into userr (namee,product_id)values ('Vasya',2);
insert into userr (namee,product_id)values ('Aktan',3);
insert into userr (namee,product_id)values ('Kamila',4);
select * from product p (id) ;
select * from userr u ;

create table Person (
id serial primary key,
full_name varchar (50)not null,
birth_date date not null
);
create table country (
id serial primary key,
name varchar (100) not null unique,
population integer not null,
president_id integer references person (id)not null unique
);
create table cyti (
id serial primary key,
name varchar (100)not null unique,
country_id integer references country (id),
mer_id integer references person(id)not null unique
);
